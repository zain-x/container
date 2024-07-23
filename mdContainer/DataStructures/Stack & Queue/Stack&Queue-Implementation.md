# Stack and Queue Implementation
- NOTE: This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

### Read all of the following instructions carefully.
- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Stack-and-Queue-Implementation` inside your `Data Structures`.
- Create a folder named `Stack & Queue` inside your `Data Structures` folder.
- Create a new solution inside `Stack & Queue` folder called `StackAndQueue`.
- Solve your challenge and put the `README.md` and relevant implementation files inside your `Stack & Queue` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.

### Example Table of Contents Update
Update the `Table of Contents` in the README at the root of the repository with links to these challenges `README` files.

## Problem Domain
Implement basic stack and queue data structures in C#.

### Stack Implementation
- The `Stack` class should support methods to:
  - `Push(int data)`: Add a node with the specified data to the top of the stack.
  - `Pop()`: Remove and return the top node from the stack.
  - `Peek()`: Return the top node from the stack without removing it.
  - `IsEmpty()`: Check if the stack is empty.

### Queue Implementation
- The `Queue` class should support methods to:
  - `Enqueue(int data)`: Add a node with the specified data to the end of the queue.
  - `Dequeue()`: Remove and return the front node from the queue.
  - `Peek()`: Return the front node from the queue without removing it.
  - `IsEmpty()`: Check if the queue is empty.

#### Ensure your implementation includes:
- A `Node` class with properties for data and a reference to the next node.
- A `Stack` class with methods for push, popp, peek, IsEmpty, and printing the stack in the console.
- Handle all exceptions that could be thrown during execution.
- A `Queue` class with methods for enqueue, dequeue, peek, IsEmpty, and printing the queue in the console.
- Handle all exceptions that could be thrown during execution (example: check if the queue is empty before dequeuing or peeking ).
- Show an example of the stack and queue in the console.

### Example for Stack
```csharp
Stack stack = new Stack();

// Push nodes onto the stack
stack.Push(10); // Stack: Top -> 10
stack.Push(5);  // Stack: Top -> 5 -> 10

// Pop a node from the stack
int popped = stack.Pop(); // popped: 5

// Peek the top node
int peeked = stack.Peek(); // peeked: 10

// Check if the stack is empty
bool isEmpty = stack.IsEmpty(); // isEmpty: false
```

### Unit Tests with xUnit:
- Verify the following test cases for Stack:
  - Test pushing a node onto the stack.
  - Test popping a node from the stack.
  - Test checking if the stack is empty.

- Verify the following test cases for Queue:
  - Test enqueuing a node into the queue.
  - Test dequeuing a node from the queue.
  - Test checking if the queue is empty.

## To Submit this Assignment:
1. Create a branch named `Stack-and-Queue-Implementation`
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
7. Submit the link to your pull request in the submission field.