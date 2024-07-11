# Linked List Remove Duplicates
- NOTE: This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

## Read all of the following instructions carefully.
- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Linked-List-Remove-Duplicates`.
- Continue the work inside `Data Structures > Linked-List-Implementation`.
- Solve your challenge and put the `README.md` and relevant implementation files inside your `LinkedListRemoveDuplicates` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.

## Example Table of Contents Update
- Update the “Table of Contents” in the README at the root of the repository with a link to this challenge's README file.

## Problem Domain
- Use your previues linked list implementation to include a new method for removing duplicate nodes from the LinkedList.

## Detailed Requirements
- Continue working with the same `Node` and `LinkedList` classes you implemented previously.
- Add a new method `RemoveDuplicate()` to remove duplicate nodes from the list:
  - Use a pointer `current` to traverse the list, starting from `head`.
  - For each node, use another pointer `index` to traverse the rest of the list and check for duplicates.
  - If a duplicate is found, adjust the `next` pointer of the node before the duplicate to skip over the duplicate.
- Ensure the `display()` method prints the nodes present in the list to verify the duplicates are removed.
- Handle all exceptions that could be thrown during execution.

### Example 
```csharp

Input: 5 -> 20 -> 20 -> 10 -> 5 -> 10 -> Null
After Removing Duplicates: 5 -> 20 -> 10 -> Null

Input: 1 -> 2 -> 3 -> 2 -> 4 -> 3 -> Null
After Removing Duplicates: 1 -> 2 -> 3 -> 4 -> Null

Input: 7 -> 7 -> 7 -> 7 -> Null
After Removing Duplicates: 7 -> Null

```

### Unit Tests with xUnit:
- Create a new test file for this challenge: `RemoveDuplicatesTests.cs`
- Verify the following test cases:
- Test if the linkedList remains unchanged when there are no duplicate nodes.
- Test if only duplicate nodes are removed, while unique nodes remain.
- Test if the linkedList is reduced to a single node when all nodes are duplicates.

## To Submit this Assignment:
1. Create a branch named `Linked-List-Remove-Duplicates`.
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
