# Introduction
A repository containing 3 practical exercises I undertook as part of a "Concurrent Systems & Operating Systems" module at university. The purpose of these exercises was to demonstrate the benefits and risks of concurrency in the execution of computer programs.

### Practical 1 - Sum of Hellos
A simple exercise to observe how Unix threads (pthreads) complete tasks concurrently.

### Practical 2 - Producer/Consumer
A producer-consumer problem which requires implementation of Mutex variables and Condition variables to ensure correct behaviour, while maintaining some level of concurrency.

### Practical 3 - SPIN Model Checker
This practical involved implementing mutex/condition variable functions in the promela modelling language to allow for a producer consumer problem to operate correctly. The correctness of these implementations was then checked using the SPIN model checker. This allowed for concurrency-related issues such as non-progress cycles and deadlock to be ironed out. 
