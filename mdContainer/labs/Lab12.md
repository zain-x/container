# Lab 12: Tunify Platform - Repo Integration

## Overview

This lab extends the previous Tunify Platform lab by integrating the Repository Design Pattern. You'll learn to create repositories that encapsulate data access logic, making your application more modular and testable.

By the end of this lab, you'll have:
1. Defined repository interfaces and their implementations.
2. Integrated repositories into your application to manage data access.
3. Refactored your controllers to use repositories instead of `DbContext` directly.

## Application Setup

### Initial Configuration (If not completed in the previous lab)

1. Install the following NuGet packages (if not already installed):
   - `Microsoft.EntityFrameworkCore.SqlServer v7.0.20`
   - `Microsoft.EntityFrameworkCore.Tools v7.0.20`
   - `Microsoft.VisualStudio.Web.CodeGeneration.Design v7.0.12`

2. Register your DbContext in the `ConfigureServices` method of your `Startup` class.

3. Add your connection string to the `appsettings.json` file.
```csharp

  "ConnectionStrings": {
    "DefaultConnection": "Server=(localdb)\\MSSQLLocalDB;Database=TunifyDB;Trusted_Connection=true;TrustServerCertificate=True;MultipleActiveResultSets=true"
  },
```

### Implementing the Repository Pattern
- Ensure all tables from your previous lab reflect your ERD with all the needed migrations.

1. Create a new folder named `Controllers` to organize all your controller classes then generate controller for (Users - Playlist - Song - Artist).
Note: Ensure that controllers are created for each of these entities and are ready to be refactored to use repositories. Verify that you are not duplicating existing controllers from Lab 11.

2. Create a new folder named `Repositories` then create two subfolders `interfaces` and `Services` to hold your repository interfaces and implementations (Services folder).

3. Define interfaces `IEntityName` in the `Repositories/Interfaces` folder. Each interface should declare the necessary methods for the respective entity ( Users - Playlist - Song - Artist ), Each interface should declare methods specific to the entity, including CRUD operations and any additional methods relevant to the entity’s functionality

4. Implement service classes in the `Repositories/Services` folder. Each service class should implement its respective interface, providing implementations for the methods defined in the interface. Ensure that all necessary CRUD operations and any additional business logic are correctly implemented.

5. Refactor your controllers to use the repository pattern by replacing direct `DbContext` calls with calls to the repository methods. Ensure that each controller receives its repository through constructor injection, allowing the controller to interact with the data access layer via the repository.

6. Register Controllers and repositories in the `ConfigureServices` method of your `Program.cs` class.

```csharp
builder.services.AddScoped<IRepository, RelatedService>();
or 
builder.Services.AddTransient<IRepository , RelatedService>()
```
### Final Steps
- Ensure all repositories are implemented correctly and the controllers are refactored to use them.
- Update your `README.md` file with a section on the Repository Pattern and how it improves data access in your application.

### README
- Update your Lab 11 `README.md` with the following:
  - A section explaining the Repository Design Pattern and its benefits.

## How To Submit this Lab
1. Create a new branch named `RepositoryPattern` on your existing `Tunify-Platform` GitHub repository.
2. Complete the lab tasks by following the updated specifications.
3. Update the `README.md` file with the new content.
4. Push your changes to your GitHub repository.
5. Create a pull request from the `RepositoryPattern` branch to the main branch.
6. Submit a link to your pull request in the submission field.
