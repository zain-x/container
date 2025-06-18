# **Lab 05: Flavor Table**

---

## **Overview**

Create a recipe app called **Flavor Table** that allows users to find recipes based on ingredients using the Spoonacular API.  
This lab introduces API keys, query parameters, Axios requests, and secure environment variable management.

---

## **Problem Domain**

Build a node.js server to fetch real recipe data, search based on user input, and handle API communication securely.  
The app will use **frontend JavaScript** (`app.js`) to fetch data asynchronously from backend API routes, providing a smooth user experience.

---

## **Requirements**

### 1. API Setup

- Register on [Spoonacular API](https://spoonacular.com/food-api).
- Obtain a free API Key.
- Store the API key in a `.env` file securely.

### 2. Project Setup

- Create a GitHub repository for the project named `Flavor-Table`.
- Initialize project with `npm init -y`.
- Install dependencies:  
  `npm install express axios dotenv cors`

- Create and work on a new branch named `Flavor-Table-Lab`.

### 3. Project Structure

```javascript
Flavor-Table
├── node_modules/
├── public/
│ ├── index.html # Main Flavor Table HTML page
│ ├── styles.css
│ └── app.js # handle search and fetch results asynchronously
├── routes/
│ ├── home.js # render index.html page from public folder
│ └── recipes.js # Handles recipe API routes ( searching , random recipes ... )
├── .env
├── .env.example
├── .gitignore
├── package-lock.json
├── package.json
├── README.md # Explain the project and how to run it
└── server.js # Handles server setup and routes
```

## **Build Server Routes**

### a) Home Endpoint (`/`)

- Return flavor table HTML page with navigation links and background image.

---

### b) Random Recipe Page (`/recipes/search`)

- Fetch a random recipe using Spoonacular’s API (check the API Docs) from the resources section below.
- Return simplified JSON with the following fields:
  - `title`
  - `image`
  - `instructions`
  - `ingredients`

---

### c) Search Recipes by Ingredients (`recipes/random`)

- Accept a query parameter `ingredients` with comma-separated values.
- Use Axios to fetch recipes from Spoonacular’s API (check the API Docs) from the resources section below.
- Return simplified JSON with the following fields:
  - `title`
  - `image`
  - `usedIngredients` (array of ingredient names used from the query)
  - `missedIngredients` (array of ingredient names missing from the query)

---

## **Frontend Features**

### a) **Search Recipes by Ingredients**

- Users can search for recipes by entering ingredients in the search bar. // example: "chicken, rice, tomato"

---

### b) **Random Recipe Page**

- Add a button labeled "Random Recipe" that triggers a fetch request to the `/recipes/random` endpoint.
- Fetch and display a random recipe with its instructions and ingredients.

---

### c) **Save Favorite Recipes**

- Add a "Save to Favorites" button on each recipe card.
- Save the recipe to `localStorage`.
- Navigate to the Favorites page to view all saved recipes.

---

### d) **Favorites Page**

- Display a list of favorite recipes stored in `localStorage`.
- Add a "Remove" button to delete recipes from the favorites list.

---

### e) Navigation Bar

- Add a navigation bar to switch between:
  - Search Recipes
  - Generate Random Recipe
  - Favorites

---

### f) **Styling**

- Apply CSS styling to make the app look nice.
- Use Google Fonts for a nice font.
- Use a background image relevant to food or cooking.

---

## **Error Handling**

- Handle errors when API requests fail.
- Handle Empty search results.

---

## **Bonus Task ( +1 Mark | Optional )**

### **Recipe Details Page**
Implement a detailed recipe view:
1. **New Route**  
   `/recipes/:id` - Fetche recipe details using this api [`/recipes/{id}/information`](https://spoonacular.com/food-api/docs#Get-Recipe-Information)

2. **Features**  
   - Add "View Details" button to cards  
   - Show:  
     - Recipe Image (`image`)  
     - Recipe Title (`title`)
     - Summary (`summary`) 
     - Cooking time (`readyInMinutes`)  
 

3. **Display**  
   Use either via modal view ( search for it ) or in a new page

---

## **Submission Instructions**

1. Push your work to the `Flavor-Table-Lab` branch.
2. Create a pull request for the branch.
3. Merge the `Flavor-Table-Lab` branch into the main branch.
4. Deploy the project to GitHub Pages and include the live link in the README.md file.
5. Add the following questions to the README.md:
   - How many hours did it take you to complete this assignment?
   - Were there any parts of the lab you found challenging?
6. Submit the pull request link for your GitHub repository.

## **Resources**

- [API Docs](https://spoonacular.com/food-api/docs)
- [Axios Docs](https://axios-http.com/docs/intro)
- [Express Docs](https://expressjs.com/)
- [Dotenv Docs](https://github.com/motdotla/dotenv)
