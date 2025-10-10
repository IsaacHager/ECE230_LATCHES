# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

In this lab we set up a basic half subtractor, then made a full adder that could be used with ones compliment numbers. We then made a module that converts an 8 bit number into a twos compliment version of the same number.

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

While the half adder uses a carry bit, the half subtractor uses a borrow bit, which is different. The carry bit represented a 1 plus 1, while the borrow bit represents a 0 minus a 1.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

The end around must use a second pass of the same addition logic instead of looping back to the start, otherwise it may cause an infinite loop problem that can be very destructive.

### 3 - What is the edge case and problem with Two’s Complement number representation?

The edge case would be a number with all 1's, so that the Two's Complement number would overflow to the next bit.

