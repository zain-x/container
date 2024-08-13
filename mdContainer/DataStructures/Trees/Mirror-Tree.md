# Binary Tree - Mirror Tree
- This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

### Instructions
- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Mirror-Tree` inside your `Data Structures`.
- Continue working inside `Data Structures > Trees > TreeImplementation` solution, create a folder named `MirrorTree`.
- Solve your challenge and put the `README.md` and relevant implementation files inside your `MirrorTree` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the `Table of Contents` in the root README of your repository with a link to this challenge's README file.

## Problem Domain
- Using your binary tree implementation, convert the binary tree into its Mirror tree.

### Challenge Description
 - A mirror tree of a binary tree is a tree that looks exactly like the original binary tree but with all the left and right children swapped at every node. This means that the left subtree of the original becomes the right subtree in the mirror.

   - Tips and methods to solve this challenge:
     - `MirrorTree()`: Convert the Binary Tree into its mirror tree.
     - `InorderTraversal()`: Return a list of nodes in inorder sequence.
     - Traverse recursively and swap the right and left subtrees after traversing the subtrees
     - Handle all exceptions that could be thrown during execution.
     - Show an example in the console.



### Console Output Example
```csharp
   BinaryTree Btree = new BinaryTree();
   Btree.Root = new Node(4);
   Btree.Root.Left = new Node(8);
   Btree.Root.Right = new Node(7);
   Btree.Root.Left.Left = new Node(12);
   Btree.Root.Left.Right = new Node(9);

List<int> originalInorder = Btree.InorderTraversal(); // Output: [12, 8, 9, 4, 7]

      4
     / \
    8   7
   / \
 12   9

Btree.Mirror();

      4
     / \
    7   8
       / \
      9  12


List<int> mirroredInorder = Btree.InorderTraversal(); // Output: [7, 4, 9, 8, 12]
```

### Unit Tests with xUnit:
- Verify the following test cases:
  - Test converting a tree into its mirror and performing inorder traversal.
  - Test with a single-node tree and an empty tree.

## To Submit this Assignment:
1. Create a branch named `Mirror-Tree`.
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



