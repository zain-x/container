# Binary Tree - Sum of leaf nodes
- This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

### Instructions
- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Leaf-Sum` inside your `Data Structures`.
- Continue working inside `Data Structures > Trees > TreeImplementation` solution, create a folder named `LeafSum`.
- Solve your challenge and put the `README.md` and relevant implementation files inside your `LeafSum` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the `Table of Contents` in the root README of your repository with a link to this challenge's README file.

## Problem Domain
- Using your binary tree implementation, find the sum of all the leaf nodes.

### Challenge Description
- Implement a method `LeafSum()` to calculate the sum of all leaf nodes in the binary tree.
- A leaf node is a node that does not have any children.
- Traverse the tree to find all the leaf nodes and sum their values.
- Handle all exceptions that could be thrown during execution.
- Show an example in the console.

### Console Output Example
```csharp
   BinaryTree Btree = new BinaryTree();
   Btree.Root = new Node(9);
   Btree.Root.Left = new Node(8);
   Btree.Root.Right = new Node(12);
   Btree.Root.Left.Left = new Node(3);
   Btree.Root.Left.Right = new Node(7);
   Btree.Root.Right.Left = new Node(17);
   Btree.Root.Right.Right = new Node(23);
   Btree.Root.Left.Left.Right = new Node(4);

   int leafSum = Btree.SumOfLeafNodes(); // Output: 51

      9
     /  \
    8    12
   / \   / \
  3   7 17  23
   \
    4

   Leaf nodes are 4, 7, 17, and 23.
   Sum = 4 + 7 + 17 + 23 = 51
```

### Unit Tests with xUnit:
- Verify the following test cases:
  - Test calculating the sum of all leaf nodes in a binary tree using the provided example.
  - Test calculating the sum of all leaf nodes in a binary tree using example with negative leaf values.

## To Submit this Assignment:
1. Create a branch named `Leaf-Sum`.
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



