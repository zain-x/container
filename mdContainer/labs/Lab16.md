# Lab 16: Tunify Platform - Authorization and Claims

## Overview
In this lab, you will extend the Tunify Platform by implementing JWT-based authentication and authorization. This includes securing your API endpoints, handling user roles and claims, and ensuring that only authorized users can access certain features.

By the end of this lab, you’ll:
1. Implement JWT-based authentication in the Tunify Platform.
2. Secure API endpoints based on user roles and claims.
3. Handle authorization using claims and roles.

## Application Setup
- Open NuGet Package Manager and install the necessary ASP.NET Core Identity package:
```csharp
  Microsoft.AspNetCore.Authentication.JwtBearer
```
- Set up JWT authentication in `Program.cs` by adding the following code in the service configuration section:
```csharp
builder.Services.AddAuthentication(
    options =>
    {
        options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
        options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
        options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
    }
).AddJwtBearer(
    options =>
    {
        options.TokenValidationParameters = JwtTokenService.ValidateToken(builder.Configuration);
    }
);

```

- In the middleware configuration section of `Program.cs`, add the following:
     ```csharp
     app.UseAuthentication();
     app.UseAuthentication();
     ```

1. Configure JWT Authentication
   - Set up JWT authentication in `Program.cs` by configuring the JWT bearer options.
   - In the middleware configuration section, add the necessary authentication and authorization middleware.

2. Create Repository Interfaces and Services:
   - Extend your `IAccount` interface to include a method for generating JWT tokens and implement the method inside `IdentityAccountService`. 
   - Implement the `JwtTokenService` to handle token creation, validation, and claims.

3. Update the `AccountController`:
   - Modify the `Login` action to generate and return a JWT token upon successful authentication and include the token in the response.
   - Ensure that the token includes necessary claims, such as the user's roles and any custom claims.

4. Securing API Endpoints
   - Secure specific API endpoints in your controllers using `[Authorize]` attributes.
   - Use role-based and policy-based authorization where necessary, ensuring that only users with the correct roles or claims can access certain endpoints.

5. Handle Claims and Roles and migrations:
   - Define roles and claims in your application, ensuring they are correctly assigned to users.
   - Implement logic to handle user roles and claims within your authorization policies. 
   - In your `TunifyDbContext`, override the `OnModelCreating` method to seed initial roles and a default admin user with appropriate claims.
   - Ensure the migration is successful and that the roles and users are correctly seeded into the database.
   - Ensure that the Admin and users are correctly seeded into the database and assigned to their roles  and claims.

### README
- Update your Lab 15 `README.md` to include:
  - Instructions on setting up JWT-based authentication.
  - Details on how to secure API endpoints and manage roles and claims.

## How To Submit this Lab
1. Create a new branch named `Authorization-and-Claims` on your existing `Tunify-Platform` GitHub repository.
2. Complete the lab tasks as per the updated specifications.
3. Update the `README.md` file with the new content.
4. Push your changes to your GitHub repository.
5. Create a pull request from the `Authorization-and-Claims` branch to the main branch.
6. Submit a link to your pull request in the submission field.
