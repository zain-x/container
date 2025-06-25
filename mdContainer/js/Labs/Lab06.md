# Lab 06: Flavor Table 2

---

## **Overview**

Expand the **Flavor Table** app to integrate PostgreSQL for storing and managing recipe data. You will implement CRUD (Read, Update, Delete) operations and connect the Node.js server to a local PostgreSQL database.

---

## **Problem Domain**

Modify the previous **Flavor Table** app to:

1. Replace localStorage with a PostgreSQL database for storing recipes.
2. Implement CRUD operations to update, delete, and retrieve all recipes.
3. Update the app in general to interact with the PostgreSQL database.

---

## **Requirements**

### 1. PostgreSQL Setup

- Since you have PostgreSQL installed on your local machine. run the following command `sqlstart` to start the server.
- Create a database named `flavor_table`.
- Create a table `recipes` with the following schema:

```sql
`id` (serial primary key)
`title` (varchar)
`image` (text)
`instructions` (text)
`ingredients` (jsonb) # Array of strings
`readyIn` (integer)
```

---

## **Project Setup**

1. Use the same GitHub repository as Flavor Table.

2. Create a new branch "Flavor-Table-CRUD"

3. Add environment variables for database connection credentials in .env:

```bash
DATABASE_URL=postgresql://username:pass@localhost:5432/dbname
```

4. Install and use the new dependencies:

- dependencies: `npm install pg` (for PostgreSQL)
- `require('pg')` to connect to the database.
- use `express.json()` to parse JSON data in the request body.
- use pool to create a connection pool for the database.
- update the `server.js` file to connect to the PostgreSQL database.

```javascript
const pool = new pg.Pool({ connectionString: process.env.DATABASE_URL });

pool
  .connect()
  .then(() => {
    app.listen(PORT, () => console.log(`App is listening on port ${PORT}`));
  })
  .catch((err) => {
    console.error("Could not connect to database:", err);
  });
```

## **Requirements**

- Create and work on a new branch named `Flavor-Table-CRUD`.

### 3. Project Structure

```javascript
Flavor-Table2
├── node_modules/
├── public/
│ ├── index.html
│ ├── favorites.html  # new postgres favorites page
│ ├── randomRecipes.html
 | ├── editRecipe.html  # (Optional: Separate page for editing recipes)
│ ├── styles.css
│ └── app.js  # update to use PostgreSQL instead of localStorage
├── routes/
│ ├── home.js
│ └── recipes.js # Update to include CRUD routes for PostgreSQL
├── .env
├── .env.example
├── .gitignore
├── package-lock.json
├── package.json
├── README.md
└── server.js # Connect the server to the database (using pg)
```

---

## **Frontend Features**

### **Update `randomRecipes.html` and `favorites.html` and `index.html` page or any page that renders recipes to use the new PostgreSQL database to store and retrieve recipes.**

1. **Objective**  
   Replace the `localStorage` functionality on the `favorites.html` page with PostgreSQL as the data storage solution.

2. **Tasks**

   - Fetch favorite recipes from the PostgreSQL database via an `axios` GET request to the `/api/recipes/all` endpoint.
   - Display the retrieved recipes on the `favorites.html` page.
   - Add `Update` button for each recipe and a form `<form id="updateForm">` to update the recipe details. ( or you can use a modal or a separate page for editing) // search for it
   - Add `Delete` buttons for each recipe.
   - **Note:** Leave the `update` functionality until the end, as it is the main part of the lab.

3. **Additional Notes**
   - Implement `axios` calls to interact with the PostgreSQL database:
   - **GET** `/api/recipes/` to retrieve and display all favorite recipes.
   - **PUT** `/api/recipes/:id` when the "Edit" button is clicked and form submission occurs.
   - **DELETE** `/api/recipes/:id` when the "Delete" button is clicked.
   - Use `postman` to test the API endpoints and ensure they work as expected.

---

## **Error Handling**

- Implement error handling and `try...catch` for database operations.

---

## **Submission Instructions**

1. Push your work to the `Flavor-Table-CRUD` branch.
2. Create a pull request for the branch.
3. Merge the `Flavor-Table-CRUD` branch into the main branch.
4. Add the following questions to the README.md:
   - How many hours did it take you to complete this assignment?
   - Were there any parts of the lab you found challenging?
5. Submit the pull request link for your GitHub repository.

## **Resources**

- Check the demo code from the previous lecture: [Postgres & CRUD](https://github.com/omarXzain/javascript-demos/tree/main/node_PSQL_CRUD_demo)
- [API Docs](https://spoonacular.com/food-api/docs)
- [pg Documentation](https://node-postgres.com/)
- [PostgreSQL SQL Commands](https://www.postgresql.org/docs/current/sql-commands.html)
- [RESTful API Design](https://restfulapi.net/)
