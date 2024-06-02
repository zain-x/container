# Adventure Quest RPG - Part 1
<img src="https://media.moddb.com/cache/images/games/1/22/21736/thumb_620x2000/TUKLEG_DROP.gif" alt="Example Image" width="350"/>


## Lab Overview
Adventure Quest RPG! In this lab, you'll create an adventure game where players can go on an epic journey, battle monsters, and explore dungeons.

## Lab Specifications

### Main Method
- **Logic:**
  - Calls the `StartBattle()` method.
  - show in the console `Adventure complete!` if you successfully complete the game.

### Character Classes
- Define classes to represent different types of characters in the game.
- Create a class named Player to represent the player-controlled character.
- Define properties: Name, Health, AttackPower, and Defense to represent the player's attributes.
- Initialize default values for these properties.
- Create a base class named Monster to represent the monsters in the game.
- Define properties: Name, Health, AttackPower, and Defense to represent monster attributes.

### IBattleStates interface
- Define an interface named IBattleStates to abstract common battle-related properties.
- Define properties within the interface to represent attributes shared by characters involved in battle: Name Health, AttackPower, Defense.
- Implement the IBattleStates interface in classes that participate in battles: Player and Monster.
- Ensure that each class implementing the interface provides concrete implementations for all properties defined in the interface.

### Attack Method
- Define a method named Attack that simulates an attack between two battle entities.
Accept parameters for the attacker and the target, both of which implement the IBattleStates interface.
- Calculate the damage inflicted by the attacker on the target based on their (attack power and the target's defense) and Ensure that the damage value is never negative.
- Reduce the target's health by the calculated damage amount.
- If the target's health drops below zero, set the damage value to zero to prevent negative health values.
- Display information about the attack, including the attacker's and target's names, the damage dealt, and the updated health of the target.

### StartBattle Method
- Define a method named StartBattle that initiates a battle between a player character and an enemy monster.
- Accept parameters for the player character (player) and the enemy monster (enemy).
- Enter a loop that continues as long as both the player and the enemy have health greater than zero.
- Display a message indicating that it's the player's turn.
- Handle the player's attack by calling the Attack method with the player as the attacker and the enemy as the target.
- Check if the enemy's health is reduced to zero or below, If so, display a victory message and end the battle.
- If the enemy is still alive, display a message indicating that it's the enemy's turn.
- Handle the enemy's attack by calling the Attack method with the enemy as the attacker and the player as the target.
- Check if the player's health is reduced to zero or below. If so, display a defeat message and end the battle.

### Error Handling 
- Handle any exceptions that may occur during the game.
- Ensure input validation if needed to prevent unexpected behavior.

### XUnit Tests
- Test whether the Attack method correctly reduces the health of the target (enemy) when the player attacks.
- Test whether the Attack method correctly reduces the health of the target (player) when the enemy attacks.
- Assert that the player's health is greater than zero after winning the battle.

### Stretch Goals
- Implement a leveling system where characters gain experience points and improve their stats.

### Note: you should use OOP ( object oriented programming ) concepts like virtual methods, method overriding, and interfaces to enhance you code.

### Lab Structure
```
Adventure-Quest-RPG/
|── AdventureQuestRPGTests/    (2 marks)
├── AdventureQuestRPG/
│   ├── Program.cs             (2 marks)
│   ├── Characters.cs          (2 marks)
│   └── BattleSystem.cs        (3 mark)
└── README.md                  (1 mark)

```

## How To Submit this Lab
1. Create a new repository on your personal GitHub account.
2. Name your repository `Adventure-Quest-RPG`.
3. Create a branch named `AdventureQuest-part1`.
4. Solve your Lab, following the Program Specifications section.
5. Include a `README.md` file with the necessary content.
6. Push your changes to your GitHub repository.
7. Create a pull request from your branch to the main branch.
8. Submit a link of your pull request in the submission field.
