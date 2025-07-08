# Stack and Queue Implementation

- NOTE: This challenge is a console-based solution. You need to submit the entire solution with Jest tests.

## Read all of the following instructions carefully.

- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Stack-and-Queue-Implementation` inside your `Data Structures`.
- Create a folder named `Stack & Queue` inside your `Data Structures` folder.
- Create a new solution inside `Stack & Queue` folder called `StackAndQueue`.
- Solve your challenge and put the `README.md` and relevant implementation files inside your `Stack & Queue` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the `Table of Contents` in the README at the root of the repository with links to these challenges `README` files.

## Problem Domain

Implement a basic stack and queue data structure.

### Stack Implementation

- The `Stack` class should support methods to:
  - `Push(data)`: Add a node with the specified data to the top of the stack.
  - `Pop()`: Remove and return the top node from the stack.
  - `Peek()`: Return the top node from the stack without removing it.
  - `IsEmpty()`: Check if the stack is empty.

### Queue Implementation

- The `Queue` class should support methods to:
  - `Enqueue(data)`: Add a node with the specified data to the end of the queue.
  - `Dequeue()`: Remove and return the front node from the queue.
  - `Peek()`: Return the front node from the queue without removing it.
  - `IsEmpty()`: Check if the queue is empty.

```javascript
const stack = new Stack();
stack.push(10); // Stack: Top -> 10
stack.push(20); // Stack: Top -> 20 -> 10
stack.push(30); // Stack: Top -> 30 -> 20 -> 10

console.log(stack.pop()); // Output: 30           >> Last In First Out
console.log(stack.peek()); // Output: 20          >> Top value stays
console.log(stack.isEmpty()); // Output: false    >> Stack still has 20, 10
stack.pop(); // Removes 20
stack.pop(); // Removes 10
console.log(stack.isEmpty()); // Output: true     >> Now it's empty

const queue = new Queue();
queue.enqueue(10); // Queue: Front -> 10
queue.enqueue(20); // Queue: Front -> 10 -> 20
queue.enqueue(30); // Queue: Front -> 10 -> 20 -> 30

console.log(queue.dequeue()); // Output: 10       >> First In First Out
console.log(queue.peek()); // Output: 20          >> Front value stays
console.log(queue.isEmpty()); // Output: false    >> Queue still has 20, 30
queue.dequeue(); // Removes 20
queue.dequeue(); // Removes 30
console.log(queue.isEmpty()); // Output: true     >> Now it's empty
```

## Unit Tests with Jest

Create a new test file for this challenge: `stack.test.js` and `queue.test.js`:

- Verify the following test cases for Stack:

  - Test pushing a node onto the stack.
  - Test popping a node from the stack.
  - Test checking if the stack is empty.

- Verify the following test cases for Queue:
  - Test enqueuing a node into the queue.
  - Test dequeuing a node from the queue.
  - Test checking if the queue is empty.

---

## To Submit this Assignment

1. Create a branch named `Stack-and-Queue-Implementation`.
2. Solve your challenge with the needed tests.
3. Include a `README.md` file with the necessary content:
   - A whiteboard image with the following sections:
     - Problem Domain
     - Inputs and Expected Outputs
     - Edge Cases
     - Visual
     - Algorithm
     - Real Code
     - Big O Time/Space Complexity
     #### Note: You should create separate whiteboard images for each data structure (Stack and Queue).
4. Push your changes to your GitHub repository.
5. Create a pull request from your branch to the main branch.
6. Merge your branch into the main.
7. Submit the link of your pull request in the submission field.
