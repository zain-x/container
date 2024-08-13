# Binary Tree - Largest Value at Each Level
- This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

### Instructions
- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Largest-Level-Value` inside your `Data Structures`.
- Continue working inside `Data Structures > Trees > TreeImplementation` solution, create a folder named `LargestLevelValue`.
- Solve your challenge and put the `README.md` and relevant implementation files inside your `LargestLevelValue` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the `Table of Contents` in the root README of your repository with a link to this challenge's README file.

## Problem Domain
- Using your binary tree implementation, find the largest value at each level of the binary tree.

### Challenge Description
- Implement a method `LargestLevelValue()` that returns a list of the largest values at each level of the binary tree.
- Traverse the tree level by level and keep track of the maximum value at each level.
- Handle all exceptions that could be thrown during execution.
- Show an example in the console.

### Console Output Example
```csharp
BinaryTree Btree = new BinaryTree();
Btree.Root = new Node(5);
Btree.Root.Left = new Node(13);
Btree.Root.Right = new Node(7);
Btree.Root.Left.Left = new Node(3);
Btree.Root.Left.Right = new Node(7);
Btree.Root.Right.Left = new Node(12);
Btree.Root.Right.Right = new Node(20);
Btree.Root.Left.Left.Left = new Node(1);
Btree.Root.Left.Left.Right = new Node(4);
Btree.Root.Right.Left.Right = new Node(11);

   List<int> largestValues = Btree.LargestValueEachLevel(); // Output: [5, 13, 20, 11]

         5
       /   \
      13    7
     / \   / \
    3   7 12  20
   / \     \
  1   4     11

   Level 0: 5
   Level 1: 13
   Level 2: 20
   Level 3: 11
```

### Unit Tests with xUnit:
- Verify the following test cases:
  - Test calculating the sum of all leaf nodes in a binary tree using the provided example.
  - Test calculating the sum of all leaf nodes in a binary tree using example with negative leaf values.

## To Submit this Assignment:
1. Create a branch named `Largest-Level-Value`.
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



