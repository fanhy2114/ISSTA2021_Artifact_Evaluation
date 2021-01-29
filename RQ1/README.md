README
======================================

ISSTA 2021 - artifact evaluation for RQ1

Interference Relation-Guided SMT solving for Multi-Threaded Program Verification

------------------------------------------------------------------------------

0 - Artifact Description
--------------------------------------

RQ1 is experimental comparison between $Z3$ and $Z_{PRE}$

--------------------------------------

1 - Directory Structure of the Artifact
------------------------------------------------------------------------------

The artifact consists of the following four directories:

  + `benchmarks/`

    Contains all the benchmarks used in the experimental evaluation of our paper. 
    All the benchmarks are from the ConcurrentSafety Category of SV-COMP 2019.
    It contains 12 sub-categories.

  + `Experiment-Result-RQ1-in-Paper/`

    + RQ1-results.xlsx : experimental results of RQ1 in paper.
    + log_for_10_big_cases_RQ1/ : log files of 10 timeout cases which are described in Section 5.2.1.
    + result_RQ1_all/ : log files of all the verification tasks in RQ1.

  + `call-solver.py`

    Python script to perform RQ1 in each sub-categories of benchmarks/

  + `call-solver.sh`

    Shell scripts to perform RQ1 in all the sub-categories of benchmarks/

  + `cbmc`
  
    C Bounded Model Checker with our heuristics. 
    Served as the front-end to generate SMT files under different unwinding bounds.

  + `z3`

    the baseline SMT solver.

  + `z3-pre`

    Z3 4.8.8 with our heuristics. Served as our back-end SMT solver.

  + `generate_SMT.py`

    Python script to generate SMT files in each sub-categories of benchmarks/

  + `generate_SMT.sh`

    Shell scripts to generate SMT files in all the sub-categories of benchmarks/

------------------------------------------------------------------------------

2 - Artifact Running
--------------------------------------

* Generate SMT files from benchmarks
  
>  ./generate_SMT.sh

After this step, a new folder named `smt_RQ1/` is established; and it contains all the generated SMT files.

An hour is sufficient to finish this step.

* Perform SMT solving and generate result files.
  
> ./call-solver.sh

After this step, a new folder named `/result-RQ1-all` and two files named `result-ori.csv` and `result-pre.csv` are built.

`result-RQ1-all` contains all the log files for SMT solving.

`result-ori.csv` lists the reported SMT solving time of `z3` for each SMT file.

`result-pre.csv` lists the reported SMT solving time of `z3-pre` for each SMT file.

Dozens of hours is demand for this step.

--------------------------------------

* Environement

All the experiments are conducted on ArchLinux-5.10.10.

* Contributors

Hongyu Fan, Weiting Liu, and Fei He
