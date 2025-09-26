# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Summary
We learned how to connect two circuit modules together so that they influence each other. We built two separate circuits off of two different truth tables, using maxterm for one and minterm for the other. We then connected the output of one to the input of another in a top level file. We modified the constraint file to assign the switches to the correct pins. We then tested on a board and itworked as expected.

### 1 - Explain the role of the Top Level file.
The Top Level file instantiates an instance of each circuit and assigns them to switches and leds, and combines them to work together.

### 2 - Explain the function of the Constraints file.
The constraints file tells Vivado what physical pins correspond to the switches mentioned in the Top Level RTL file.

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?
I think it would have been easier to use Minterm for circuit A because it would allow us to define the whole table with only one grouping. I think Minterm worked just fine for circuit B, because it allowed for the largest groupings, whereas a Maxterm would have required single element groups.
