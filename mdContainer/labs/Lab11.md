# Lab 11: Tunify Platform

## Overview

This lab aims to guide you through integrating your database tables into your Tunify Platform web application using Markdown. By the end of this lab, you'll have a fully functional database integrated with your application, reflecting the entities and relationships defined in your ERD.

The lab is structured to assist you in:

1. Creating and applying migration scripts for your database.
2. Defining the shape of each database table through models.
3. Seeding initial data into your tables.

Follow the steps closely and observe how the data evolves as you proceed.

## Application Setup

### Initial Configuration

1. Create a new Empty .NET Core Web Application.

2. Install the following NuGet packages:
   - `Microsoft.EntityFrameworkCore.SqlServer v7.0.19`
   - `Microsoft.EntityFrameworkCore.Tools v7.0.19`
   - `Microsoft.VisualStudio.Web.CodeGeneration.Design v7.0.12`

3. Register your DbContext in the `ConfigureServices` method of your `Startup` class:

4. Add your connection string to the appsettings.json file
```csharp

  "ConnectionStrings": {
    "DefaultConnection": "Server=(localdb)\\MSSQLLocalDB;Database=TunifyDB;Trusted_Connection=true;TrustServerCertificate=True;MultipleActiveResultSets=true"
  },
```
### Defining Models & Setting Up the Database
1. Create a new folder named Models. This folder will contain the entities as defined in your ERD.

2. Create a User model with the properties defined in your ERD. Initially, skip adding navigation properties.

3. Create another folder named Data and add a new file TunifyDbContext.cs. This class will derive from DbContext and include a constructor that accepts `DbContextOptions<TunifyDbContext>` as a parameter.

4. With the DbContext and the first model in place, create a migration to generate the script for creating the Users table:

- Using the Terminal: `dotnet ef migrations add CreateUsersTable`
- Using the Package Manager Console: `Add-Migration CreateUsersTable`

5. Apply the migration to your database:

- Using the Terminal: `dotnet ef database update`
- Using the Package Manager Console: `Update-Database`

6. Verify that the Users table has been successfully created in your local database.

### Adding More Models
1. Add additional model classes in the Models folder: `Subscription`, `Playlist`, `Song`, `Artist`, `Album`, and `PlaylistSongs`.

2. Define the properties for each model according to your ERD, excluding navigation properties for now.

3. Update the `TunifyDbContext` file to include DbSet properties for the new models

- example:
```csharp
public DbSet<Song> Songs { get; set; }
```

4. Create a new migration to include the creation of the new tables:

- Using the Terminal: `dotnet ef migrations add CreateMusicTables`
- Using the Package Manager Console: `Add-Migration CreateMusicTables`

5. Apply the migration to add the new tables to your database:

- Using the Terminal: `dotnet ef database update`
- Using the Package Manager Console: `Update-Database`

6. Confirm that all the new tables have been successfully created in your database.

### Seeding Initial Data
1. Override the OnModelCreating method in your `TunifyDbContext` to seed initial data for `User` and `Song` and `Playlist`. Add default entries for each model:

```csharp
protected override void OnModelCreating(ModelBuilder modelBuilder)
{
    // example
    modelBuilder.Entity<User>().HasData(
        // Seeded Data
    );

}
```

2. Create a new migration to include the seed data:

- Using the Terminal: `dotnet ef migrations add SeedInitialData`
- Using the Package Manager Console: `Add-Migration SeedInitialData`

3. Apply the migration to seed the data into the tables:

- Using the Terminal: `dotnet ef database update`
- Using the Package Manager Console: `Update-Database`

4. Confirm that the initial data has been successfully seeded into your database.

### Final Steps
- Ensure that your database and models are correctly set up and seeded with initial data.
- Update your README.md file to include an introduction to your web app, your ERD diagram, and an overview of the relationships between entities.

### Readme
- Your Readme should include the following:
1. A brief description of Tunify Platform.
2. The Tunify ERD Diagram.
3. An overview of the relationships and how each entity is related to another.

## How To Submit this Lab
1. Create a new repository on your personal GitHub account.
2. Name your repository `Tunify-Platform`.
3. Create a branch named `Tunify`.
4. Solve your Lab, following the Program Specifications section.
5. Include a `README.md` file with the necessary content.
6. Push your changes to your GitHub repository.
7. Create a pull request from your branch to the main branch.
8. Submit a link to your pull request in the submission field.