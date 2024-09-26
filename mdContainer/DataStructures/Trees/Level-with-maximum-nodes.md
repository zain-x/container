# Binary Tree - Level with Maximum Number of Nodes

- This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

## Instructions

- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Max-Level-Nodes` inside your `Data Structures`.
- Continue working inside `Data Structures > Trees > TreeImplementation` solution, create a folder named `MaxLevelNodes`.
- Solve your challenge and place the `README.md` and relevant implementation files inside the `MaxLevelNodes` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the `Table of Contents` in the root README of your repository with a link to this challenge's README file.

## Problem Domain

- Using your binary tree implementation, find the level in the binary tree that has the maximum number of nodes. The root of the tree is at level 0.

## Challenge Description

- Implement a method `FindMaxLevelNodes()` that returns the level number with the maximum number of nodes.
- Traverse the tree level by level and count the number of nodes at each level.
- If multiple levels have the same maximum number of nodes, always return the smallest level.
- Handle edge cases like an empty tree, a tree with only one node, or all nodes on a single level.
- Handle all exceptions that could be thrown during execution.
- Show an example in the console.

### Example

```csharp
BinaryTree Btree = new BinaryTree();
Btree.Root = new Node(1);
Btree.Root.Left = new Node(2);
Btree.Root.Right = new Node(3);
Btree.Root.Left.Left = new Node(4);
Btree.Root.Left.Right = new Node(5);
Btree.Root.Right.Right = new Node(6);
Btree.Root.Left.Left.Left = new Node(7);

int maxLevel = Btree.FindMaxLevelNodes(); // Output: 2

         1
       /   \
      2     3
     / \     \
    4   5     6
       / \
      7   8

Level 0: 1 node
Level 1: 2 nodes
Level 2: 3 nodes
Level 3: 2 node

int maxLevel = Btree.FindMaxLevelNodes(); // Output: 2
         1
       /   \
      2     3
     / \     \
    4    5    7
   /     /   /
  8     9   10

  Level 0: 1 node
  Level 1: 2 nodes
  Level 2: 3 nodes
  Level 3: 3 node
```

### Unit Tests with xUnit:

- Create a new file named `MaxLevelNodesTest.cs` inside the Test folder.
  - Test and check if the correct level with maximum nodes is found using first example.
  - Test with a tree having multiple levels with the same maximum number of nodes.

## To Submit this Assignment:

1. Create a branch named `Max-Level-Nodes`.
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
