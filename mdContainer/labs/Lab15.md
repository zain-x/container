# Lab 15: Tunify Platform - Identity Implementation

## Overview
In this lab, you will extend the Tunify Platform by implementing authentication functionalities using Identity. This includes enabling user registration, login, and logout features in your web application.

By the end of this lab, you’ll:
1. Set up Identity in the Tunify Platform.
2. Implement user registration, login, and logout functionalities.

## Application Setup
- Open NuGet Package Manager and install the necessary ASP.NET Core Identity package:
```csharp
Microsoft.AspNetCore.Identity.EntityFrameworkCore
```

### 1. Configure Identity
   - Configure the services in `Program.cs` to use Identity by adding the following in the service configuration section ( under AddDbContext ):
     ```csharp
     builder.Services.AddIdentity<IdentityUser, IdentityRole>()
         .AddEntityFrameworkStores<TunifyDbContext>();
     ```

2.  In the middleware configuration section of `Program.cs`, add the following:
     ```csharp
     app.UseAuthentication();
     ```

### 2. Implementing Registration, Login, and Logout
1. Inside `Interfaces` and `Services` folder:
- Define an interface `IAccount` for account related operations and implement a service `IdentityAccountService` class that uses Identity functionality to manage user accounts and configure the service in Program.cs using AddScoped method.

2. Add a new controller named `AccountController` to handle user registration, login, and logout functionalities.

3. Use DTOs:
- Create a `RegisterDto` class to represent the data needed for user registration.
- Create a `LoginDto` class to handle the data required for user login.
- Ensure that the Register and Login actions in your controller use these DTOs for input validation and processing.

4. Create a Register action in the `AccountController` to handle user registration. This action should accept user details through the `RegisterDto` and create a new user using Identity.

5. Create a Login action that authenticates the user based on their credentials from the `LoginDto`.

6. Add a `Logout` action to sign out the user and clear the authentication cookie.

- Note: Use error handling mechanisms to catch exceptions and provide feedback to the user. Consider logging errors for troubleshooting purposes.

### README
- Update your Lab 14 `README.md` with the following:
  - A section explaining the Identity setup with instructions on how to use the registration, login, and logout features.

## How To Submit this Lab
1. Create a new branch named `Identity` on your existing `Tunify-Platform` GitHub repository.
2. Complete the lab tasks as per the updated specifications.
3. Update the `README.md` file with the new content.
4. Push your changes to your GitHub repository.
5. Create a pull request from the `Identity` branch to the main branch.
6. Submit a link to your pull request in the submission field.
