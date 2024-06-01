# Lab 02: QuizMaster Challenge

## Lab Overview
QuizMaster Challenge lab! In this lab, you'll create a text-based quiz application where users can test their knowledge by answering a series of questions.

## Lab Specifications
### Main Method (2 marks)
- **Signature:** `static void Main(string[] args)`
- **Logic:**
  - Calls the `StartQuiz()` method.
  - Handles any generic exceptions and outputs the error message.
  - Includes a finally block to indicate the completion of the program.

### StartQuiz Method (2 marks)
- **Signature:** `static void StartQuiz()`
- **Logic:**
  - Initializes a list of questions and answers. ( list of strings )
  - Initializes a variable to track the user's score.
  - Enters a loop where the user is presented with questions one by one:
    - Displays the question.
    - Accepts user input for the answer.
    - Checks if the answer is correct and provides feedback.
    - Updates the user's score.
  - Displays the final score at the end of the quiz.

### Questions and Answers (2 marks)
- Define a list of questions and corresponding answers within the `StartQuiz()` method.

### Error Handling (2 marks)
- Handle any generic exceptions.
- Handle input validation to ensure the user enters valid options.
- Handle invalid input by displaying an error message and asking the user to try again.

## Stretch Goals
- Timer for Each Question: Add a timer for each question. If the user doesn't input an answer within the specified time, move on to the next question.

## How To Submit this Lab
1. Create a new repository on your personal GitHub account.
2. Name your repository `QuizMaster-Challenge`.
3. Create a branch named `QuizMaster`
4. Solve your Lab, as outlined in the Program Specifications section.
5. Include a `README.md` file with the following content:
    - Purpose of the program
    - Instructions on how to run the program
    - Additional information or notes (if any)
6. Do the ACP (Add - Commit - Push) process to push your changes to your GitHub repository:
   - Use `git add .` to stage your changes.
   - Use `git commit -m "Your commit"` to commit your changes.
   - Use `git push origin QuizMaster` to push your changes.

7. Create a pull request from your branch back to the main branch:
   - Navigate to your GitHub repository's page.
   - Click on the "Pull Requests" tab.
   - Click the "New pull request" button.
   - Compare changes between your branch and the main branch.
   - Fill out the pull request details, including a brief description of your changes.
   - Create the pull request.
8. Submit a link to your pull request in the submission field.

