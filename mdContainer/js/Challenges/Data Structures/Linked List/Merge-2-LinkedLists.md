# Linked List Merge Sorted Lists

- NOTE: This challenge is a console-based solution. You need to submit the pull request with Jest unit tests.

### Read all of the following instructions carefully:

- Complete all work within your existing repository `challenges-and-data-structures`.
- Create a new branch named `LinkedList-Merge-Sorted`.
- Continue working inside `Data Structures > Linked-List-Implementation` solution, create a folder named `MergeSorted`.
- Solve the challenge and place the `README.md` and relevant implementation files inside the `MergeSorted` folder which exists in your `Linked-List-Implementation` solution.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the "Table of Contents" in the root README of your repository with a link to this challenge's README file.

### Problem Domain:

- Use your previous linked list implementation to include a method for merging two sorted linked lists into a single sorted linked list. The method should take two sorted linked lists as input and return a new sorted linked list that contains all the elements from both input lists.

### Detailed Requirements:

- Use the existing `Node` and `LinkedList` classes from your previous implementation.
- Implement a new method `mergeSortedLists()` in your `LinkedList` class:
  - Use two pointers (`current1` for list 1 and `current2` for list 2) to traverse both linked lists.
  - Compare the values of nodes pointed by `current1` and `current2`.
  - Append the smaller node to the merged list and move the pointer (`current1` or `current2`) forward.
  - Handle cases where one list might reach the end before the other.
  - Ensure to handle edge cases like empty lists.
  - Handle all exceptions that could be thrown during execution.

# Structure of the Solution:

```javascript
challenges-and-data-structures/
├── README.md                           # Root README (updated with MergeSorted link)
├── Data Structures/
│   └── LinkedList/
│       └── Linked-List-Implementation/
│           ├── .gitignore
│           ├── package.json
│           ├── package-lock.json
│           ├── node_modules/
│           ├── node.js                 # Node class (top level)
│           ├── linkedList.js           # Main LinkedList (top level)
│           ├── reverse/
│           │   ├── README.md
│           │   └── reverse.js
│           ├── MergeSorted/
│           │   ├── README.md           # MergeSorted challenge documentation
│           │   ├── mergeSorted.js      # MergeSorted functionality
│           ├── tests/
│           │   ├── linkedList.test.js
│           │   ├── reverse.test.js
│           │   └── mergeSorted.test.js # MergeSorted challenge tests
│           ├── docs/
|           |   ├── merge-whiteboard.png # Whiteboard explanation
│           │   ├── reverse-whiteboard.png
│           │   └── console-output.png
│           └── app.js                  # Console script to run manually

```

### Example

```javascript
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

### Edge Cases:

- One list is empty → Return the non-empty list.
- Both lists are empty → Return null.
- Lists with duplicate values → Keep all duplicates in the merged list.

## Unit Tests with Jest

- Create a new test file for this challenge: `MergeSortedLinkedLists.test.js`.
- Verify the following test cases:
  - Test merging when one list is empty.
  - Test merging when both lists are empty.
  - Test merging List 1 and List 2 from the second example. // Head -> 2 -> 3 -> 5 -> 10 -> 15 -> 20 -> Null

## Submission Requirements:

1. Create a branch named `LinkedList-Merge-Sorted`.
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
