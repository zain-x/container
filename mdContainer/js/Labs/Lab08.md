# Lab 08: InstaBoard

---

## Overview

- In this lab, you will build a React application that displays a list of user profile cards. You'll use reusable components with props, manage interactivity using `useState`, and use Axios to fetch user data from an external API.

Note: This lab combines your understanding of component-based architecture and the stateful logic with external data fetching.

---

## Objectives

- Create function-based reusable components
- Use props to pass data between components
- Manage internal state using `useState`
- Render dynamic lists
- Use Axios to fetch external data from a public API called `randomuser`: [Here](https://randomuser.me/api/?results=12)

---

## Setup Instructions

1. Create a new React application.
2. Install Axios using the package manager. ( `npm install axios` )
3. Create a `components` folder inside the `src` directory.

---

## Requirements

### 1. Create a `UserCard` Component

- Receives and displays user data passed via props ( picture, name, email ).
- Add a button to each card that allows users to `like` the profile and use component state to track and display the number of likes.
- Add a button or toggle to show/hide the user's email address.

---

### 2. Create a `UserList` Component

- Use Axios to fetch a list of users from this API:  
  `https://randomuser.me/api/?results=12`
- Store the fetched users in a state variable.
- Render multiple `UserCard` components using `.map()`.
- Pass the necessary data to each `UserCard`.
- Create a button `Load More` to fetch new users from the API and update the state.

---

### 3. Create an `App` Component

- Render the `UserList` component.

---

### 4. Style the Application

- Edit `App.css` to style the application.
- Add a good style to render the card `UserCard.css` and `UserList.css` components.

---

## Project Structure

```javascript
InstaBoard/
├── node_modules/
├── public/
├── src/
│   ├── components/
│   │   ├── UserCard/
│   │   │   ├── UserCard.js
│   │   │   └── UserCard.css
│   │   ├── UserList/
│   │   │   ├── UserList.js
│   │   │   └── UserList.css
│   ├── App.js
│   ├── App.css
│   └── index.js
├── package.json
└── README.md

```

---

## Bonus Tasks ( Optional | +1 Mark )

- Implement a dark mode toggle to switch between light and dark themes. (0.5 mark)
- Add a search functionality to filter users by name. (0.5 mark)

---

## Submission Instructions

1. Push your work to the `instaboard-lab` branch.
2. Create a pull request for the branch.
3. Merge the `instaboard-lab` branch into the `main` branch.
4. Add the following questions to the `README.md`:
   - How many hours did it take you to complete this assignment?
   - Were there any parts of the lab you found challenging?
5. Submit the pull request link for your GitHub repository.

---
