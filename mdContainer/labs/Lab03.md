# Lab 03: Contacts Manager
<img src="https://cdn.pixabay.com/animation/2023/06/13/15/13/15-13-36-234_512.gif" alt="Example Image" width="150"/>

## The Problem Domain
- Create a "Contact Manager" program within a console application

## Program Specifications
Build out a console application that mocks the functionality of a contact manager using Test Driven Development (TDD). Your solution should include the following methods:

1. `Main` method

- Call the ContactsManager() method to enable the application functionality

1. You app should include the following methods:

   - `AddContact()`
      - **Functionality**: Adds a new contact to the list
      - **Return**: List of strings (updated list of contacts)

   - `RemoveContact()`
      - **Functionality**: Removes a contact from the list
      - **Return**: List of strings (updated list of contacts)

   - `ViewAllContacts()`
      - **Functionality**: Returns a list of all contacts
      - **Return**: List of strings

### A few things to keep in mind:
   - Do not allow the user to add an empty contact.
   - Do not allow the user to add a duplicate contact.
   - Ensure the contact exists in the list before attempting to remove it.
   - Ensure the list is correctly returned after any additions or removals.
   - Make sure your methods are just returning values and not reading input from the console.
   - All methods within the program class should be `static public` 

## Unit Tests with Xunit
*Write a test case using Xunit to verify that the method works as expected.*
- Test if the user can successfully add a new contact to the list.
- Test if the user can successfully remove a contact from the list.
- Test if the user can view all contacts.
- Test if the app rejects adding a contact with the same name as an existing one.

## Stretch Goals
- Add Search for a contact by name, Contact details if found, otherwise a not found message
- Allow users to categorize contacts (e.g., family, friends, work).

```
Contact-Manager/
|── ContactManagerTests/       (4.5 marks)
├── ContactManager/
│   ├── Program.cs             (4.5 marks)
└── README.md                  (1 mark)
```
## To Submit this Assignment
1. Create a new repo on your personal GitHub account
2. Name your repo `Contact-Manager`
3. Create a branch named `CManager`
4. Solve your Lab, following the Program Specifications section.
5. Include a `README.md` file with the necessary content.
6. Push your changes to your GitHub repository.
7. Create a pull request from your branch to the main branch.
8. Submit a link of your pull request in the submission field.
