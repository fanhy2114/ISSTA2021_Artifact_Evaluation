/*******************************************************************\

Module: Memory model for partial order concurrency

Author: Michael Tautschnig, michael.tautschnig@cs.ox.ac.uk

\*******************************************************************/

/// \file
/// Memory model for partial order concurrency

#include "memory_model.h"

#include <util/std_expr.h>
#include <iostream>
#include <cstring>

memory_model_baset::memory_model_baset(const namespacet &_ns) :
        partial_order_concurrencyt(_ns),
        var_cnt(0) {
}

memory_model_baset::~memory_model_baset() {
}

/**
 * create a non-determined boolean symbol.
 * @param prefix, the string after memory_model::choice_
 * @return a symbolic expression
 */
symbol_exprt memory_model_baset::nondet_bool_symbol(const std::string &prefix) {
    std::string expr_name_str = "memory_model::choice_" + prefix + std::to_string(var_cnt++);
    return symbol_exprt(expr_name_str, bool_typet());
}

/**
 * return if event e1 and event e2 forms program order.
 * @param e1
 * @param e2
 * @return true or false.
 */
bool memory_model_baset::po(event_it e1, event_it e2) {
    // within same thread
    if (e1->source.thread_nr == e2->source.thread_nr)
        return numbering[e1] < numbering[e2];
    else {
        // in general un-ordered, with exception of thread-spawning
        return false;
    }
}

/**
 * add all the read-from choice constraints here.
 * @param equation, the container to store all the equations.
 */
void memory_model_baset::read_from(symex_target_equationt &equation) {
    // We iterate over all the reads, and
    // make them match at least one
    // (internal or external) write.
    std::map<std::string, std::vector<symbol_exprt>> read2choices;
    std::map<symbol_exprt, event_it> expr2event;
    for (address_mapt::const_iterator a_it = address_map.begin(); a_it != address_map.end(); a_it++) {
        const a_rect &a_rec = a_it->second;

        for (event_listt::const_iterator r_it = a_rec.reads.begin(); r_it != a_rec.reads.end(); r_it++) {
            const event_it r = *r_it;

            exprt::operandst rf_some_operands;
            rf_some_operands.reserve(a_rec.writes.size());

            // this is quadratic in #events per address
            for (event_listt::const_iterator w_it = a_rec.writes.begin(); w_it != a_rec.writes.end(); ++w_it) {
                const event_it w = *w_it;
                //__LWT_ADD_BEGIN__
                unsigned int read_thread_no = r->source.thread_nr;
                unsigned int write_thread_no = w->source.thread_nr;
                unsigned int read_intra_thread_index = numbering[r];
                unsigned int write_intra_thread_index = numbering[w];

                // rf cannot contradict program order
                if(po(r, w))
                    continue; // contradicts po

                bool is_rfi =
                        w->source.thread_nr == r->source.thread_nr;
                if (is_rfi && write_intra_thread_index > read_intra_thread_index) {
                    std::cout << "error" << std::endl;
                }

//                bool needed = r->is_assignment() || w->is_assignment();
                std::string key_word = "__CPROVER";
                bool is_lib_var = strstr(a_it->first.c_str(), key_word.c_str()); //if the name contains __CPROVER key word.
                std::string choice_rf_var_name =
                        "rf_" + std::to_string(read_thread_no) + "_" + std::to_string(read_intra_thread_index)
                        + "_" + std::to_string(write_thread_no) + "_" + std::to_string(write_intra_thread_index)
                        + "_" + (is_lib_var ? "T" : "F")
                        + "_";//original is "rf"
                //__LWT_ADD_END__
                symbol_exprt s = nondet_bool_symbol(choice_rf_var_name);
                //get all the previous expressions . map from read to it's all read-from choices.
                std::string key = std::to_string(read_thread_no) + ':' + std::to_string(read_intra_thread_index);
                std::vector<symbol_exprt> &conflict_read_from_literals = read2choices[key];
                conflict_read_from_literals.push_back(s);
                // record the symbol
                choice_symbols[std::make_pair(r, w)] = s;
                expr2event[s] = r;
                // We rely on the fact that there is at least
                // one write event that has guard 'true'.
                implies_exprt read_from(s, and_exprt(w->guard, equal_exprt(r->ssa_lhs, w->ssa_lhs)));

                // Uses only the write's guard as precondition, read's guard
                // follows from rf_some
                add_constraint(equation, read_from, is_rfi ? "rfi" : "rf", r->source);

                if (!is_rfi) {
                    // if r reads from w, then w must have happened before r
                    exprt cond = implies_exprt(s, before(w, r));
                    add_constraint(equation, cond, "rf-order", r->source);
                }

                rf_some_operands.push_back(s);
            }

            // value equals the one of some write
            exprt rf_some;

            // uninitialised global symbol like symex_dynamic::dynamic_object*
            // or *$object
            if (rf_some_operands.empty())
                continue;
            else if (rf_some_operands.size() == 1)
                rf_some = rf_some_operands.front();
            else {
                rf_some = or_exprt();
                rf_some.operands().swap(rf_some_operands);
            }

            // Add the read's guard, each of the writes' guards is implied
            // by each entry in rf_some
            add_constraint(equation, implies_exprt(r->guard, rf_some), "rf-some", r->source);
        }
    }
//__LWT_ADD_BEGIN__
//    for (const auto &w : read2choices) {
//        const std::vector<symbol_exprt> &vec = w.second;
//        for(unsigned int using_index=0; using_index < vec.size(); using_index++){
//            symbol_exprt current_selecting = vec[using_index];
//            exprt exclusive_expr;
//            exclusive_expr.make_true();
//            for(unsigned int i=0;i<vec.size();i++){
//                if (i!=using_index){
//                    const symbol_exprt& not_selecting = vec[i];
//                    exclusive_expr = and_exprt(exclusive_expr, not_exprt(not_selecting));
//                }
//            }
//            implies_exprt exclusive(current_selecting, exclusive_expr);
//            add_constraint(equation, exclusive, "exclusive", expr2event[current_selecting]->source);
//        }
//    }
//__LWT_ADD_END__
}
