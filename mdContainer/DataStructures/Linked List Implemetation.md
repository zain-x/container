## Linked List Implementation
- NOTE: This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

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
Implement a basic singly linked list data structure in C#.
- The `Node` class should have properties for storing data and a reference to the next node in the linkedlist.
- The `LinkedList` class should have a property `Node head` to store the head of the linkedlist.
- The `LinkedList` class should support methods to:
- Includes(int data): Check if the linked List contains a node with the specified value.
- Remove(int data): Remove the first node with the specified data from the linkedlist.
- PrintList(): Print the contents of the list in order.

  #### Ensure your implementation includes:
  - A `Node` class with properties for data and a reference to the next node.
  - A `LinkedList` class with methods for adding nodes, removing nodes, and printing the list.
  - Handle all exceptions that could be thrown during execution.

### Example 
```csharp
LinkedList list = new LinkedList();
// Print the list
list.PrintList(); // Output: Head -> 5 -> 10 -> 20 -> 30 -> Null

// Remove a node with the specified data
list.Remove(10);
list.PrintList(); // Output: Head -> 5 -> 20 -> 30 -> Null
```

### Unit Tests with xUnit:
- Verify the following test cases:
- Test remove a node from the end of a linked list.
- Test the PrintList() method to ensure it correctly prints the linked list contents.

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