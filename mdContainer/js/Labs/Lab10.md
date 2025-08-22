# Lab 10: Job Tracker

## Objective

- By building on your previous knowledge, Create a React app where users can register/login, then log their job applications in Firestore.
- Users should be able to create, read, update, and delete and filter applications by status (applied, interview, rejected, hired).
- Use Redux Toolkit for state management and Redux Persist to store state locally.

## Requirements

### 1. Setup

- First, create a new React app then:
- Create firebase project from this link [Create firebase project](https://console.firebase.google.com/u/0/?pli=1)
- Install the needed dependencies:

- Firebase: `npm install firebase`
- Redux toolkit: `npm install @reduxjs/toolkit`
- Redux persist: `npm install redux-persist`

---

- Install one of the following UI libraries for styling your app
- Ant design: `npm install antd`
- Material ui: `npm install @mui/material @emotion/react @emotion/styled`

- Create a firebase.js file and add the config to your project.
- Initialize Firebase and export the auth and firestore instances.

---

### 2. Authentication (Login & Register)

- Create Register.jsx and Login.jsx components to handle user registration and login.
- Implement Firebase authentication methods:

  - createUserWithEmailAndPassword
  - signInWithEmailAndPassword

- Display form validation and error messages.
- Redirect to /dashboard after login or registration.

### 3. Profile & Admin page

- Create Profile.jsx to display user profile information.
- Use onAuthStateChanged to fetch and display user data from Firestore.
- Implement a logout button to sign out the user.
- Add an Admin.jsx Page to list all job applications from every user.
- Restrict access to users with role: "admin" stored in Firestore user documents.
- Only users marked as admin can see this page — use ProtectedRoute or role check.

### 4. Firestore Integration

- On registration, store user profile data in a users collection ( name, email, role).
- Create a jobApplications collection with fields:
- company, position, status (with values: "applied", "interview", "rejected", "hired"), userId, createdAt.
- Make sure Firestore security rules restrict access so users can only read/write their own documents. ( Search how (optional) )

### 5. Protected Routes

- Use onAuthStateChanged to manage authentication state.
- Create ProtectedRoute.jsx:
  - If not authenticated, redirect to /login.
  - If authenticated, render the requested component (Profile, Dashboard).

### 6. Dashboard

- Display all user applications in a table or list.
- Add a form to create new applications. Each application should display company, position, and status.
- Add buttons to Create applications. ( Edit, and Delete are optional )
- Add a dropdown or buttons to filter applications by **status** (`applied`, `interview`, `rejected`, `hired`).

```js
// Fetch all applications for the current user where status is 'applied'
const querySnapshot = await firestore
  .collection("jobApplications")
  .where("userId", "==", userId)
  .where("status", "==", statusFilter) // statusFilter comes from useState
  .get();
```

- Note: `When the user loads the dashboard, save the fetched job applications into Redux state. Persist this state so if the internet goes down, the last fetched data still displays. No need to sync offline edits back to Firestore.`

### 7. Auto-Login & Logout

- Use onAuthStateChanged to keep users logged in after refresh.
- Add a Logout button that calls signOut(auth) and redirects to /login.

### 8. NotFound Page

- Any unknown route should render a 404 page with a button redirecting to home page (/).

### 9. Styling

- Check the following links for ant design components: [Ant Design ](https://ant.design/components/overview/)
- Check the following links for material ui components: [Material UI ](https://mui.com/material-ui/all-components/)
- Choose your preferred styling library either Ant Design or Material UI.
- Implement stylingto your app using the chosen library.
- Add a logo and background image.

## Bonus Task (+1 Mark)

- Implement the full CRUD operations for job applications in step 4 Firestore Integration.
- Create: Add new job applications.
- Read: Fetch applications for the logged-in user.
- Update: Edit company, position, or status fields.
- Delete: Remove an application.

--- 

## Submission Instructions

- Create a new repository named `Job-Tracker`.
- Create a new branch named `job-tracker-lab`.
- Create a README.md to answer:
  - Your app name and features and how it works.
  - How long did this lab take you?
  - What was the most challenging part?
- Create a Pull Request from `job-tracker-lab` to main.
- Submit the GitHub Pull Request link.


