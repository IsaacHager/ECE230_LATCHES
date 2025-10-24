# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

In this lab, we learned how a ternary statement is used in Verilog. We used these ternary statements to create a multiplexer and a demultiplexer for 4 4 bit inputs that allows for selection of which input to use, and where to display that input.

### In plain English describe the function and use of a multiplexer.

A multiplexer allows a system to select one of multiple inputs depending on the value of a selector. The output will match the value of whichever input is denoted by the selector. The multiplexer can be used like a switch case function.

### In plain English describe the function and use of a demultiplexer.

A demultiplexer allows a system to direct an input to one of multiple outputs depending on the value of a selector. Demultiplexers can be used to direct signals to various locations like a switch on a railroad track.

### What other uses might these circuits have? (Think Shannon’s)

These circuits might also be used to brute force logic operations by implementing the outputs case-by-case. For example, you could set A as the msb for the selector and B as the lsb, and tune the multiplexer output to match the truth table for A and B. Another use might be to sort bits/information by using the combination of a mux and demux.

