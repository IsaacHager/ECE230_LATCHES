# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

## Summary
  In this lab we learned how to combine and code a two input light switch, as well as implementing a half and full adder together.   

### 1 - How might you add more than two bits together?
  You chain a number of full adders together equal to the maximum number of bits to add. You then connect all the carry ins to the carry outs, making a ripple carry effect.

### 2 - What is the importance of the XOR gate in an adder?
  It performs a couple actions, firstly it actually adds the numbers together, producing the sum without a carry in, and also inverts the sum in case of a carry in.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
  The largest number it can handle is 7, because when you go over it will overflow into the next bit, which doesn't exist. If you're only adding 2 2-bit numbers, it can only go up to 3 + 3.
