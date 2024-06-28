## Challenge 6-B: Reverse Words
- NOTE: This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

### Read all of the following instructions carefully.
- Do all your work in your previous repository `challenges-and-data-structures`
- Create a new branch called `Reverse-Words`
- Create a folder `Challenges` inside your repository
- Create another folder inside the `Challenges` folder called `Reverse-Words`
- Solve your challenge and put the `Readme.md` and `Program.cs` inside your `Reverse-Words` folder
- Provide a screenshot of your console output and put the screenshot inside the `Readme.md` file
- Update the “Table of Contents” in the README at the root of the repository with a link to this challenge’s README file.

## Example of Table of Contents
```
### Whiteboard Images

### Challenge 06-B: Reverse Words
![Reverse-Words](link_to_image)
```

## Problem Domain
Write a function called `ReverseWords` that accepts a string as its parameter. The function should reverse the order of the words in the string and return the resulting string. Words are defined as sequences of characters separated by spaces.

#### Example

```
- Input: "csharp is programming language"
  Output: "language programming is csharp"

- Input: "Reverse the words in this sentence"
  Output: "sentence this in words the Reverse"

- Input: "challenges and data structures"
  Output: "structures data and challenges"
```

### Unit Tests with xUnit:
- Use `[Fact]` to verify the following cases:
  - Test case 1: "csharp is programming language" should return "language programming is csharp"
  - Test case 2: "Reverse the words in this sentence" should return "sentence this in words the Reverse".
  - Test case 3: "challenges and data structures" should return "structures data and challenges".

## To Submit this Assignment
1. Create a branch named `Reverse-Words`.
2. Solve your challenge with the needed tests.
3. Include a `README.md` file with the necessary content:
   - Challenge name
   - Challenge Description
   - The whiteboard image with the code included
4. Push your changes to your GitHub repository.
5. Create a pull request from your branch to the main branch.
6. Merge your branch into main.
7. Submit a link to your pull request in the submission field.
