# Lab 07: Flavor Table 3 – Deployment

---

## Overview

In this lab, you will enhance your Flavor Table app by adding user authentication (register/login) and deploying your backend server to host it on Render.
You will also update the database schema to support users and protect specific API routes.

---

## Problem Domain

Extend the existing Flavor Table app with the following features:

- Implement user registration and login functionality using email and password.
- Secure specific routes so that only authenticated users can access them.
- Deploy the backend server (Node.js + PostgreSQL) to Render.com.
- Test all endpoints using Postman.

---

## Requirements

### 1. Backend Authentication

- Create a new branch: `Flavor-Table-Deployment`.
- Add a `users` table to the database.
- Use `bcrypt` for password hashing and `jsonwebtoken` for generating JWT tokens.

#### Install Required Packages

```bash
npm install bcrypt jsonwebtoken
```

#### Create Users Table

```sql
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);
```

---

### 2. API Endpoints

Implement the following API routes:

- `POST /api/auth/register` – Register a new user.
- `POST /api/auth/login` – Login and receive a JWT token.
- `GET /api/users/profile` – Get user profile. (Protected route - user must be logged in to access)
- user profile page should have: username, email

optional: update the user profile

- `PUT /api/users/profile` – Update user profile.
- `PUT /api/users/password` – Update user password.

---

### 3. Middleware

- Create a middleware `verifyToken.js` to protect routes using JWT.

### 4. Environment Variables

In your `.env` file, add:

```env
JWT_SECRET=your_jwt_secret_key
```

```javascript
Flavor-Table 3 - Deployment
├── node_modules/
├── public/
│ ├── index.html
│ ├── favorites.html
│ ├── randomRecipes.html
| ├── editRecipe.html
│ ├── styles.css
│ └── app.js
├── middleware/
│     └── verifyToken.js # Middleware to verify JWT tokens
├── routes/
│ ├── home.js
│ └── recipes.js
├── .env
├── .env.example
├── .gitignore
├── package-lock.json
├── package.json
├── README.md
└── server.js
```

---

## Deployment

- Sign in to [Render](https://render.com).
- Create a new Web Service.
- Connect your GitHub repository.
- Set up build and start commands.
- Add environment variables in the Render dashboard (same as your `.env`).
- Ensure the app starts correctly using:

```js
app.listen(process.env.PORT || 3000, () => {
  console.log("Server is running");
});
```

---

## Bonus Task: Frontend Updates +1 mark

- Add login and registration forms in your HTML pages.
- Store the JWT token in `localStorage`.
- Send the token in `Authorization` headers for protected routes using Axios:

example:

```js
axios.get("/api/recipes/all", {
  headers: {
    Authorization: `Bearer ${token}`,
  },
});
```

---

## Error Handling

- Use `try...catch` in all route handlers and async DB operations.

---

## Submission Instructions

1. Push your work to the `Flavor-Table-Deployment` branch.
2. Create a pull request for the branch.
3. Merge the `Flavor-Table-Deployment` branch into the main branch.
4. Add the following questions to the README.md:
   - How many hours did it take you to complete this assignment?
   - Were there any parts of the lab you found challenging?
5. Submit the pull request link for your GitHub repository.

---

## **Resources**

- [All Http Response Status codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status/)
- [JWT Documentation](https://jwt.io/)
- [Render.com Documentation](https://render.com/docs/deploy-node-express-app)
- [bcrypt Documentation](https://www.npmjs.com/package/bcrypt)
- [jsonwebtoken Documentation](https://www.npmjs.com/package/jsonwebtoken)
