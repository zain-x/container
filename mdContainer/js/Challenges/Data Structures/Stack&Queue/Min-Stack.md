# Min Stack Challenge

- NOTE: This challenge is a console-based solution. You need to submit the entire solution with Jest tests.

### Read all of the following instructions carefully.

- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Min-Stack`.
- Continue working inside `Data Structures > StackAndQueue > MinStack` folder.
- Solve your challenge and put the `README.md` and relevant implementation files inside your `MinStack` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the "Table of Contents" in the root README of your repository with a link to this challenge's README file.

## Problem Domain

- Implement a `MinStack` class in JavaScript that uses the operations below and retrieves the minimum element in constant time complexity.

### Min Stack Implementation

The `MinStack` class should support the following methods:

- `push(value)`: Add an element with the specified data to the top of the stack.
- `pop()`: Remove and return the top element from the stack.
- `top()`: Return the top element from the stack without removing it.
- `isEmpty()`: Check if the stack is empty.
- `getMin()`: Return the minimum element in the stack.
- `printStack()`: Print the contents of the stack.

### Console Output Example

```javascript
const MinStack = require("./MinStack");

const minStack = new MinStack();

// Push elements
minStack.push(15); // Top -> 15 (min: 15)
minStack.push(7); // Top -> 7 -> 15 (min: 7)
minStack.push(12); // Top -> 12 -> 7 -> 15 (min: 7)
minStack.push(3); // Top -> 3 -> 12 -> 7 -> 15 (min: 3)

// Print the stack
minStack.printStack(); // Output: Top -> 3 -> 12 -> 7 -> 15

// Get the minimum element
let min = minStack.getMin(); // min: 3

// Pop a node from the stack
let popped = minStack.pop(); // popped: 3
minStack.printStack(); // Output: Top -> 12 -> 7 -> 15

// Get the new minimum element
min = minStack.getMin(); // min: 7

// Peek the top node
let peeked = minStack.top(); // peeked: 12

// Push another element
minStack.push(2); // Top -> 2 -> 12 -> 7 -> 15 (min: 2)
minStack.printStack(); // Output: Top -> 2 -> 12 -> 7 -> 15

// Get the new minimum element
min = minStack.getMin(); // min: 2

// Check if the stack is empty
let isEmpty = minStack.isEmpty(); // isEmpty: false
```

### Unit Tests with Jest:

- Create a new test file for this challenge: `min-stack.test.js`;

- Verify the following test cases:

- Test retrieving the minimum element in the stack.
- Test popping elements and verifying the minimum element in the stack after the pop.
- Test pushing elements and verifying the minimum element in the stack after the push.

---

## To Submit this Assignment:

1. Create a branch named `Min-Stack`.

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

5. Create a pull request from your branch to the `main` branch.

6. Merge your branch into the `main`.

7. Submit the link to your pull request in the submission field.
