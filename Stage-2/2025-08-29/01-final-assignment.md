# Final Assignment - Webshop Application

_**Due Date:** September 13, 2025_

This is your _final assignment_ for Stage 2 of the STATUS 200 Coding Bootcamp 2025! Please read the instructions carefully and complete all tasks.

## Table of Contents

-   [Introduction](#introduction)
    -   [Questions?](#questions)
    -   [Expectations](#expectations)
        -   [1. Recognizable code](#1-recognizable-code)
        -   [2. Functionality](#2-functionality)
        -   [3. Code Quality](#3-code-quality)
        -   [4. User Experience](#4-user-experience)
        -   [5. Collaboration](#5-collaboration)
    -   [Creativity](#creativity)
    -   [Due Date](#due-date)
    -   [Submission](#submission)
-   [Database Requirements](#database-requirements)
    -   [Database Schema](#database-schema)
    -   [Additional Information](#additional-information)
    -   [Sample Data](#sample-data)
-   [Server Requirements](#server-requirements)
    -   [Packages](#packages)
    -   [Responses](#responses)
    -   [Endpoints](#endpoints)
-   [Website Requirements](#website-requirements)
    -   [Home Page](#home-page)
    -   [Product Category Page](#product-category-page)
    -   [Product Detail Page](#product-detail-page)
    -   [Shopping Cart Page](#shopping-cart-page)
    -   [Checkout Page](#checkout-page)
    -   [Thank You Page](#thank-you-page)
-   [Bonus Features (Optional)](#bonus-features-optional)
    -   [Customer Page](#customer-page)
    -   [Search Functionality](#search-functionality)
    -   [Sorting](#sorting)
    -   [Pagination](#pagination)
    -   [Mail](#mail)
    -   [PDF Invoice](#pdf-invoice)
    -   [Something Awesome](#something-awesome)
-   [Tips](#tips)
-   [Resources](#resources)

# Introduction

In this assignment, you will demonstrate your understanding of the concepts and skills you have learned throughout Stage 2. You will be required to complete a series of tasks that involve coding, problem-solving, and critical thinking.

Your task is to create a webshop application that allows users to browse products, add them to a shopping cart, and proceed to checkout. The application should be built using HTML, CSS, and JavaScript.

## Questions?

If you have any questions or need clarification on any part of this assignment, please don't hesitate to reach out to your instructors or teaching assistants. We're here to help you succeed!

## Expectations

#### 1. Recognizable code

We expect to see code that uses the concepts and techniques covered in Stage 2. This enables us to assess your understanding of the material covered in Stage 2.

We don't expect to see code that is diverse from what we have taught you, eg. code written by AI tools. This would make it impossible for us to assess your understanding of the material covered in Stage 2.

_For the [optional bonus features](#bonus-features-optional), we do expect to see some code that is more advanced than what we have taught you. This is because these features are optional and are meant to challenge you to think outside the box and apply your knowledge in new ways._

#### 2. Functionality

The webshop application should be fully functional, allowing users to browse products, add them to a shopping cart, and proceed to checkout.

#### 3. Code Quality

Your code should be clean, well-organized, and easy to read. Use meaningful variable and function names, and include comments where necessary to explain your code.

Try to apply the concept "Separation of Concerns" by separating your HTML, CSS, and JavaScript code into different files.

#### 4. User Experience

The application should be user-friendly and visually appealing. Use CSS to style the application and make it look professional.

#### 5. Collaboration

You are encouraged to collaborate with your peers if needed. However, all work submitted must be your own.

## Creativity

You're free to choose the type of products you want to sell in your webshop. You can also add features not mentioned in the assignment. As long as you meet the requirements stated in [requirements](#requirements) and meet the [expectations](#expectations) mentioned above, you can be as creative as you want with the data, the design and the functionality of your webshop.

## Due Date

The final assignment is due by the end of the day on **September 13, 2025**.

## Submission

Please submit your completed webshop application by the end of the day on **September 13, 2025**. You should submit a ZIP file containing your whole project.

**REMOVE** _the **`node_modules`** folder and **`package-lock.json`** file before submitting_

Your project should have the following structure:

```
final-assignment/
├── database/
│   └── setup.sql (create tables, insert sample data)
├── server/
│   ├── (js file)
│   └── package.json
├── videos/
│   └── (video files demonstrating and explaining your webshop)
└── website/
    ├── css/
    │   └── (css files)
    ├── images/
    │   └── (image files)
    ├── js/
    │   └── (js files)
    └── (html files)
```

#### Video

You need to include one or more videos demonstrating and explaining your webshop. The video(s) should cover the following:

-   **We expect `MP4 or MOV` format for the video(s) !!!**
-   A walkthrough of the webshop, demonstrating its functionality and features.
-   An explanation of your code, including how you implemented the database, server, and website.
-   Any challenges you faced and how you overcame them.

The video(s) should be clear and concise, and should not exceed 10 minutes (per video) in total length. You can use any screen recording software to create the video(s).

---

# Requirements

-   [Database Requirements](#database-requirements)

-   [Website Requirements](#website-requirements)

-   [Server Requirements](#server-requirements)

---

# Database Requirements

You are required to create a database to store product information, customer information, and order information. You're expect to use MySQL as your database.

## Database Schema

Your database should have **at least** the following tables (your welcome to add more tables and / or columns if you want to):

-   `products`:
    -   product_id (primary key)
    -   manufacturer_id (foreign key referencing, required)
    -   name (unique, required)
    -   description (required)
    -   price (required)
    -   image_url (required)
    -   stock_quantity (required)
    -   isFeatured (default: false)
    -   isDeleted (default: false)
-   `categories`:
    -   category_id (primary key)
    -   name (unique, required)
    -   description (required)
-   `product_categories`:
    -   product_id (foreign key referencing, required)
    -   category_id (foreign key referencing, required)
    -   (composite primary key: product_id, category_id)
-   `manufacturers`:
    -   manufacturer_id (primary key)
    -   name (unique, required)
-   `customers`:
    -   customer_id (primary key)
    -   name (required)
    -   email (unique, required)
    -   address (required)
    -   city (required)
    -   postal_code (required)
    -   country (required)
    -   phone (required)
-   `orders`:
    -   order_id (primary key)
    -   customer_id (foreign key referencing, required)
    -   order_date (required)
    -   total_amount (required)
-   `order_items`:
    -   order_item_id (primary key)
    -   order_id (foreign key referencing, required)
    -   product_id (foreign key referencing, required)
    -   quantity (required)
    -   price (required)
        _- info: price at the time of order_
-   `cart`:
    -   cart_id (primary key)
    -   customer_id (foreign key referencing, required)
-   `cart_items`:
    -   cart_item_id (primary key)
    -   cart_id (foreign key referencing, required)
    -   product_id (foreign key referencing, required)
    -   quantity (required)

## Additional Information

**Products**
If a product _stock quantity reaches zero_, it should be marked as "Out of Stock" and should not be available for purchase. Only after the admin updates the stock quantity to a value greater than zero, the product should be available for purchase again.

**Products and Categories**
A product can belong to multiple categories, and a category can have multiple products. This is represented by the `product_categories` junction table.

**Manufacturers**
Each product is associated with a manufacturer.

**Shopping Cart**
Each customer has a shopping cart, and the `cart_items` table captures the products added to the cart by the customer.

-   Customer should be able to add products to the cart, update quantities, and remove products from the cart.

**Customers and Orders**
Customers can place multiple orders, and each order can contain multiple products. The `order_items` table captures the details of each product in an order.

-   An order should only be created when a customer completes the checkout process. The shopping cart should be cleared after the order is placed.
    <br>
-   **Important:** the `email` field in the `customers` table should be unique to prevent duplicate customer entries. _Use this field to identify customers when they return to the webshop and place new orders._
    -   If a customer with the same email already exists in the database, use the existing customer record instead of creating a new one.
    -   If a customer with the same email does not exist, create a new customer record.

### Sample Data

You should populate your database with sample data to demonstrate the functionality of your webshop. You can use SQL scripts to create tables and insert sample data. You can use AI tools to help you generate sample data if you want to.

---

# Server Requirements

You are required to create a server to handle requests from the website and interact with the database. You're expect to use Node.js.

## Packages

You should use the following packages:

-   `express` for creating the server and handling routes
-   `mysql2` for connecting to the MySQL database
-   `cors` for handling cross-origin requests

We don't expect you to use any other packages, but if you want to use additional packages (for example to add a [bonus feature](#bonus-features-optional)), please discuss this with us first.

## Responses

Your server should always respond with JSON string for API requests. This can be data from the database or some message like `{ message: "Product added to cart" }`.

## Endpoints

You should create the following endpoints (or something similar):

-   `GET /api/products` - Get a list of all products
-   `GET /api/products/:id` - Get details of a specific product
-   `GET /api/categories` - Get a list of all categories
-   `GET /api/categories/:id/products` - Get a list of products in a specific category
-   `POST /api/cart` - Add a product to the cart
-   `GET /api/cart` - Get the current cart
-   `PUT /api/cart` - Update the quantity of a product in the cart
-   `DELETE /api/cart/:productId` - Remove a product from the cart
-   `POST /api/checkout` - Complete the checkout process and create an order
-   `GET /api/orders/:id` - Get details of a specific order (using the order ID)

---

# Website Requirements

## Home Page

The home page should display featured products, grouped by category. It could be a certain category doesn't have any featured products, in that case, just don't display that category on the home page.

## Product Category Page

The product category page should display a list of products in the selected category.

-   Featured products should be displayed at the top of the list.
-   Products that are out of stock should be displayed at the bottom of the list and should be marked as "Out of Stock".
-   Each product should display its name, price, and a thumbnail image.

## Product Detail Page

The product detail page should display detailed information about the selected product:

-   Product name
-   Product image
-   Product description
-   Product price
-   Stock availability (e.g., "In Stock" or "Out of Stock")
-   Manufacturer name
-   Categories the product belongs to
    -   _Hint:_ `GROUP_CONCAT()` in your query could be useful for this
-   An "Add to Cart" button (disabled if the product is out of stock)

## Shopping Cart Page

The shopping cart page should display the products added to the cart, along with their quantities and total price. It should also have a "Proceed to Checkout" button.

Per product in the cart, the following information should be displayed:

-   Product name
-   Product image (thumbnail)
-   Product price
-   Quantity (with the ability to update the quantity)
-   Subtotal (price \* quantity)

At the bottom of the cart, the following information should be displayed:

-   Total price for all products in the cart
-   "Proceed to Checkout" button

## Checkout Page

The checkout page should allow users to enter their shipping and payment information and complete the purchase. The following fields should be included:

-   Name
-   Email
-   Address
-   City
-   Postal Code
-   Country
-   Phone Number

After the user submits the checkout form, an order should be created in the database, and the shopping cart should be cleared.

## Thank You Page

After a successful checkout, the user should be redirected to a thank you page that displays the order summary, including:

-   Thank you message
-   Order ID
-   Customer Name
-   Order Date
-   List of Products Purchased (with quantities and prices)
-   Total Amount
-   URL that allows the customer to return to the thank you page and view their order summary again (using the order ID as a query parameter)

---

# Bonus Features (Optional)

> Doing these features is optional, but can earn you an `A+` if you implement one or more of these features well, which will be mentioned on your certificate of completion.

## The Following Features are Optional

### Customer Page

Allow customers to view their past orders and order details. Maybe by using their email address to lookup their orders.

-   `GET /api/customers/:email/orders` - Get a list of past orders for a specific customer (using the customer's email)
-   Link to the thanks you page for each order to view the order details again

### Search Functionality

Implement a search bar that allows users to search for products by name or description. For example using a query parameter:

-   `GET /api/products/search?q=searchTerm` - Search for products by name or description

### Sorting

Allow users to sort products by price (low to high, high to low) or by name (A-Z, Z-A). For example using a query parameters:

-   `GET /api/categories/:id/products?sort=price_asc` - Sort products by price (low to high)
-   `GET /api/categories/:id/products?sort=price_desc` - Sort products by price (high to low)
-   `GET /api/categories/:id/products?sort=name_asc` - Sort products by name (A-Z)
-   `GET /api/categories/:id/products?sort=name_desc` - Sort products by name (Z-A)

### Pagination

Implement pagination on the product category page to limit the number of products displayed per page. For example using query parameters:

-   `GET /api/categories/:id/products?page=1&limit=10` - Get a paginated list of products in a specific category (page 1, 10 products per page)
-   User must be able to navigate between pages, like "Previous" and "Next" buttons or page numbers to click on.
-   Make sure you have enough sample data in your database to demonstrate pagination.

### Mail

Send a confirmation email to the customer after a successful checkout. You can use a NPM package like `nodemailer` to send emails from your server.

### PDF Invoice

Generate a PDF invoice for the order and provide a download link on the thank you page. You can use a NPM package like `pdfkit` to generate PDFs from your server.

### Something Awesome

If you have an idea for a feature that would make the webshop even better, feel free to implement it! Just make sure it aligns with the overall goal of the project and enhances the user experience.

---

# Tips

When building your webshop application, consider the following tips:

### Plan Your Work

Before you start coding, take some time to plan your work. Break down the tasks into smaller, manageable chunks and create a timeline for completing each task.

1. Work on the database first. Make sure your database schema is well-designed and that you have sample data to work with.
2. Next, work on the server. Set up your server and create the necessary endpoints to interact with the database. Test your endpoints making sure they return the expected data.
3. Finally, work on the website.
    1. Start with the basic structure and layout of the website.
    2. Then, add functionality to the website by making API calls to the server.
    3. Finally, style the website using CSS to make it visually appealing.

### Step-by-Step

Tackle one feature at a time. Start with the database, then move on to the server, and finally the website. This will help you stay organized and focused.

When you know your database and server are working correctly, you can start building the website.

### Don't get Destracted

It's easy to get sidetracked by adding extra features or making the design perfect while working on a specific part of the project. Stay focused on the task at hand and avoid getting distracted by other parts of the project.

### Don't Overcomplicate

Focus on meeting the requirements and expectations first. Avoid adding unnecessary features that could complicate your code and make it harder to maintain.

### Test Frequently

Regularly test your application to ensure that everything is working as expected. This will help you catch and fix issues early on.

### Debugging

If you encounter issues, use debugging techniques to identify and fix the problems. Use `console.log()` statements to trace the flow of your code and identify where things are going wrong.

Be cautious to use tools like ChatGPT to help you debug your code. Chances are you end up with code that we didn't teach you.

Debugging can be painful and frustrating, but it's an important skill to learn as a developer. When you solve bugs on your own, **you learn a lot about how your code works** and how to troubleshoot issues. You're also **less likely to make the same mistakes** in the future.
<br>

> _**Remember** the [expectations](#expectations) mentioned above._ If we see code we didn't teach you, we can't assess your understanding of the material covered in Stage 2.

<br>

### Seek Help When Needed

If you encounter challenges or have questions, don't hesitate to reach out to your instructors or peers for assistance.

---

# Resources

Here are some resources that might be helpful:

-   [Quick-Reference Glossary](./02-glossary.md)
-   [All Stage 2 Materials](../readme.md)
