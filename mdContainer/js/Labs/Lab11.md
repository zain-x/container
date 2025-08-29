# Lab 11: Intelligent Job Tracker

## Objective

- Extend your Job Tracker app with **AI-powered features**.
- Integrate an AI API to help users to improve their job search:
  - Get resume feedback
  - Analyze job descriptions
  - Receive AI career insights
  - Chat with an AI career assistant

---

## Requirements

### 1. Setup

- Continue working from your **Job Tracker** project (Lab 10).
- Install OpenAI SDK or Axios/fetch for API requests:
  ```bash
  npm install openai
  ```

### Node.js server (Best practice - Optional but highly recommended)

- create a `node.js` server to handle the API requests
- create a route to handle the API requests
- create a function to handle the API requests
- create a function to handle the API responses
- create a function to handle the API errors
- deploy the server to a hosting service like render or your favorite hosting service
- connect the server to the frontend

### 2. Resume Helper

- Create a **ResumeHelper.jsx** component.
- Allow the user to **paste or upload resume text**. ( upload is optional - search for a library to handle direct file rendering libraries)
- Use the demo code from the previous lecture tohelp you get started (optional)
- Send text to the AI API → display suggestions as the following:
  - Grammar improvements
  - Strong/weak points
  - Keywords to add
- Display results in a styled **styled card or list**.

---

### 3. Job Description Analyzer

- Create a **JobAnalyzer.jsx** component.
- User pastes a **job description**.
- AI returns:
  - Key required skills
  - Recommended keywords
  - Suitability rating (0–100%)
- Display results in a (**list, chart ( search how ) or table**).

---

### 4. Dashboard Insights

- In **Dashboard.jsx**, fetch job stats from Firestore:
  - Applied, Interview, Rejected, Hired counts
- Send stats to AI → generate a **motivational summary**.  
  Example:
  > You applied to 7 jobs this month, got 3 interviews! Data analyst roles have the highest success rate for you
- Display this summary at the **top of the dashboard**.

---

### 5. Career Chatbot

- Create **Chatbot.jsx** component.
- Implement a **chat UI**:
  - User types career/job-related questions
  - AI responds (like ChatGPT but focused on career guidance)
- Store messages in **local state (or Redux store)**.
- Use styled chat bubbles for **user vs AI messages**.

---

### 6. Styling

- Use `Tailwind` CSS for styling (or continue with the UI library from Lab 10 for consistency).
- Add a **logo and background image**.
- Implement a **responsive design** using `Tailwind media queries`.

---

## Bonus Task (+1 Mark)

- Let users **save AI feedback** (resume suggestions, job analysis) to Firestore for later review.

---

## Submission Instructions

- Either extend your existing `Job-Tracker` repo or create a new one named `Intelligent-Job-Tracker` (your choice)."
- Create a new branch named `Intelligent-Job-Tracker`.
- Create a README.md to answer:
  - Your app name and features and how it works.
  - How long did this lab take you?
  - What was the most challenging part?
- Create a Pull Request from `Intelligent-Job-Tracker` branch to `main` branch.
- Submit the GitHub Pull Request link.

---

## Resources

- [Create OpenAI API](https://platform.openai.com/api-keys)
- [OpenAI API Reference](https://platform.openai.com/docs/api-reference/chat/create)
- [Tailwind CSS UI Blocks](https://tailwindcss.com/plus/ui-blocks)
- [Firebase Firestore](https://firebase.google.com/docs/firestore)

