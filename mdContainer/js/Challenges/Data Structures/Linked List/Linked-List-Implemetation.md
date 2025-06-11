## Linked List Implementation

- NOTE: This challenge is a console-based solution. You need to submit the entire solution with Jest unit tests.

### Read all of the following instructions carefully.

- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Linked-List-Implementation`.
- Create a folder named `Data Structures` inside your repository structure.
- Create another folder inside the `Data Structures` folder called `LinkedList`.
- Solve your challenge and put the `README.md` and relevant implementation files inside your `LinkedList` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.

### Example Table of Contents Update

Update the “Table of Contents” in the README at the root of the repository with a link to this challenge’s README file.

## Problem Domain

Implement a singly linked list data structure in javascript.

- The `Node` class should have properties for storing data and a reference to the next node in the linkedlist.
- The `LinkedList` class should have a property `Node head` to store the head of the linkedlist.
- The `LinkedList` class should support functions to:
- `add(data)`: Add a new node with the specified data to the end of the linkedlist.
- `remove(data)`: Remove the first node with the specified data from the linkedlist.
- `printList()`: Print the contents of the list in order.
- `includes(data)`: Check if the linked List contains a node with the specified value.
- `insertAt(data, index)`: Insert a new node with the specified data at the specified index in the linkedlist.

  #### Ensure your implementation includes:

  - A `Node` class with properties for data and a reference to the next node.

  ```javascript
  class Node {
    constructor(data) {
      this.data = data;
      this.next = null;
    }
  }
  ```

  - A `LinkedList` class with functions for adding nodes, printing the list, and removing nodes, and checking if a node with a specific value exists.
  - Handle all exceptions that could be thrown during execution ( Edge Cases ).

## Structure of the solution

```javascript
challenges-and-data-structures/
├── README.md                           # Root README
├── Data Structures/
│   └── LinkedList/
│       └── Linked-List-Implementation/
│           ├── .gitignore              # Ignore node_modules
│           ├── package.json            # Node.js + Jest config
│           ├── package-lock.json
│           ├── node_modules/           # Installed dependencies
│           ├── node.js                 # Node.js script
│           ├── linkedList.js           # Implementation file
│           ├── linkedList.test.js      # Jest test cases
│           ├── app.js                  # Console script to run manually
│           ├── README.md               # Challenge-specific README
│           ├── whiteboard.png          # Whiteboard sketch (problem breakdown)
│           └── console-output.png      # Screenshot of console output

```

### Example

```javascript
LinkedList list = new LinkedList();

// Add a node to the end of the list
list.add(5);
list.add(10);
list.add(20);
list.add(30);

// Print the list
list.printList(); // Output: Head -> 5 -> 10 -> 20 -> 30 -> Null

// Remove a node with the specified data
list.remove(10);
list.printList(); // Output: Head -> 5 -> 20 -> 30 -> Null

// Check if the linked list contains a node with the specified data
console.log(list.includes(20)); // Output: true
console.log(list.includes(10)); // Output: false

// Insert a new node with the specified data at the specified index
list.insertAt(15, 2);

list.printList(); // Output: Head -> 5 -> 20 -> 15 -> 30 -> Null
```

### Edge Cases:

- Calling printList() on an empty list.
- Removing a node from an empty linked list.
- Inserting a node at an index greater than the length of the linked list.

### Unit Tests with Jest:

#### Verify the following test cases:

- Test adding a node to the end of a linked list.
- Test removing a node by value from the linked list.
- Test the Includes() function to ensure it correctly checks if a node with the specified data exists in the linked list.
- Test the insertAt() function to ensure it correctly inserts a node at the specified index in the linked list.

## To Submit this Assignment:

1. Create a branch named `Linked-List-Implementation`.
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
