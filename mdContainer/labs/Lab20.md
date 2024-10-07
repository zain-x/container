# Lab 20: Event Registration System

## Overview

In this lab, you will create an **Event Registration System** using ASP.NET Core MVC, By adding email notifications via Mailjet. This system will allow users to register for events and receive confirmation emails.

- By the end of this lab, you'll:

1. Build an MVC-based ASP.NET Core project for event registration.
2. Implement CRUD operations for managing events and registrations.
3. Integrate Mailjet for sending confirmation emails to registered participants.
4. Use Entity Framework Core for data management and SQL Server for database storage.
5. Implement forms with validation for event creation and registration.

## Application Setup

1. Create a new `ASP.NET Core MVC Web App` project for the Event Registration System.
2. Set up your database connection using SQL Server.
3. From NuGet Manager add the following packages:

```csharp
Microsoft.EntityFrameworkCore.SqlServer
Microsoft.EntityFrameworkCore.Tools
Microsoft.AspNetCore.Mvc.Razor.RuntimeCompilation
Microsoft.EntityFrameworkCore.Design
Mailjet.Api (v3.0.0)
```

```csharp
 string ConnectionString = builder.Configuration.GetConnectionString("DefaultConnection")!;

 builder.Services.AddDbContext<DBContext>(options => options.UseSqlServer(ConnectionString));
```

## Tasks

1. **Create the Event and Registration Models**

   - Create **Event** model with properties: Title, Date, Description, Capacity.
   - Create a **Registration** model with properties: ParticipantName, Email, EventId.
   - Apply necessary validation attributes to ensure proper data validation.

2. **Set Up the Database Context**

   - Create a Dbcontext to manage events and registrations in the application.
   - Register the Dbcontext in your application's service configuration.

3. **Implement the Email Service**

   - Create an `EmailService` class that uses Mailjet to send emails.
   - Implement a method to send confirmation emails to registered participants.

4. **Choose Event Management Approach**:

- You have the option to choose 1 of the following approaches to manage events:

- **Option 1: Implement CRUD Operations**:

  - Create an `EventsController` to allow event organizers to create, read, update, and delete events.
  - Implement Razor views for listing events, showing event details, creating, and editing events.
  - Add forms with validation for event creation and editing.

- **Option 2: Use Database Seeding**:
  - Seed the database with a predefined list of events.
  - Use the `OnModelCreating` method in your `DbContext` to add initial events.

5. **Create Views**

- Implement Razor views for participant registration:

  - Create Razor views for listing events and displaying event details.
  - Create registration forms with validation for participants to register for events.

- If you choose Option 1: Implement CRUD Operations:
  - Implement additional Razor views for event management:
  - Create views for creating and deleting events.

6. Create **RegistrationsController**

- Create a `RegistrationsController` to handle participant registrations, including storing participant data and triggering email notifications.
- Implement a form for users to register for events and validate the input data.

7. **Implement Registration Process**

   - In the `RegistrationsController`, create an action to handle registration submissions.
   - Use the `EmailService` to send a confirmation email.

8. **Configure Mailjet**
   - Add Mailjet API credentials to your `appsettings.json`.
   - Implement a method to send emails using Mailjet in your `EmailService`.

```json
"Mailjet": {
  "ApiKey": "your_mailjet_api_key",
  "SecretKey": "your_mailjet_secret_key"
}
```

## README

- Your **README.md** file should include:
  - Instructions on setting up the Event Registration System project.
  - Steps to configure Mailjet integration.
  - Details on how to run the application and test the registration and email functionality.

## How To Submit this Lab

1. Create a new branch named `EventRegistration` on your GitHub repository.
2. Complete the lab tasks as per the requirements above.
3. Update the `README.md` file with the necessary content.
4. Push your changes to your GitHub repository.
5. Create a pull request from the `EventRegistration` branch to the main branch.
6. Submit a link to your pull request in the submission field.
