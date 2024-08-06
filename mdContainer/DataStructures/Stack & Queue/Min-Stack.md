# Min Stack Challenge
- NOTE: This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

### Read all of the following instructions carefully.
- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Min-Stack`.
- Continue working inside `Data Structures > Stack & Queue > StackAndQueue` solution, create a folder named `MinStack`.
- Solve your challenge and put the `README.md` and relevant implementation files inside your `MinStack` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the "Table of Contents" in the root README of your repository with a link to this challenge's README file.

## Problem Domain
- Implement a `MinStack` class in C# that these operations bellow and retrieving the minimum element in constant time complexity.

### Min Stack Implementation

The `MinStack` class should support the following methods:

- `Push()`: Add an element with the specified data to the top of the stack.
- `Pop()`: Remove and return the top element from the stack.
- `Top()`: Return the top element from the stack without removing it.
- `IsEmpty()`: Check if the stack is empty.
- `GetMin()`: Return the minimum element in the stack.
- `PrintStack()`: Print the contents of the stack.

### Console Output Example
```csharp
MinStack minStack = new MinStack();

// Push elements
minStack.Push(15); // Top -> 15 (min: 15)
minStack.Push(7);  // Top -> 7 -> 15 (min: 7) 
minStack.Push(12); // Top -> 12 -> 7 -> 15 (min: 7)
minStack.Push(3);  // Top -> 3 -> 12 -> 7 -> 15 (min: 3) 

// Print the stack
minStack.PrintStack(); // Output: Top -> 3 -> 12 -> 7 -> 15

// Get the minimum element
int min = minStack.GetMin(); // min: 3

// Pop a node from the stack
int popped = minStack.Pop(); // popped: 3
minStack.PrintStack(); // Output: Top -> 12 -> 7 -> 15

// Get the new minimum element
min = minStack.GetMin(); // min: 7

// Peek the top node
int peeked = minStack.Top(); // peeked: 12

// Push another element
minStack.Push(2);  // Top -> 2 -> 12 -> 7 -> 15 (min: 2)
minStack.PrintStack(); // Output: Top -> 2 -> 12 -> 7 -> 15

// Get the new minimum element
min = minStack.GetMin(); // min: 2

// Check if the stack is empty
bool isEmpty = minStack.IsEmpty(); // isEmpty: false

```

### Unit Tests with xUnit:
- Verify the following test cases:
  - Test retrieving the minimum element in the stack.
  - Test popping elements and verifying the minimum element in the stack after the pop.
  - Test pushing elements and verifying the minimum element in the stack after the push.

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
5. Create a pull request from your branch to the main branch.
6. Merge your branch into the main.
7. Submit the link to your pull request in the submission field.