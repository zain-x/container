# Linked List Rotate by K

- NOTE: This challenge is a console-based solution. You need to submit the pull request with Jest unit tests.

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
- Implement a method `RotateLeft(k)` in your `LinkedList` class:
- Ensure the `display()` method shows the rotated list.

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
│           ├── MergeSorted/            # MergeSorted  folder
│           ├── reverse/                # Reverse challenge folder
│           ├── rotateLinkedList/       # RotateLinkedList folder
│           │   ├── README.md           # Challenge documentation
│           │   └── rotateLinkedList.js     # new rotateLinkedList functionality
│           ├── tests/
│           │   └── rotateLinkedList.test.js # Rotate-linkedList tests
│           ├── docs/
|           │   └── rotateLinkedList-whiteboard.png
│           └── app.js                  # Console script to run manually

```

### Example

```javascript
Input:  Head -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> Null, k = 2
Output: Head -> 3 -> 4 -> 5 -> 6 -> 1 -> 2 -> Null

Input:  Head -> 10 -> 20 -> 30 -> 40 -> 50 -> Null, k = 3
Output: Head -> 40 -> 50 -> 10 -> 20 -> 30 -> Null

Input:  Head -> 5 -> 10 -> 15 -> 20 -> Null, k = 1
Output: Head -> 10 -> 15 -> 20 -> 5 -> Null
```

## Edge Cases:

- If `k` is negative, rotate the list to the right by the absolute value of `k`.
- If `k` is 0, the list should remain unchanged.
- If `k` is greater than the length of the list, rotate the list by the remainder of `k` divided by the length of the list.

## Unit Tests with Jest

- Create a new file named `rotateLinkedList.test.js` in the `tests` folder.
- Verify the following test cases:
  - Test rotating by k = 0 (the list should remain unchanged).
  - Test rotating by a value greater than the list length ( k = 7 ).
  ```
  example: Head -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> Null, k = 7
  Output: Head -> 2 -> 3 -> 4 -> 5 -> 6 -> 1 -> Null
  ```

## Submission Requirements:

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

- hint: You need traverse the list to calculate its length first.
