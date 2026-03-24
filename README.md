# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Cody Toone, Canyon Holman

## Summary

We created a D-latch which allows us to store a single bit in the circuit to read at any time. Then we used an 8 bit version of it combined with multiplexers and demultiplexers to store and read data like a computer and display it with LEDs.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
stuctural verilog only computes the output based upon given inputs, it cannot hold values when the inputs are removed without a creating a feedback loop. Sequential logic makes it possible to compute outputs only when certain inputs are changed, such as a latch.
### What is the meaning of always @(*) in a sensitivity block?
It means that the block is sensitive to all signals inside of it
### What importance is memory to digital circuits?
Memory is essential for complex circuits to allow for complex synchronized changes in signals and to allow for values to persist through time and be utilized later
