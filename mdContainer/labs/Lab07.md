# Smart Cart Application
<img src="https://ekladata.com/WZkOL_ACYSjwcV1P4T90zb1kUfk.gif
" alt="Example Image" width="280"/>

## Lab Overview
In this lab, we will build a smart shopping cart application where users can add and remove items, view their cart contents, and calculate the total cost of their purchases. We'll simulate shopping at a mall, where users can select items from different shops such as a grocery store, clothing store, and other stores.

## Lab Specifications

### Product Class
- Create a `Product` class inside `Product.cs` to represent individual items available for purchase.
- Define an enum called `ProductCategory` to categorize different types of products (e.g., Food, Clothing, Electronics).
- Define properties such as `Name`, `Price`, and `Category` (using ProductCategory enum).

### ShoppingCart Class
- Implement a `ShoppingCart` class to manage the items added by the user.
- Use a collection (e.g., List) to store the items in the cart.
- Provide methods to add, remove, and view items in the cart, as well as calculate the total cost.
- Add the concept of removing items from the cart while the user is viewing items (as an option)

### ProductGenerator Class
- Create a `ProductGenerator` class responsible for generating random products with varying attributes.
- Implement a method `GenerateProduct()` within `ProductGenerator` to create products with random attributes such as name, price, and category.

### Shop Classes
- Create separate classes to represent different shops in the mall, such as a `GroceryStore`, `ClothingStore`.
- Each shop class should have methods to display available products and allow users to select items to add to their shopping cart.

### User Interface
- Implement a console-based user interface to interact with the shopping cart:
  - Display a menu with options to shop at different stores, view the shopping cart, and calculate the total cost.
  - Allow users to select a shop, browse available products, and add items to their cart.
  - Handle any case where the user tries to add or remove an item that does not exist.
  - Continuously loop until the user chooses to check out and exit the application.

## Unit Tests
- Test adding and removing items from the cart.
- Validate the calculation of the total cost.

## Stretch Goals
- Implement discounts or promotional offers for certain products or combinations of products.


## Lab Structure
```
Smart-Cart-Application/
|── ShoppingCartApplicationTests/ (1.5 marks)
├── ShoppingCartApplication/
│ ├── Program.cs                  (1.5 mark)   
│ ├── Product.cs                  
│ ├── ShoppingCart.cs             (2 marks)
│ ├── GroceryStore.cs             (1 mark)
│ ├── ClothingStore.cs            (1 mark)
│ └── ProductGenerator.cs         (2 marks)
└── README.md                     (1 mark)
```

## How To Submit this Lab
1. Create a new repository on your personal GitHub account.
2. Name your repository `Smart-Cart`.
3. Create a branch named `myCart`.
4. Solve your Lab, following the Program Specifications section.
5. Include a `README.md` file with the necessary content.
6. Push your changes to your GitHub repository.
7. Create a pull request from your branch to the main branch.
8. Submit a link to your pull request in the submission field.