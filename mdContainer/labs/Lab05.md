# Lab 05: Daily Diary
<img src="https://i.gifer.com/96Be.gif" alt="Example Image" width="250"/>

## The Problem Domain
- Create a console application that allows users to manipulate a daily diary text file using C# file manipulation techniques.

## Program Specifications
- Build a console application that enables users to perform various tasks related to managing a daily diary text file. The solution should include the following components:

1. `Main` method
   - Entry point of the application.
   - Call the DailyDiary() method to enable the application functionality.

2. `DailyDiary` class
   - Contains methods for reading from, writing to, and manipulating the daily diary text file
   - Methods should include functionalities as:
     - Reading the content of the diary file.
     - Adding entries to the diary.
     - Deleting specific entries from the diary.
     - Counting the total number of entries in the diary.
     - Searching for entries based on specific criteria (e.g., date, keyword). ( stretch goal )


3. `Entry` class
   - Represents a single entry in the diary with properties for date and content

### Tasks:
1. Implement a method to read the content of the existing diary file.
2. Allow users to add new entries to the diary, including specifying the date and content.
3. Provide an option to delete specific entries from the diary based on user input.
4. Count the total number of entries in the diary and display it to the user.
5. Implement a method in the DailyDiary class to read entries for a specific date from the diary file.
```
 Console.WriteLine("Enter the date (YYYY-MM-DD) to retrieve data:");
 you might need to try parsing the date using out?? who knows!!
```
### Error Handling:
- Handle exceptions that may occur during file manipulation operations (e.g., file not found, app crash, etc).
- Validate user input to ensure it meets the required format.

## Stretch Goals
- Implement a search feature that enables users to find entries based on date or keyword within the content.

### Unit Tests with Xunit:
- Write test cases using Xunit to verify the following:
- Test the ReadDiaryFile method of the DailyDiary class. Ensure that it successfully reads the content of the daily diary text file.
- Test the AddEntry method of the DiaryManager class. Verify that adding a new entry increases the total count of entries in the diary.


## Lab Structure
```
Daily-Diary-Manager/
|── DiaryManagerTests/ (2)
├── DiaryManager/
│ ├── Program.cs (2 marks)
│ ├── DailyDiary.cs (4 marks)
│ ├── Entry.cs (1 marks)
└── README.md (1 mark)
```

## To Submit this Assignment
1. Create a new repository on your personal GitHub account.
2. Name your repository `Daily-Diary`.
3. Create a branch named `DiaryManager`.
4. Implement the lab according to the Program Specifications section.
5. Include a `README.md` file with instructions on how to use the application.
6. Push your changes to your GitHub repository.
7. Create a pull request from your branch to the main branch.
8. Submit a link to your pull request in the submission field.
