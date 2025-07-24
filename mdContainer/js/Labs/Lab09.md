# Lab 09: InstaBoard 2

---

## Overview

This lab builds upon your previous `InstaBoard` app. You will extend your React project by adding routing and navigation using `react-router-dom`, implement `useEffect` for lifecycle management, and use `useLocation` to pass data between pages. You will also build a detailed user profile page and manage local storage to track liked users.

---

## Objectives

- Add multi-page navigation using React Router
- Use `useEffect` for data fetching and component lifecycle
- Use `useLocation` to pass state between routes
- Implement a layout component with consistent UI across pages
- Handle 404 pages with fallback routes
- Manage liked users using localStorage ( Bonus Task +1 mark )

---

## Setup Instructions

1. Make sure your project from **Lab 08 InstaBoard** is working.
2. Install `react-router-dom`
   ```bash
   npm install react-router-dom
   ```
3. Create new components and update your folder structure as shown below.

## Updated Project Structure

// Rework the previous structure and use .jsx extension
```
│ │ ├── UserCard/
│ │ │ ├── UserCard.js
│ │ │ └── UserCard.css
│ │ ├── UserList/
│ │ │ ├── UserList.js
│ │ │ └── UserList.css
```
```
InstaBoard2/
├── node_modules/
├── public/
├── src/
│   ├── components/
│   │   ├── Layout.jsx # contains Navigation and Footer
│   │   ├── Navigation.jsx   # Top navbar with <NavLink /> routing to Home, About, Team
│   │   └── Team/
│   │       ├── Team.jsx     # Displays all users using randomuser.me API + Like feature + Load more
│   │       ├── Team.css
            TeamDetails/
│   │       ├── TeamDetails.jsx   # Detailed user profile using data from useLocation (useLocation)
│   │       ├── TeamDetails.css
│   │   |── LikedUsers.jsx  ( Bonus Task ) Shows only liked users from localStorage + "Unlike" support
│   ├── pages/
│   │   ├── Home.jsx      # Home page with welcome text
│   │   ├── About.jsx     # Static page with app description or team purpose
│   │   └── NotFound.jsx  # 404 route with a redirect button to Home
│   ├── styles/
|   |   put other css files as you like
│   ├── App.js
│   ├── index.js
│   └── index.css
├── package.json
└── README.md
```

---

## Requirements

### 1. Add Routing Functionality

- Use `BrowserRouter`, `Routes`, and `Route` and `Link` in your `index.js` or `App.js`.
- Define the following routes:
  - `/` → Home Page
  - `/about` → About Page
  - `/team` → Team Page (displays users)
  - `/team/:id` → Team Details Page (single user)
  - `/liked-users` → Liked Users Page (Bonus task)
  - `*` → NotFound Page ( search for link fallback )

---

### 2. Create and Use a Layout Component

- Create a `Layout` component with:
  - Navigation Bar (`<Navigation />`)
  - Footer
  - Dynamic main content (`{children}`)

---

### 3. Navigation Bar

- Create a `Navigation` component
- Use `NavLink` or `Link` to link to the above pages
- Style the active link using the `isActive` function

---

### 4. Team Page

- Use `useEffect` to fetch users from:  
  `https://randomuser.me/api/?results=12`
- Allow the user to:
  - Change number of results (1–100)
  - Click "Load More" to fetch additional users
  - Like a user (stored in localStorage)
  - View profile details by clicking `View Profile` (pass user data using `state` in Link)

---

### 5. Team Details Page

- Get user data using `useLocation`
- Show full profile details ( email, address, phone, etc.)
- Add a back button to return to `/team`

---

### 6. Liked Users Page

- Fetch liked users from localStorage
- Allow the user to "Unlike"
- Provide a link to go back to `/team`

---

### 7. NotFound Page

- Display a 404 message for any unknown routes
- Provide a button to go back to `/`

---

### 8. CSS Styling

- Create a `styles` folder your added styles:

---

## Bonus Task (+1 Mark)

- Add a new page to view all liked users (`/liked-users`)
- Allow users to `Unlike` users from that page

---

## Submission Instructions

1. Push your work to the `instaboard-v2` branch.
2. Create a pull request from `instaboard-v2` to `main`.
3. Merge it after review.
4. Update your `README.md` with the following:
   - How long did this lab take you?
   - What was the most challenging part?
5. Submit the GitHub pull request link.

---
