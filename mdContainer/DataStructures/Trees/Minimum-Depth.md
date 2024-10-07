# Binary Tree - Minimum Depth

This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

### Instructions

- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Minimum-Depth` inside your `Data Structures`.
- Continue working inside `Data Structures > Trees > TreeImplementation` solution, create a folder named `MinimumDepth`.
- Solve your challenge and put the `README.md` and relevant implementation files inside your `MinimumDepth` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the "Table of Contents" in the root README of your repository with a link to this challenge's README file.

## Problem Domain

Given a binary tree, find its minimum depth. The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

### Challenge Description

- Implement a method `FindMinimumDepth()` that returns the minimum depth of the binary tree.
- A leaf node is defined as a node with no children.
- Handle edge cases such as an empty tree.
- Show an example in the console.

### Console Output Example

```csharp
BinaryTree Btree = new BinaryTree();
Btree.Root = new Node(1);
Btree.Root.Left = new Node(2);
Btree.Root.Right = new Node(3);
Btree.Root.Left.Left = new Node(4);
Btree.Root.Left.Right = new Node(5);


         1
       /   \
      2     3
     / \
    4   5

int minDepth = Btree.FindMinimumDepth(); // Output: 2

         1
       /   \
      2     3
       \     \
         5     6

int minDepth = Btree.FindMinimumDepth(); // Output: 3
// Both paths have a depth of 3, so the output for the minimum depth would be 3.
```

### Unit Tests with xUnit:

- Create a new file named `MinimumDepthTests.cs` inside the Test folder.
  - Test the minimum depth of a tree with multiple nodes but varying depths.
  - Test the minimum depth of an empty tree .

## To Submit this Assignment:

1. Create a branch named `Minimum-Depth`.
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
