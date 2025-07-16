# Stack Challenge: Delete Middle Element of a Stack

> NOTE: This challenge is a console-based solution. You need to submit the entire solution with Jest tests.

## Read all of the following instructions carefully.

- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `Delete-Middle-Element-Stack`.
- Continue working inside `Data Structures > Stack & Queue > StackAndQueue` folder, create a folder named `DeleteMiddleElement`.
- Solve the challenge and place the `README.md` and relevant implementation files inside the `DeleteMiddleElement` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the Table of Contents in the root `README.md` with a link to this challenge’s README file.

## Problem Domain

- Implement a method to delete the middle element of a stack in JavaScript.  
  If the stack has an even number of elements, remove the lower middle element.

## Detailed Requirements

- Create a class `StackWithDeleteMiddle` that extends your previously implemented `Stack` class.
- Add a method `deleteMiddle()` to remove the middle element of the stack.
- Use an additional stack to achieve this or choose another approach.
- Ensure the stack remains in the correct order after deletion.
- Handle edge cases like:
  - Empty stack
  - Stack with only one element

## Steps to Solve

1. Calculate the middle position of the stack:
   - If number of elements `n` is even, middle = `n/2 - 1`
   - If `n` is odd, middle = `n/2`
2. Use a temporary stack to hold elements while reaching the middle.
3. Remove the middle element.
4. Push the held elements back onto the main stack in original order.
5. Ensure the final stack order is correct.

## Example

```javascript
const stack = new StackWithDeleteMiddle();
stack.push(7);
stack.push(14);
stack.push(3);
stack.push(8);
stack.push(5);

console.log(stack)); // Stack: Top -> 5 -> 8 -> 3 -> 14 -> 7
stack.deleteMiddle();
console.log(stack); // Stack: Top -> 5 -> 8 -> 14 -> 7

stack.push(2);
stack.push(9);
stack.push(11);
console.log(stack); // Stack: Top -> 11 -> 9 -> 2 -> 5 -> 8 -> 14 -> 7
stack.deleteMiddle();
console.log(stack); // Stack: Top -> 11 -> 9 -> 2 -> 8 -> 14 -> 7
```

Note: When stack size is even, the lower middle element is deleted.

## Jest Unit Tests

Write unit tests to verify:

- Deleting the middle element of a stack with odd number of elements
- Deleting the middle element of a stack with even number of elements
- Deleting from an empty stack
- Deleting from a stack with one element

## Submission Instructions

1. Create a branch: `Delete-Middle-Element-Stack`
2. Solve the challenge with the necessary code and tests
3. Add a `README.md` inside the `DeleteMiddleElement` folder with the following:

   - Problem Domain
   - Inputs and Expected Outputs
   - Edge Cases
   - Visual (whiteboard image)
   - Algorithm
   - Real Code
   - Big O Time/Space Complexity

4. Include a console output screenshot showing the working code
5. Push your changes to GitHub
6. Create a pull request from your branch to `main`
7. Merge your branch
8. Submit the link of your pull request in the submission field
