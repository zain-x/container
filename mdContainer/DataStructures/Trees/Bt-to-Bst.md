# Binary Tree to Binary Search Tree

- This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

### Instructions

- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `BTree-to-BST` inside your `Data Structures`.
- Continue working inside `Data Structures > Trees > TreeImplementation` solution, and create a folder named `BTreeToBST`.
- Solve the challenge and put the `README.md` and relevant implementation files inside your `BTreeToBST` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the `Table of Contents` in the root README of your repository with a link to this challenge's README file.

## Problem Domain

Given a Binary Tree, the task is to convert it into a Binary Search Tree (BST). The conversion should be done while maintaining the **original structure** of the Binary Tree.

### Challenge Description

- Implement a method `ConvertToBST()` that takes the root of a Binary Tree and converts it into a Binary Search Tree (BST).
- The resulting BST should have the same structure as the original Binary Tree, but the node values should be rearranged to follow the properties of a BST. For each node, the left subtree contains values less than the root node value, and the right subtree contains values greater than the root node value.
- Your implementation should handle all exceptions that could be thrown during execution.
- Demonstrate this in your console output with examples.

### Console Output Example

```csharp
BinaryTree Btree = new BinaryTree();
Btree.Root = new Node(40);
Btree.Root.Left = new Node(10);
Btree.Root.Right = new Node(50);
Btree.Root.Left.Left = new Node(5);
Btree.Root.Left.Right = new Node(30);
Btree.Root.Right.Right = new Node(60);
Btree.Root.Left.Right.Left = new Node(20);
Btree.Root.Left.Right.Right = new Node(35);


// Before Conversion (Binary Tree)
       40
      /  \
     10   50
    /  \    \
   5   30   60
      /  \
     20   35

Btree.ConvertToBST();

       35
      /  \
     20   50
    /  \    \
   10   40  60
  /
 5

// Output: Binary Search Tree with the same structure:
```

### Unit Tests with xUnit:

Verify the following test cases:

- Test converting a Binary Tree into a Binary Search Tree with the provided example.
- Test with trees that only have nodes on one side.

### To Submit this Assignment:

1. Create a branch named `BTree-to-BST`.
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
