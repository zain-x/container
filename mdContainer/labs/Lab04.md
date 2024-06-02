# Lab 04: Rock, Paper, Scissors game
<img src="https://cdn.dribbble.com/users/2190368/screenshots/4369617/rock-scissors-paper.gif" alt="Example Image" width="250"/>

## The Problem Domain

Create a console application that simulates the classic game of Rock, Paper, Scissors.

## Program Specifications

Build a console application that allows two players ( Player VS Ai ) to play Rock, Paper, Scissors against each other. The solution should include the following components:

1. `Main` method
   - Entry point of the application

2. `Player` class
   - Represents a player with properties for name and score
   - Contains a method for choosing a move (rock, paper, or scissors)

3. `RPSGame` class
   - Manages the game logic, including comparing moves and determining the winner of each round
   - Contains methods for playing rounds, displaying scores, and managing the game flow

### Functionality:
- Implement a single-player mode where the player competes against an AI opponent. The AI opponent should make random moves, providing a challenge for the player. The solution should include the following:
- Players take turns choosing their moves (rock, paper, or scissors).
- The game compares the moves of both players and determines the winner of each round.
- After each round, the game displays the result and updates the scores.
- The game continues until 3 rounds have been played, displaying the final scores and declaring the winner ( you or AI ).
- Handle any exception that might occur during gameplay.
- Prevent the player from choosing an invalid move.
- End the game when any player reaches 3 points as a score.
- Call all methods in `Program.cs`

### Unit Tests with Xunit:
Write test cases using Xunit to verify the following:
- Test if the game correctly determines the winner of each round based on the players moves.
- Test if the game correctly updates the scores after each round.

## Stretch Goals
- Implement a cheat method (Hard Mode) that allows the AI to predict the Player opponent's move, This method should provide an unfair advantage to the AI and should be used for demonstration purposes only.

## Lab Structure
```
Rock-Paper-Scissors/
|── RPSGameTests/ (2)
├── RPSGame/
│ ├── program.cs (2 marks)
│ ├── player.cs (2 marks)
│ ├── RPSGame.cs (3 marks)
└── README.md (1 mark)
```

## To Submit this Assignment
1. Create a new repo on your personal GitHub account.
2. Name your repo `RPS-Game`.
3. Create a branch named `RPSGame`.
4. Solve your Lab, following the Program Specifications section.
5. Include a `README.md` file with the necessary content.
6. Push your changes to your GitHub repository.
7. Create a pull request from your branch to the main branch.
8. Submit a link of your pull request in the submission field.
