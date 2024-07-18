# Linked List Merge Sorted Lists
- NOTE: This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

### Read all of the following instructions carefully:
- Complete all work within your existing repository `challenges-and-data-structures`.
- Create a new branch named `LinkedList-Merge-Sorted`.
- Continue working inside `Data Structures > Linked-List-Implementation` solution, create a folder named `MergeSorted`.
- Solve the challenge and place the `README.md` and relevant implementation files inside `MergeSorted` folder which exsist in your `Linked-List-Implementation` solution.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the "Table of Contents" in the root README of your repository with a link to this challenge's README file.

### Problem Domain:
- Use your previous linked list implementation to include a method for merging two sorted linked lists into a single sorted linked list.

### Detailed Requirements:
- Utilize the existing `Node` and `LinkedList` classes from your previous implementation.
- Implement a new method `MergeSortedLists()` in your `LinkedList` class:
  - Use two pointers (`current1` for list 1 and `current2` for list 2) to traverse both linked lists.
  - Compare the values of nodes pointed by `current1` and `current2`.
  - Append the smaller node to the merged list and move the pointer (`current1` or `current2`) forward.
  - Handle cases where one list might reach the end before the other.
  - Ensure to handle edge cases like empty lists.
  - Handle all exceptions that could be thrown during execution.

### Example 
```csharp
List 1: Head -> 1 -> 3 -> 5 -> Null
List 2: Head -> 2 -> 4 -> 6 -> Null
Merged List: 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> Null

List 1: Head -> 5 -> 10 -> 15 -> Null
List 2: Head -> 2 -> 3 -> 20 -> Null
Merged List: Head -> 2 -> 3 -> 5 -> 10 -> 15 -> 20 -> Null

List 1: Head -> 10 -> 20 -> 30 -> Null
List 2: Head -> 5 -> 15 -> 25 -> 35 -> Null
Merged List: Head -> 5 -> 10 -> 15 -> 20 -> 25 -> 30 -> 35 -> Null

```

### Unit Tests with xUnit:
- Create a new test file for this challenge: `MergeSortedLinkedLists.cs`.
- Verify the following test cases:
  - Test merging when one list is empty.
  - Test merging when both lists are empty.
  - Test merging List 1 and List 2 from the second example. // Head -> 2 -> 3 -> 5 -> 10 -> 15 -> 20 -> Null

## To Submit this Assignment:
1. Create a branch named `MergeSorted-LinkedLists`.
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
