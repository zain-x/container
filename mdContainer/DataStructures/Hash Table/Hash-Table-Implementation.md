# Hash Table Implementation

- **NOTE:** This challenge is a console-based solution. You need to submit the entire solution with xUnit tests.

## Instructions

- Do all your work in your previous repository `challenges-and-data-structures`.
- Create a new branch called `HashTable-Implementation` inside your `Data Structures` folder.
- Create a folder named `HashTables` inside your `Data Structures` folder.
- Create a new solution inside the `HashTables` folder called `HashTableImplementation`.
- Solve your challenge and put the `README.md` and relevant implementation files inside your `HashTables` folder.
- Follow the submission requirements and include a screenshot of your console output inside your `README.md` file.
- Update the `Table of Contents` in the README at the root of the repository with links to these challenges' `README` files.

## Problem Domain

Implement a hash table data structure using chaining for collision resolution.

- The hash table should accept keys of type `string` and values of a generic type `T`

## Features and Methods

The `HashTable` class should support the following methods:

- `Insert(key, value)`: Add a new key-value pair to the hash table.
- `Search(key)`: Return the value associated with the given key.
- `Remove(key)`: Remove the key-value pair with the given key from the hash table.
- `Contains(key)`: Return whether the key exists in the hash table.
- `Display()`: Display the entire hash table in a structured way, showing the linked lists at each index.
- `Count()`: Return the total number of elements currently in the hash table.

## Requirements

- Use the hash function `GetHashCode()` to convert the keys.
- Handle collisions using chaining (linked lists at each index).
- Ensure you handle any exceptions that could occur during execution.

example

```csharp
HashTable hashTable = new HashTable();

// Insert key-value pairs
hashTable.Insert("color", "Green");
hashTable.Insert("bgColor", "Blue");
hashTable.Insert("SecondColor", "Red");

// Search for a key
string name = hashTable.Search("color"); // name: "Green"

// Remove a key-value pair
hashTable.Remove("bgColor");

// Check if a key exists
bool contains = hashTable.Contains("bgColor"); // contains: false

// Display the hash table by showing the linked lists at each index
hashTable.Display();

// Get the total count of elements in the hash table
int count = hashTable.Count(); // count: 2
```

### Unit Tests with xUnit:

- Verify the following test cases:
  - Inserting a key-value pair works correctly.
  - Searching for an existing key returns the correct value.
  - Removing a key-value pair works as expected.

## To Submit

1. Create a branch named `HashTable-Implementation`.
2. Solve your challenge with the required tests.
3. Include a `README.md` file with the necessary content:
   - Problem Domain
   - Inputs and Expected Outputs
   - Edge Cases
   - Visual
   - Algorithm
   - Real Code
   - Big O Time/Space Complexity
4. Push your changes to the repository.
5. Create a pull request from your branch to the main branch.
6. Merge your branch into the main.
7. Submit the link to your pull request.
