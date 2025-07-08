# Stack Challenge: Implement Stack using Queues

> **NOTE:** This challenge is a console-based solution. You need to submit the entire solution with Jest unit tests.

---

## Instructions

- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Stack-Using-Queues`.
- Continue working inside `Data Structures > Stack & Queue > StackAndQueue` solution, create a folder named `StackUsingQueues`.
- Solve the challenge and place the `README.md` and relevant implementation files inside the `StackUsingQueues` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the "Table of Contents" in the root README of your repository with a link to this challenge's README file.

---

## Problem Domain

Implement a **stack** using **two queues** in JavaScript. Ensure the stack follows the **Last In First Out (LIFO)** principle by internally using two queue structures.

---

## Implementation Requirements

- Create a class `StackUsingQueues` with the following methods:

  - `push(value)`: Adds a value to the top of the stack.
  - `pop()`: Removes and returns the top value from the stack.
  - `peek()`: Returns the top value without removing it.
  - `isEmpty()`: Returns `true` if the stack is empty, otherwise `false`.

- You must use **two queues** to simulate the behavior of a stack.

---

## Example

```javascript
const stack = new StackUsingQueues();
stack.push(10); // Stack: Top -> 10
stack.push(20); // Stack: Top -> 20 -> 10
stack.push(30); // Stack: Top -> 30 -> 20 -> 10

console.log(stack.pop()); // Output: 30
console.log(stack.peek()); // Output: 20
console.log(stack.isEmpty()); // Output: false
stack.pop();
stack.pop();
console.log(stack.isEmpty()); // Output: true
```

```markdown
## Unit Tests with Jest

- Create a test file named `stack-using-queues.test.js` and place it inside your `stackUsingQueues` folder.
- Verify the following test cases:
  - Test and ensure values are added correctly to the stack.
  - Test popping elements from the stack.
  - Test peeking the top element of the stack.
  - Test checking if the stack is empty (true or false).
  - Test the stack behavior with multiple push and pop operations.

## To Submit this Assignment:

1. Create a branch named `Stack-Using-Queues`
2. Solve your challenge with the needed tests.
3. Include a `README.md` file with the necessary content:

- A whiteboard image with the following content:
  - Problem Domain
  - Inputs and Expected Outputs
  - Edge Cases
  - Visual
  - Algorithm
  - Real Code
  - Big O Time/Space Complexity

4. Push your changes to your GitHub repository.
5. Create a pull request from your branch to the main branch.
6. Merge your branch into the main.
7. Submit the link of your pull request in the submission field.
```
