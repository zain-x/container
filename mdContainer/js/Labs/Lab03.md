# **Lab 03: Magical Characters**

## **Overview**

In this lab, you will build a web application that fetches and displays information about characters from the Harry Potter universe. You will practice fetching data from an API, dynamically rendering content, and styling your website using CSS.

---

## **Project Requirements**

### **1. Set up the Repository**

1. Create a new repository on GitHub named **`magical-characters`** (or use an alternative title).
2. Clone the repository to your local machine.
3. Work on a branch named `magic`:
   ```bash
   git checkout -b magic
   ```
4. Add a README.md file with a brief description of your project.

## Project Structure

Organize your project as follows:

```
magical-characters/
├── index.html
├── css/
│   └── styles.css
├── js/
│   └── app.js
├── images/
│   └── not-found.png
└── README.md

```

- Place the provided image (not-found.png) in the images/ directory.

#### Home Page (`index.html`)

- Include a navigation bar with a title (e.g., **"Magical Characters"**).

- Add a dropdown menu to filter characters by house. The options should include:

  - All houses
  - Gryffindor
  - Slytherin
  - Hufflepuff
  - Ravenclaw

- Add a main section to display character cards.

- Include a footer with your name and the current year.

---

### 5. Fetch and Render Character Data

- Fetch the data from the Harry Potter API [here](https://hp-api.onrender.com/api/characters).

- Display each character's:

  - Image (Replace missing images with `not-found.png`.)
  - Name
  - House
  - Date of Birth

- Use JavaScript to dynamically render this data as cards on the page.

---

### 6. Filtering

- Add functionality to filter characters by house using the dropdown menu.
- limit the displayed card to 16 card only ( hint: maybe slice it 👌)

---

### 7. CSS Styling (`styles.css`)

- Style the character list using a responsive flexbox layout.

- Use a font from **Google Fonts** named: **Harry P** and import it in the css file (use google search)

- Add hover effects on character cards to make them visually appealing.

- Ensure the layout is mobile-friendly.

- Try to create a unique style.

---

### Create a Pull Request and Merge

- After pushing your changes to the `magic` branch, go to your GitHub repository.
- Create a **Pull Request** from the `magic` branch into the `main` branch.
- Review your changes and then **merge** the pull request into the `main` branch.

---

### Deploy Your Project Using GitHub Pages

- Go to your GitHub repository **Settings**.
- Navigate to the **Pages** section.
- Under **Branch**, select the branch `main` then `/root`.
- Click **Save** to publish your website.
- GitHub will provide a live URL where your site is hosted (the link will appear after you refresh the page).

---

## **Submission Instructions**

1. Push your work to the `magic` branch.
2. Create a pull request for the branch.
3. Merge `magic` branch with the main branch.
4. Deploy the project to GitHub Pages.
   4- include the live github link in your readme.md file
5. Add the following questions in your readme.md:
   - What observations or questions do you have about what you’ve learned so far?
   - How long did it take you to complete this assignment? And how long did you expect it to take?
6. Submit the pull request of you GitHub repository.

### Bonus Features (Optional +1 mark)

- Remove the render limitation and add a **"Load More"** button to display additional characters.
