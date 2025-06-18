# Linked List Reverse

- NOTE: This challenge is a console-based solution. You need to submit the pull request with xUnit tests.

### Read all of the following instructions carefully:

- Complete all work within your existing repository `challenges-and-data-structures`.
- Create a new branch named `LinkedList-Reverse`.
- Continue working inside `Data Structures > Linked-List-Implementation` solution, create a folder named `Reverse`.
- Solve the challenge and place the `README.md` and relevant implementation files inside the `Reverse` folder within your `Linked-List-Implementation` solution.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the "Table of Contents" in the root README of your repository with a link to this challenge's README file.

### Problem Domain:

- Use your previous linked list implementation to include a function that reverses the linked list. The function should not create a new list but it should reverse the linked list itself.

### Detailed Requirements:

- Use the existing `Node` and `LinkedList` classes from your previous implementation.
- Implement a new function `Reverse()` in your `LinkedList` class:
  - Traverse the linked list while reversing the direction of the `next` pointers.
  - The `head` of the list should point to the last node after reversal.

# Structure of the Solution:

```javascript
challenges-and-data-structures/
├── README.md                           # Root README (updated)
├── Data Structures/
│   └── LinkedList/
│       └── Linked-List-Implementation/
│           ├── .gitignore
│           ├── package.json
│           ├── package-lock.json
│           ├── node_modules/
│           ├── node.js                 # Node class (top level)
│           ├── linkedList.js           # Main LinkedList (top level)
│           ├── reverse/                # Reverse challenge folder
│           │   ├── README.md           # Challenge documentation
│           │   └── reverse.js          # new reverse functionality
│           ├── tests/
│           │   ├── linkedList.test.js  # Previous tests (unchanged)
│           │   └── reverse.test.js     # Reverse-linkedList tests
│           ├── docs/
│           │   ├── reverse-whiteboard.png
│           │   └── console-output.png
│           └── app.js                  # Console script to run manually

```

### Example

```javascript
Original List: Head -> 1 -> 2 -> 3 -> 4 -> Null
Reversed List: Head -> 4 -> 3 -> 2 -> 1 -> Null

Original List: Head -> 10 -> Null
Reversed List: Head -> 10 -> Null

Original List: Head -> Null
Reversed List: Head -> Null
```

### Edge Cases:

- Empty list (`head` is `null`).
- Single-node list (no change after reversal).
- List with duplicate values.

## Unit Tests with Jest

- Create a new folder named `tests` inside the `Linked-List-Implementation` folder.
- Create a new test file in the `tests` folder named `ReverseLinkedList.test.js`.

- Verify the following test cases:

1. Test reversing a non-empty list (e.g., `1 -> 2 -> 3` becomes `3 -> 2 -> 1`)
2. Test reversing a single-node list (should remain unchanged)
3. Test reversing an empty list (should return `null`)
4. Test reversing a list with duplicate values (e.g., `1 -> 2 -> 2 -> 3` becomes `3 -> 2 -> 2 -> 1`)

## Submission Requirements:

1. Create a branch named `Reverse-LinkedList`
2. Solve your challenge with the needed tests.
3. Include a `README.md` file with:

- A whiteboard image with the following content:
  - Problem Domain
  - Inputs and Expected Outputs
  - Edge Cases
  - Visual
  - Algorithm
  - Real Code
  - Big O Time/Space Complexity

4. Push changes to GitHub and create a pull request
5. Submit the PR link on the submission form.
