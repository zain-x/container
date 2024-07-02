# Adventure Quest RPG - Part 2
<img src="https://media.moddb.com/cache/images/games/1/22/21736/thumb_620x2000/MCN_DEATH.gif" alt="Example Image" width="310"/>

## Lab Overview
In today's lab, we will continue working on the Adventure Quest RPG game as we will dive deeper by expanding the features we developed in Part 1. In this part, we'll manage the player quests and further enhance the gameplay experience.

## Lab Specifications

### IBattleStates interface
- Define an interface named IBattleStates to represent common battle-related properties.
- Define properties within the interface to represent attributes shared by characters involved in battle: Name Health, AttackPower, Defense.
- Implement the IBattleStates interface in classes that participate in battles: Player and Monster.
- Ensure that each class implementing the interface provides concrete implementations for all properties defined in the interface.

### Attack Method (update)
- Update the Attack method in the BattleSystem class:
  - Ensure the parameters for the attacker and the target implement the IBattleStates interface.

### BossMonster Class
- Define a BossMonster class that inherits from the `Monster` class to represent a powerful boss monster.
- Configure the boss monster with extremely high stats to provide a great challenge for players.

### Advanture Class
- Initiates the game loop and manages the player's actions during the adventure. It displays the available actions, and processes the player's choice.
- Initializes a list of monsters with predefined values.
- Displays the player's current location.
- Prompts the player to choose an action and returns the selected choice.
- Handles encounters with monsters of all different types of monsters inluding Boss monster ( Randomly ).
- Option to end the game.
- Presents the available actions for the player to choose from  (e.g., discover a new location, attack a monster, end the game , etc ).

### Inventory System (Part 3)
- After defeating a monster, there is a small chance it will drop items like weapons, armor, or potions, Handle the item drop logic in the BattleSystem class. When a monster is defeated, randomly determine if an item is dropped and add it to the player's inventory list.
- Define an abstract Item base class with common properties such as Name and Description.
- Create derived classes for specific item types, such as Weapon, Armor, and Potion, each with additional properties and methods relevant to the item type.
- Create an Inventory class to manage a collection of items. This class should have methods to add items, and display the inventory contents.
- Integrate the inventory system into the Player class by adding an Inventory property.
- Implement methods in the Player class to use or equip items. For example, using a potion will increase the player's health, while equipping a weapon will increase their attack power, an Armor will increase the defense, etc.
- Add a new game option to view and use items from the inventory. Before encountering any monster, the player should have the option to use or equip discovered items if they exsist and handle the exception if they do not exist.

## Logic
### Locations and Movement
- Define multiple locations within the game world, such as forests, caves, towns, etc.
- Allow players to move between locations, presenting them with a list of available locations to choose from.
- Update the `Adventure` class to display the player's current location and handle movement between locations.

## Additional XUnit Tests  
- Test finding and encountering a boss monster.
- Test moving to a new location correctly.

### Lab Structure
```
Adventure-Quest-RPG/
|── AdventureQuestRPGTests/    (2 marks)
├── AdventureQuestRPG/
│   ├── Program.cs             (1 marks)
│   ├── Characters.cs             
│   ├── BattleSystem.cs        
│   ├── Adventure.cs           (2 marks)
│   ├── Inventory.cs           (1.5 mark)
│   ├── Items.cs               (1 mark)
│   └── IBattleStates.cs       (1.5 mark)
└── README.md                  (1 mark)
```

### Stretch goals
1. Skill System:
  - Allow the player to learn and use different skills or abilities as your level increases (level is a stretch goal from part 1)..
  - Define a set of skills with various effects (e.g.: healing, special attacks).
  - Implement a skill tree with the list of skills that can be used in the player attack round.
  - handle the logic into the game loop and battle system.

2. Save and Load Feature:
  - Implement a save and load feature to allow players to save their progress.
    - Use file System I/O operations to do the following: (using txt file or JSON file (recommended))
    - Save the player's current stats, location, ( level if you solved the stretch goal in part 1 ), and collected items.
    - Load the player's current location and inventory.
    - Ensure that the save and load feature is working correctly.
    - Add a new game option to Load the game.

## How To Submit this Lab
1. Create a new branch named `AdventureQuest-part2` in your existing GitHub repository `Adventure-Quest-RPG`.
2. Solve the lab according to the updated specifications.
3. Update the README.md file with the necessary content.
4. Push your changes to your GitHub repository.
5. Create a pull request from your branch to the main branch.
6. Submit a link of your pull request in the submission field.

