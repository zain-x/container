
# Stack & Queue: Reverse a Stack using Queue
- NOTE: This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

## Read all of the following instructions carefully.
- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Reverse-Stack-Using-Queue`.
- Continue working inside `Data Structures > Stack & Queue > StackAndQueue` solution, create a folder named `ReverseStackUsingQueue`.
- Solve the challenge and place the `README.md` and relevant implementation files inside the `ReverseStackUsingQueue` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the "Table of Contents" in the root README of your repository with a link to this challenge's README file.

## Problem Domain
- Implement a method to reverse a stack using a queue in C#.

### Detailed Requirements
- Create a class `StackWithReverse` that extends the `Stack` class you implemented previously.
- Add a method `ReverseStack()` to reverse the elements of the stack using a queue.
- Use the queue to temporarily hold the elements of the stack while reversing the order.
- Ensure the stack is properly reversed after the method execution.
- Handle edge cases where the stack is empty or has only one element.

## More Steps to Solve the Problem
- You can follow these steps to solve the problem:
1) Pop Elements one by one from the stack.
2) Enqueue every popped element into the queue.
3) Do it till the stack is empty.
4) Dequeue elements one by one from the queue.
5) Push every dequeued element into the stack.
6) Do it till the queue is empty.
7) The stack is now reversed.

### Example
```csharp
StackWithReverse stack = new StackWithReverse();
stack.Push(1);
stack.Push(2);
stack.Push(3);
stack.Push(4);
stack.Push(5);

Console.WriteLine(stack); // Stack: Top -> 5 -> 4 -> 3 -> 2 -> 1
stack.ReverseStack();
Console.WriteLine(stack); // Stack: Top -> 1 -> 2 -> 3 -> 4 -> 5

stack.Push(6);
stack.Push(7);
Console.WriteLine(stack); // Stack: Top -> 7 -> 6 -> 1 -> 2 -> 3 -> 4 -> 5
stack.ReverseStack();
Console.WriteLine(stack); // Stack: Top -> 5 -> 4 -> 3 -> 2 -> 1 -> 6 -> 7
```

### Unit Tests with xUnit:
- Verify the following test cases:
  Test reversing a stack with multiple elements.
  Test reversing a stack with only one element.
  Test reversing an empty stack.

## To Submit this Assignment:
1. Create a branch named `Reverse-Stack-Using-Queue`
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