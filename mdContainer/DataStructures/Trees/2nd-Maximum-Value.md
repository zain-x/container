# Binary Tree - Second Maximum Value
This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

### Instructions
- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Second-Max-Value` inside your `Data Structures`.
- Continue working inside `Data Structures > Trees > TreeImplementation` solution, create a folder named `SecondMaxValue`.
- Solve your challenge and put the `README.md` and relevant implementation files inside your `SecondMaxValue` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the `Table of Contents` in the root README of your repository with a link to this challenge's README file.

## Problem Domain
Using your binary tree implementation, find the second maximum value in a binary tree.

## Challenge Description
- The maximum value is the largest value in the tree. The second maximum value is the largest value among the nodes that are less than the maximum value.

   - Tips and methods to solve this challenge:
     - `FindSecondMax()`: Find the second maximum value in the Binary Tree.
     - Traverse the tree recursively to solve this challenge.
     - Handle edge cases such as an empty tree or a tree with only one node.
     - Handle cases where the tree has fewer than two unique values.
     - Handle all exceptions that could be thrown during execution.
     - Show an example in the console.

### Console Output Example
```csharp
   BinaryTree Btree = new BinaryTree();
   Btree.Root = new Node(10);
   Btree.Root.Left = new Node(5);
   Btree.Root.Right = new Node(20);
   Btree.Root.Left.Left = new Node(3);
   Btree.Root.Left.Right = new Node(7);
   Btree.Root.Right.Left = new Node(15);
   Btree.Root.Right.Right = new Node(25);

   int secondMax = Btree.FindSecondMax(); // Output: 20

      10
     /  \
    5    20
   / \   / \
  3   7 15  25
```

### Unit Tests with xUnit:
- Verify the following test cases:
  - Test finding the maximum value in a binary tree using the provided example.
  - Test with a tree having fewer than two unique values.
  - Test with a tree having negative values.


## To Submit this Assignment:
1. Create a branch named `Second-Max-Value`.
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



