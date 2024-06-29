## Challenge 06-A: Find Common Elements in Two Arrays
- NOTE: This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

### Read all of the following instructions carefully.
- Do all your work in your previous repository `challenges-and-data-structures`
- Create a new branch called `Common-Elements`
- Create a folder `Challenges` inside your repository ( if not created before )
- Create another folder inside the `Challenges` folder called `Common-Elements`
- Solve your challenge and put the `solution` inside your `Common-Elements` folder
- Provide a screenshot of your console output and put the screenshot inside the `Readme.md` file
- Update the “Table of Contents” in the README at the root of the repository with a link to this challenge’s README file.

## Example of Table of Contents
```
### Whiteboard Images

### Challenge 06-A: Common Elements
![Common-Elements](link_to_image)
```

## Problem Domain
Write a function called `CommonElements` that accepts two arrays of integers as its parameters. Without utilizing any of the built-in methods, the function should return a new array containing the common elements between the two input arrays.

#### Example
```
#### Example
- Input: [1, 2, 3, 0], [2, 3, 4, 9]
  Output: [2, 3]

- Input: [79, 8, 15], [23, 79, 8]
  Output: [79, 8]

- Input: [5, 10, 15, 20], [10, 15, 25]
  Output: [10, 15]
```

### Unit Tests with xUnit:
- Use `[Fact]` to verify that the method correctly identifies common elements for:
- case 1: `[1, 2, 3, 0]` and `[2, 3, 4, 9]`.
- case 2: `[79, 8, 15]` and `[23, 79, 8]`.

## To Submit this Assignment
1. Create a branch named `Common-Elements`.
2. Solve your challenge with the needed tests.
3. Include a `README.md` file with the necessary content:
   - Challenge name
   - Challenge Description
   - The whiteboard image with the code included
4. Push your changes to your GitHub repository.
5. Create a pull request from your branch to the main branch.
6. Merge your branch into main.
7. Submit a link to your pull request in the submission field.
