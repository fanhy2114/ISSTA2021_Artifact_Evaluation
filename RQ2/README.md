README
======================================

ISSTA 2021 - artifact evaluation for RQ2

Interference Relation-Guided SMT solving for Multi-Threaded Program Verification

------------------------------------------------------------------------------

0 - Artifact Description
--------------------------------------

RQ2 is experimental comparison between $CVC4$, $BOOLECTOR$, and $Z_{PRE}$.

--------------------------------------

1 - Directory Structure of the Artifact
------------------------------------------------------------------------------

The artifact consists of the following four directories:

  + `benchmarks/`

    Contains all the benchmarks used in the experimental evaluation of our paper. 
    All the benchmarks are from the ConcurrentSafety Category of SV-COMP 2019.
    It contains 12 sub-categories.

  + `Experiment-Result-RQ2-in-Paper/`

    + RQ2-results.xlsx : experimental results of RQ2 in paper.
    + result_RQ2_all/ : log files of all the verification tasks in RQ1.

  + `call-solver.py`

    Python script to perform RQ2 in each sub-categories of benchmarks/

  + `call-solver.sh`

    Shell scripts to perform RQ2 in all the sub-categories of benchmarks/

  + `cbmc`
  
    C Bounded Model Checker with our heuristics. 
    Served as the front-end to generate SMT files under different unwinding bounds.

  + `cvc4`

    the baseline SMT solver cvc4.
  
  + `boolector`

    the baseline SMT solver boolector.

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

After this step, a new folder named `smt_RQ2/` is established; and it contains all the generated SMT files.

An hour is sufficient to finish this step.

* Perform SMT solving and generate result files.
  
> ./call-solver.sh

After this step, a new folder named `/result-RQ2-all` and three files named `result-cvc4.csv`, `result-boolector.csv`, and `result-z3-pre.csv` are built.

`result-RQ2-all` contains all the log files for SMT solving.

`result-cvc4.csv` lists the reported SMT solving time of `cvc4` for each SMT file.

`result-boolector.csv` lists the reported SMT solving time of `boolector` for each SMT file.

`result-z3-pre.csv` lists the reported SMT solving time of `z3-pre` for each SMT file.

Dozens of hours is demand for this step.

--------------------------------------

* Environement

All the experiments are conducted on ArchLinux-5.10.10.

* Contributors

Hongyu Fan, Weiting Liu, and Fei He
