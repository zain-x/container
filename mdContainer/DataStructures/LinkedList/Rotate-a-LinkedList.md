# Linked List Rotate by K

- NOTE: This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

## Read all of the following instructions carefully.

- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Linked-List-Rotate-K`.
- Continue working inside `Data Structures > Linked-List-Implementation` solution, create a folder named `RotateLinkedList`.
- Solve the challenge and place the `README.md` and relevant implementation files inside the `RotateLinkedList` folder which exists in your `Linked-List-Implementation` solution.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the "Table of Contents" in the root README of your repository with a link to this challenge's README file.

## Problem Domain:

- Given a singly linked list and an integer `k`, rotate the linked list to the left by `k` places.
- After rotating, the node which was originally at position `k` will now become the head of the list, and the remaining nodes will follow.

## Requirements:

- Use your existing `Node` and `LinkedList` classes.
- Implement a method `RotateLeft(int k)` in your `LinkedList` class:
- Ensure the `display()` method shows the rotated list.
- hint: You need traverse the list to calculate its length first.

### Example

```csharp
Input:  Head -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> Null, k = 2
Output: Head -> 3 -> 4 -> 5 -> 6 -> 1 -> 2 -> Null

Input:  Head -> 10 -> 20 -> 30 -> 40 -> 50 -> Null, k = 3
Output: Head -> 40 -> 50 -> 10 -> 20 -> 30 -> Null

Input:  Head -> 5 -> 10 -> 15 -> 20 -> Null, k = 1
Output: Head -> 10 -> 15 -> 20 -> 5 -> Null
```

### Unit Tests with xUnit:

- Create a new test file for this challenge: RotateLinkedListTests.cs.
- Verify the following test cases:
  - Test rotating by k = 0 (the list should remain unchanged).
  - Test rotating by a value greater than the list length ( k = 7 ).

## To Submit this Assignment:

1. Create a branch named `LinkedList-Rotate-K`.
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
6. Merge your branch into main.
7. Submit the link to your pull request in the submission field.
