# Lab 08: Magic Land Explorer

## Problem Domain

Create a console application that simulates exploring various destinations within Magic Land. The application will read data from an external JSON file containing information about different destinations, rides, shows, and dining options in the park. Users should be able to interactively explore the available categories and destinations and view details about specific features using LINQ queries and delegates.

## Program Specifications

Your solution should include the following:
- Read the provided JSON file containing data about Magic Land destinations and features.
- Parse the JSON data into in your program.
- Utilize LINQ queries and Lambda expressions (when possible) to perform data manipulation and filtering.
- Provide an interactive console interface that allows users to see the results for each LINQ Query tasks.
  - example: 1- show diltered destinations
             2- show longest duration
             3- Sort destinations by Name
             4- show top 3 durtion
- Use delegates to handle user interactions and display information.
- Use meaningful variable names and comments to improve code readability.
- Ensure error handling for cases such as invalid user inputs or missing data if needed.

## Step-by-Step Instructions

### Step 1: Project Setup

1. **Create the Project Structure**:
   - Create a new C# console application.
   - Add necessary files: `Category.cs`, `Destination.cs`.
   - Add the provided JSON file to a `data` folder within the project.

2. **Install Newtonsoft.Json**:
   - in your Magic Land project, Go to:
   - Tools > NuGet Package Manager > Package Manager Console.
   - Install the Newtonsoft.Json package by running:

   ```csharp
   Install-Package Newtonsoft.Json

   OR
   
   dotnet add package Newtonsoft.Json
   ```
   
### Example Code

- **Reading JSON Data:**
  ```csharp
  // Example code to read JSON data using Newtonsoft.Json
  string json = File.ReadAllText("data.json");
  List<Category> categories = JsonConvert.DeserializeObject<List<Category>>(json);
  ```

### Step 2: Define Classes for JSON Data
- Create the Destination class: Define properties for Name, Type, Location, Duration, and Description.
- Create the Category class: Define properties for CategoryName and a list of Destination objects.

### Step 3: LINQ Query Tasks
- Find all destinations name with a duration less than 100 minutes.
- Write a LINQ query to find and display name of the destination with the longest duration among all categories.
- Sort destinations alphabetically by their name.
- Find the top three longest-duration destinations and show their names and durations.

### Lab Structure
Your lab should be structured as follows:
```
MagicLandExplorer/
│── Program.cs                 
│── Destination.cs             (1.5 Mark)
│── Category.cs                (1 Mark)
│── Tasks/
│   ├── FilterDestinations.cs  (1.5 Mark)
│   ├── LongestDuration.cs     (1.5 Mark)
│   ├── SortByName.cs          (1.5 Mark)
│   └── Top3Duration.cs        (1.5 Mark)
└── data/
│    └── MagicLandData.json
└── README.md                  (1 Mark)

```
### Unit Tests
- No tests are required for this lab.

### Stretch Goals
- Find and list all categories that have "Fantasyland" as a shared location.

### Console output
- check the slack Channel for the lab output.

## How To Submit this Lab
1. Create a new repository on your personal GitHub account.
2. Name your repository `Magic-Land-Explorer`.
3. Create a branch named `MagicLand`.
4. Solve your Lab, following the Program Specifications section.
5. Include a `README.md` file with the necessary content.
6. Push your changes to your GitHub repository.
7. Create a pull request from your branch to the main branch.
8. Submit a link to your pull request in the submission field.


