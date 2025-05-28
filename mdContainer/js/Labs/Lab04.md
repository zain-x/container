# **Lab 04: Crazy Meal**

## **Overview**

In this lab, you will build a web application for a chicken restaurant called **Crazy Meal**. It will allow you to add and track customer orders by entering details like: meal name, meal price, price and image of the meal.

You will practice key programming skills including creating objects using constructor functions, manipulating the DOM to display dynamic data, handling form submissions, and saving data using the browser’s localStorage.

This project simulates a real-world restaurant order system in a simple and beginner-friendly way.

---

## Project Structure

```
crazy-meal/
├── index.html
├── menu.html
├── images/
├── css/
│   └── style.css
├── js/
│   └── app.js
└── README.md
```

## **HTML Requirements**

The **menu.html** page includes a list of chicken items with their name and prices, and optional images for each item.

---

## **HTML Requirements**

### **Home Page (`index.html`)**

1. **Header**: Add the restaurant name **Crazy Meal** at the top.

2. **Main Section**: Include:

   - A form to add new orders with the following fields:

     - Meal name
     - Meal price
     - Quantity
     - Meal image (optional but recommended)

   - A table or list below the form that displays all the orders added by the user.

3. **Footer**: Add your name and the current year.

---

### **Menu Page (`menu.html`)**

1. Create a menu section listing chicken items with:

   - Item names
   - Prices
   - Images for each item (optional)

2. Include navigation to go back to the home page.

---

## **JavaScript Requirements (`app.js`)**

1. Create a constructor function called `Order` with these properties:

   - `mealName`
   - `mealPrice`
   - `quantity`

2. **Order Management**:
   - Handle form submission to create new `Order` objects.
   - Store the orders in localStorage.
   - On page refresh, retrieve orders from localStorage and display them.
   - Add a button to clear all orders. (Optional)

---

## **CSS Requirements (`style.css`)**

- Use color-palette from this website [coolors.co](https://coolors.co/palettes/trending)
- Use Google Fonts of your choice to make the text beautiful.
- Add a related background image to the page Or generate it using this website [deepai.org](https://deepai.org/machine-learning-model/text2img) make sure to choose desktop size.
- keep practicing using flexbox and cards. (Recommended)
- Add your own unique styles to make the page look nice.

---

## **Submission Instructions**

1. Push your work to the `crazy-meal-dev` branch.
2. Create a pull request for the branch.
3. Merge the `crazy-meal-dev` branch into the main branch.
4. Deploy the project to GitHub Pages and include the live link in the README.md file.
5. Add the following questions to the README.md:
   - How many hours did it take you to complete this assignment?
   - Were there any parts of the lab you found challenging?
6. Submit the pull request link for your GitHub repository.
