# Stack Challenge: Delete Middle Element of a Stack
- NOTE: This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

## Read all of the following instructions carefully.
- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Delete-Middle-Element-Stack`.
- Continue working inside `Data Structures > Stack & Queue > StackAndQueue` solution, create a folder named `DeleteMiddleElement`.
- Solve the challenge and place the `README.md` and relevant implementation files inside the `DeleteMiddleElement` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the "Table of Contents" in the root README of your repository with a link to this challenge's README file.

## Problem Domain
Implement a method to delete the middle element of a stack in C#. If the stack has an even number of elements, remove the lower middle element.

### Detailed Requirements
- Create a class `StackWithDeleteMiddle` that extends the `Stack` class you implemented previously.
- Add a method `DeleteMiddle()` to remove the middle element of the stack.
- Use an additional stack to achieve this or you can search for another solution.
- Ensure the stack remains in the correct order after the middle element is removed.
- Handle edge cases where the stack is empty or has only one element.

## More Steps to Solve the Problem
1. Calculate the middle position of the stack. If the number of elements (n) is even, the middle position is `n/2 - 1`. If the number of elements is odd, the middle position is `n/2`.
2. Use a stack to temporarily hold elements while traversing to the middle.
3. Remove the middle element.
4. Push the holded elements back onto the stack in their original order.
5. Ensure the stack remains in the correct order after the middle element is removed.

### Example
```csharp
StackWithDeleteMiddle stack = new StackWithDeleteMiddle();
stack.Push(7);
stack.Push(14);
stack.Push(3);
stack.Push(8);
stack.Push(5);

Console.WriteLine(stack); // Stack: Top -> 5 -> 8 -> 3 -> 14 -> 7
stack.DeleteMiddle();
Console.WriteLine(stack); // Stack: Top -> 5 -> 8 -> 14 -> 7

stack.Push(2);
stack.Push(9);
stack.Push(11);
Console.WriteLine(stack); // Stack: Top -> 11 -> 9 -> 2 -> 5 -> 8 -> 14 -> 7
stack.DeleteMiddle();
Console.WriteLine(stack); // Stack: Top -> 11 -> 9 -> 2 -> 8 -> 14 -> 7
// Note: when a stack has an even number of elements, the lower middle element is removed.
```

### Unit Tests with xUnit:
- Verify the following test cases:
  Test deleting the middle element of an odd-sized stack.
  Test deleting the middle element of an even-sized stack.

## To Submit this Assignment:
1. Create a branch named `Delete-Middle-Element-Stack`
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