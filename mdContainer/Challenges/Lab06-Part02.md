# Adventure Quest RPG - Part 2
<img src="https://media.moddb.com/cache/images/games/1/22/21736/thumb_620x2000/MCN_DEATH.gif" alt="Example Image" width="350"/>

## Lab Overview
In today's lab, we will continue working on the Adventure Quest RPG game as we will dive deeper by expanding the features we developed in Part 1. In this part, we'll manage the player quests and further enhance the gameplay experience.

## Lab Specifications

### Advanture Class
- Initiates the game loop and manages the player's actions during the adventure. It displays the available actions, and processes the player's choice.
- Initializes a list of monsters with predefined values.
- Displays the player's current location.
- Presents the available actions for the player to choose from.
- Prompts the player to choose an action and returns the selected choice.
- Handles encounters with monsters of all different types inluding Boss.
- Option to end the game.

### BossMonster Class
- Define a BossMonster class, inheriting from the Monster class, to represent an unbeatable boss creature.
- Configure the boss monster with extremely high stats to provide a great challenge for players.

## Logic
### Locations and Movement
- Define multiple locations within the game world, such as forests, caves, towns, etc.
- Allow players to move between locations, presenting them with a list of available destinations to choose from.
- Update the Adventure class to display the player's current location.

## Additional XUnit Tests  
- finding a boss monster.
- moving to a new location correctly.


### Note: you should use OOP ( object oriented programming ) concepts like abstract methods, virtual methods, method overriding, and interfaces to enhance you code.

### Lab Structure
```
Adventure-Quest-RPG/
|── AdventureQuestRPGTests/    (2 marks)
├── AdventureQuestRPG/
│   ├── Program.cs             (2 marks)
│   ├── Characters.cs             
│   ├── BattleSystem.cs        
│   └── Adventure.cs           (5 marks)
└── README.md                  (1 mark)

```

## How To Submit this Lab
1. Create a new branch named `AdventureQuest-part2` in your existing GitHub repository.
2. Solve the lab according to the updated specifications.
3. Update the README.md file with the necessary content.
4. Push your changes to your GitHub repository.
5. Create a pull request from your branch to the main branch.
6. Submit a link of your pull request in the submission field.





