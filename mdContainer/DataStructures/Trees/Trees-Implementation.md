# Binary Tree and Binary Search Tree Implementation

- **NOTE:** This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

### Instructions

- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Tree-Implementation` inside your `Data Structures`.
- Create a folder named `Trees` inside your `Data Structures` folder.
- Create a new solution inside the `Trees` folder called `TreeImplementation`.
- Solve your challenge and put the `README.md` and relevant implementation files inside your `Trees` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the `Table of Contents` in the README at the root of the repository with links to these challenges' `README` files.

## Problem Domain
Implement a binary tree and binary search tree data structures in C#.

### Binary Tree Implementation
- The `BinaryTree` class should support methods to:
  - `PreOrder()`: Traverse the tree in pre-order (Root, Left, Right).
  - `InOrder()`: Traverse the tree in in-order (Left, Root, Right).
  - `PostOrder()`: Traverse the tree in post-order (Left, Right, Root).
  - `Print()`: Display the tree in the console in a structured way.

### Binary Search Tree (BST) Implementation
- The `BinarySearchTree` class should support methods to:
  - `Add(int data)`: Add a node with the specified data in the correct location to maintain BST properties.
  - `Contains(int data)`: Return whether a node with the specified data exists in the tree.
  - `Remove(int data)`: Remove the node with the specified data while maintaining BST properties.

#### Ensure your implementation includes:
- A `Node` class with properties for data and references to left and right children.
- A `BinaryTree` class with methods for `PreOrder`, `InOrder`, `PostOrder`, and `Print`.
- A `BinarySearchTree` class with methods for `Add`, `Contains`, and `Remove`.
- Handle all exceptions that could be thrown during execution.
- Show an example of the binary tree and BST in the console.

### Example for Binary Search Tree

```csharp
BinarySearchTree bst = new BinarySearchTree();

// Add nodes to the BST
bst.Add(10);
bst.Add(5);
bst.Add(15);
bst.Add(7);

// Check if a node exists
bool contains = bst.Contains(7); // contains: true

// Remove a node
bst.Remove(5);

// Check if the node is removed
contains = bst.Contains(5); // contains: false
```

### Unit Tests with xUnit:
- Verify the following test cases for BinaryTree:
  - Test pre-order traversal.
  - Test in-order traversal.
  - Test post-order traversal.

- Verify the following test cases for BinarySearchTree:
  - Test adding a node.
  - Test checking if a node exists.
  - Test removing a node.

## To Submit this Assignment:
1. Create a branch named `Tree-Implementation`.
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
7. Submit the link of your pull request in the submission field.