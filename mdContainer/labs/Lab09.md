# Lab 09: RentalFlix ERD


## Overview
- Design an Entity-Relationship Diagram (ERD) for a movie rental service, capturing the key entities and relationships required to manage the service efficiently.

## Problem Domain
You have been tasked with creating a web-based API for a movie rental service. The service, named "RentalFlix", aims to replace its outdated system of tracking movies, customers, and rentals with a digital solution. The service needs to efficiently manage its movie inventory, customer information, and rental records, ensuring a seamless experience for both staff and customers.

## Application Specifications
### Requirements
1. **Movies:**
   - Each movie has a unique identifier (MovieID), title, genre, director, release year, and rating.
   - Movies are available in multiple formats (DVD, Blu-ray, Digital).
   - Each format of a movie has a unique identifier and may have different quantities available.

2. **Customers:**
   - Each customer has a unique CustomerID, name, address, phone number, and email.
   - Customers can rent multiple movies but must return them within a specified period.

3. **Rentals:**
   - A record of each rental must be kept, including the customer who rented the movie, the movie format rented, the rental date, and the due date.
   - The system should also track the return date when a movie is returned.

4. **Reservations:**
   - Customers can reserve movies that are currently rented out by others.
   - A reservation record includes the customer ID, movie ID, reservation date, and the status of the reservation (active, fulfilled, canceled).

### ERD Components
- **Movie:** Stores information about movies available for rent.
- **MovieFormat:** Stores information about the different formats of each movie.
- **Customer:** Stores information about customers.
- **Rental:** Tracks which customers have rented which movie formats and when.
- **Reservation:** Tracks which customers have reserved which movies and the status of these reservations.

### Relationships
- Each movie can have multiple formats (1:Many).
- Each customer can have multiple rentals (1:Many).
- Each rental record is associated with one customer and one movie format (Many:1).
- Each movie can have multiple reservations (1:Many).
- Each reservation is associated with one customer and one movie (Many:1).

## Explanation of Tables
### Movie
- **MovieID (PK):** Unique identifier for each movie.
- **Title:** Title of the movie.
- **Genre:** Genre or category of the movie.
- **Director:** Director of the movie.
- **ReleaseYear:** Year the movie was released.
- **Rating:** Movie rating (e.g., PG, PG-13, R).

### MovieFormat
- **FormatID (PK):** Unique identifier for each movie format.
- **MovieID (FK):** Identifier of the movie.
- **FormatType:** Type of format (DVD, Blu-ray, Digital).
- **QuantityAvailable:** Number of copies available for rent.

### Customer
- **CustomerID (PK):** Unique identifier for each customer.
- **Name:** Name of the customer.
- **Address:** Address of the customer.
- **Phone:** Contact phone number.
- **Email:** Contact email address.

### Rental
- **RentalID (PK):** Unique identifier for each rental record.
- **CustomerID (FK):** ID of the customer who rented the movie.
- **FormatID (FK):** ID of the movie format that was rented.
- **RentalDate:** Date when the movie was rented.
- **DueDate:** Date when the movie is due to be returned.
- **ReturnDate:** Date when the movie was returned (nullable).

### Reservation
- **ReservationID (PK):** Unique identifier for each reservation.
- **CustomerID (FK):** ID of the customer who reserved the movie.
- **MovieID (FK):** ID of the reserved movie.
- **ReservationDate:** Date when the reservation was made.
- **Status:** Status of the reservation (active, fulfilled, canceled).


## Submission Instructions
1. Create a new repository on your personal GitHub account.
2. Name your repo `RentalFlix`.
3. Create a branch named `RentalFlixErd`.
4. Solve your Lab, following the Program Specifications section.
5. Include a `README.md` file with the necessary content.
6. Include the ERD diagram image with your explanation.
7. Push your changes to your GitHub repository.
8. Create a pull request from your branch to the main branch.
9. Submit a link to your pull request in the submission field.
