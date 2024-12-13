### **Exercise 1: E-commerce Order Management System**

**Objective**: Build a Java application to manage an E-commerce Order Management System database using JDBC.
**Scenario**: You are tasked with managing a database for an online e-commerce platform. Use the given schema and SQL skills you’ve learned to answer the following questions.

### **Tables**
- **Customers**:
  - `customer_id` (Primary Key)
  - `name`, `email`, `address`

- **Products**:
  - `product_id` (Primary Key)
  - `name`, `price`

- **Orders**:
  - `order_id` (Primary Key)
  - `customer_id` (Foreign Key to Customers)
  - `order_date`, `total_amount`

- **Order Details**:
  - `order_id` (Foreign Key to Orders)
  - `product_id` (Foreign Key to Products)
  - `quantity`

### **Tasks**
1. **Find High-Spending Customers**  
   Write a query to list all customers who have spent more than $500 in total orders. Display their name, email, and total spending.

2. **Identify Popular Products**  
   Write a query to find the top 3 most-ordered products. Display the product name, total quantity ordered, and revenue generated for each product.

3. **Customer Order History**  
   Write a query to generate a complete order history for a specific customer by their name (e.g., *John Doe*). Include the order date, product names, quantity of each product, and the total amount for each order.

---

### **Exercise 2: Car Rental Management System**

**Objective**: Build a Java application to manage a Car Rental database using JDBC.  
**Scenario**: You are working on a database for a car rental system. Use the provided schema to complete the following tasks.

### **Tables**

- **Customers**:  
  - `customer_id` (Primary Key)  
  - `name`, `address`, `phone`  

- **Cars**:  
  - `car_id` (Primary Key)  
  - `brand`, `model`, `rental_price_per_day`, `availability_status`  

- **Rentals**:  
  - `rental_id` (Primary Key)  
  - `customer_id` (Foreign Key to Customers)  
  - `car_id` (Foreign Key to Cars)  
  - `rental_date`, `return_date`, `total_cost`  

### **Tasks**

1. **Calculate Total Revenue Generated by Each Car**  
   Write a query to calculate the total revenue generated by each car. Display the car's brand, model, and total revenue in descending order.

2. **Find Frequent Renters**  
   Write a query to identify the top 5 customers who have rented the most cars. Display their name, address, and the total number of cars they have rented.

3. **Car-Specific Analysis**  
   Write a query to find the most rented car (by total rentals). Display the car's brand, model, and the total number of rentals.  

---

### **Exercise 3: Library Management System**

**Objective**: Build a Java application to manage a Library Management System database using JDBC.
**Scenario**: You are designing a database for a library management system. Use the provided schema to complete the tasks.

### **Tables**
- **Members**:
  - `member_id` (Primary Key)
  - `name`, `email`, `phone`

- **Books**:
  - `book_id` (Primary Key)
  - `title`, `author`, `genre`

- **Borrow Records**:
  - `borrow_id` (Primary Key)
  - `member_id` (Foreign Key to Members)
  - `book_id` (Foreign Key to Books)
  - `borrow_date`, `return_date`

### **Tasks**
1. **Overdue Books**  
   Write a query to list all books that are currently overdue. Display the book title, member name, and the number of days overdue (assume today’s date is *2024-12-10*).

2. **Genre Popularity**  
   Write a query to calculate the total number of books borrowed for each genre. Display the genre and the total number of borrowings, sorted in descending order.

3. **Top Borrowers**  
   Write a query to identify the top 3 members who have borrowed the most books. Display their name, email, and the total number of books borrowed.
