# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

We learned how to implement simple minterms into Verilog, as well as how to read a KMap efficiently for both maxterms and minterms. We saw that the truth tables for all 3 implementations matched. We also saw that the auto generated equation for the naive implementation was just as optimized as our minterm implementation.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
We can imagine the KMap as a cyllinder because each column is simply a change in a single bit, and the edges only change one bit.

### Why are the names Sum of Products and Products of Sums?
A Sum of Products is reached by summing together (or ORing) all of the minterms which are the products (or ANDs) of each bit. A Product of Sums is the reached by multiplying the sums (maxterms).

### Open the test.v file – how are we able to check that the signals match using XOR?
The XOR condition displays a 1 only when the inputs differ, so if the output of the XOR is not a 0, then the signals do not match.

