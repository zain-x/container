## Challenge 06-C: Palindrome
- NOTE: This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

### Read all of the following instructions carefully.
- Do all your work in your previous repository `challenges-and-data-structures`
- Create a new branch called `Palindrome-Check`
- Create a folder inside the `Challenges` folder called `Palindrome-Check`
- Solve your challenge and put the `Readme.md` and `Program.cs` inside your `Palindrome-Check` folder
- Provide a screenshot of your console output and put the screenshot inside the `Readme.md` file
- Update the “Table of Contents” in the README at the root of the repository with a link to this challenge’s README file.

## Example of Table of Contents
```
### Whiteboard Images

### Challenge 06-C: Palindrome Check
![Palindrome-Check](link_to_image)
```

## Problem Domain
- Write a function called `IsPalindrome` that accepts a string as its parameter. The function should return true if the string is a palindrome and false if not. A palindrome is a word, phrase, number, or other sequences of characters that reads the same forward and backward, (ignoring spaces and capitalization).

#### Example
```
- Input: "radar"
  Output: true

- Input: "Hello World"
  Output: false

- Input: "racecar"
  Output: true

- Input: "Was it a car or a cat I saw"
  Output: true
  ```

### Unit Tests with Xunit:
- Using `[Theory]` with `[InlineData]`, verify the following 4 cases:
  - Test for Valid Palindrome: "radar" should return true.
  - Test for Non-Palindrome: "Hello World" should return false.
  - Test for Palindrome: "racecar" should return true.
  - Test for Palindrome: "Was it a car or a cat I saw" should return true.

## To Submit this Assignment
1. Create a branch named `Palindrome-Check`.
2. Solve your challenge with the needed tests.
3. Include a `README.md` file with the necessary content.
   - Challenge name
   - Challenge Description
   - The whiteboard image with the code included
4. Push your changes to your GitHub repository.
5. Create a pull request from your branch to the main branch.
6. Merge your branch into main.
7. Submit a link of your pull request in the submission field.
