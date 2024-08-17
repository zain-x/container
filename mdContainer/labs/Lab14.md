# Lab 14: Tunify Platform - Swagger UI

## Overview
In this lab, you will continue working on the Tunify Platform by adding API documentation using Swagger UI. Swagger will help you automatically generate and visualize the API's documentation, making it easier to understand and test your API endpoints.

By the end of this lab, you'll:
1. Set up Swagger UI using Swashbuckle.AspNetCore.
2. Configure Swagger to document all the existing API endpoints created in Lab 13.
3. Customize the Swagger UI to reflect the Tunify Platform's branding.

## Application Setup
- Ensure that you have completed Lab 13, where you implemented navigation and routing between `Playlist` and `Song`, and `Artist` and `Song`.

### 1. Install Swashbuckle.AspNetCore
1. Open the NuGet Package Manager Console.
2. Run the following command to install the Swashbuckle.AspNetCore package:
    ```powershell
    Install-Package Swashbuckle.AspNetCore
    ```

### 2. Configure Swagger in the Startup Class
1. Add Swagger Services:
   In the `Program.cs` or `Startup.cs` file, add Swagger services to the `IServiceCollection`:
    ```csharp
    builder.Services.AddSwaggerGen(options =>
    {
        options.SwaggerDoc("v1", new Microsoft.OpenApi.Models.OpenApiInfo
        {
            Title = "Tunify API",
            Version = "v1",
            Description = "API for managing playlists, songs, and artists in the Tunify Platform"
        });
    });
    ```

2. Enable Swagger Middleware:
   Add the following method to enable Swagger and Swagger UI in the `Startup` class:
    ```csharp
    app.UseSwagger(
                 options =>
                {
                    options.RouteTemplate = "api/{documentName}/swagger.json";
                }
    );


    app.UseSwaggerUI(options =>
    {
        options.SwaggerEndpoint("/swagger/v1/swagger.json", "Tunify API v1");
        options.RoutePrefix = "";
    });
    ```


### 3. Test Your Swagger UI
1. Launch the application and navigate to the root URL to view the Swagger UI.
2. Use the Swagger UI to interact with your API endpoints, test functionality, and ensure that everything is documented correctly.

## README
- Update your Lab 13 `README.md` with the following:
  - A section explaining the addition of Swagger UI.
  - Instructions on how to access and use the Swagger UI.

## How To Submit this Lab
1. Create a new branch named `SwaggerUI` on your existing `Tunify-Platform` GitHub repository.
2. Complete the lab tasks by following the updated specifications.
3. Update the `README.md` file with the new content.
4. Push your changes to your GitHub repository.
5. Create a pull request from the `SwaggerUI` branch to the main branch.
6. Submit a link to your pull request in the submission field.
