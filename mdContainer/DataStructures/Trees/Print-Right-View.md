# Binary Tree - Print Right View

- This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

## Instructions

- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Right-View` inside your `Data Structures`.
- Continue working inside `Data Structures > Trees > TreeImplementation` solution, create a folder named `RightViewPrint`.
- Solve your challenge and place the `README.md` and relevant implementation files inside the `RightView` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the `Table of Contents` in the root README of your repository with a link to this challenge's README file.

## Problem Domain

- Using your binary tree implementation, print the right view of it, The right view of a binary tree is the set of nodes visible when the tree is viewed from the right side.

## Challenge Description

- Implement a method `PrintRightView()` that prints the right view of the binary tree.
- Traverse the tree and print the rightmost node at each level.
- Handle edge cases like an empty tree, a tree with only one node, or a tree where all nodes are on one side.
- Handle all exceptions that could be thrown during execution.
- Show an example in the console.

```csharp
BinaryTree Btree = new BinaryTree();
Btree.Root = new Node(2);
Btree.Root.Left = new Node(3);
Btree.Root.Right = new Node(5);
Btree.Root.Left.Left = new Node(4);
Btree.Root.Right.Right = new Node(6);
Btree.Root.Left.Left.Right = new Node(7);

Btree.PrintRightView();  // Output: 2 5 6 7

         2
       /   \
      3     5
     /       \
    4         6
     \
      7

```

### Unit Tests with xUnit:

- Create a new file `RightViewtest.cs` inside the Test folder.
  - Test the correct right view is printed using the example above.
  - Test with a tree having nodes only on the right side.

## To Submit this Assignment:

1. Create a branch named `Right-View`.
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
