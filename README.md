# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

In this lab we first coded our multiplexor and demultiplexor to use 8-bit data. We then coded a one-bit D-latch before then coding an 8-bit D-latch to use inside our memory block. We then connected together with wires the Demux and the enable button demux into all the D-latches (memory block), which were then output through into the mux. Now the board can store 4 unique 8 bit values at once.

###  Why can we not just use structural Verilog to implement latches?

Structural assignments execute instantly and together. This means that assigning Q and notQ happens at the same time. This is not the behavior we want, so behavioral setup allows the second assignment to execute after the first one, which makes the sequential part of the D-latch work.

### What is the meaning of always @(*) in a sensitivity block?

The block means its working continuously and behaviorily matches the sequential nature needed for our memory. As a bonus it also means it doesn't use memory itself.

### What importance is memory to digital circuits?

Memory provides context that is vital for making any meaningful program. Without memory, operations could not really be chained or used together easily, values or variables couldn't be stored, and nothing would work properly.
