-- Insert data into customers table
INSERT INTO public.customers (name, email, address) VALUES
                                                        ('John Doe', 'johndoe@example.com', '123 Main St, Springfield'),
                                                        ('Jane Smith', 'janesmith@example.com', '456 Elm St, Shelbyville'),
                                                        ('Alice Johnson', 'alicej@example.com', '789 Oak St, Capital City'),
                                                        ('Bob Brown', 'bobbrown@example.com', '101 Maple St, Ogdenville'),
                                                        ('Charlie White', 'charliew@example.com', '202 Pine St, North Haverbrook'),
                                                        ('Daisy Green', 'daisyg@example.com', '303 Birch St, Springfield'),
                                                        ('Ethan Black', 'ethanb@example.com', '404 Cedar St, Shelbyville'),
                                                        ('Fiona Grey', 'fionag@example.com', '505 Walnut St, Capital City'),
                                                        ('George Blue', 'georgeb@example.com', '606 Ash St, Ogdenville'),
                                                        ('Hannah Yellow', 'hannahy@example.com', '707 Chestnut St, North Haverbrook');

-- Insert data into products table
INSERT INTO public.products (name, price) VALUES
                                              ('Laptop', 999.99),
                                              ('Smartphone', 799.49),
                                              ('Headphones', 199.99),
                                              ('Keyboard', 49.99),
                                              ('Mouse', 29.99),
                                              ('Monitor', 299.99),
                                              ('Printer', 149.99),
                                              ('Desk Lamp', 19.99),
                                              ('Webcam', 89.99),
                                              ('USB Drive', 15.99);

-- Insert data into orders table
INSERT INTO public.orders (customer_id, order_date, total_amount) VALUES
                                                                      (1, '2024-12-01', 1249.97),
                                                                      (2, '2024-12-02', 849.48),
                                                                      (3, '2024-12-03', 219.98),
                                                                      (4, '2024-12-04', 79.98),
                                                                      (5, '2024-12-05', 349.98),
                                                                      (6, '2024-12-06', 1649.97),
                                                                      (7, '2024-12-07', 59.97),
                                                                      (8, '2024-12-08', 1199.96),
                                                                      (9, '2024-12-09', 299.98),
                                                                      (10, '2024-12-10', 109.97);

-- Insert data into order_details table
INSERT INTO public.order_details (order_id, product_id, quantity) VALUES
                                                                      (1, 1, 1),
                                                                      (1, 3, 2),
                                                                      (2, 2, 1),
                                                                      (3, 4, 1),
                                                                      (3, 5, 1),
                                                                      (4, 6, 1),
                                                                      (5, 7, 2),
                                                                      (5, 8, 1),
                                                                      (6, 1, 1),
                                                                      (6, 6, 1),
                                                                      (7, 9, 1),
                                                                      (7, 10, 2),
                                                                      (8, 1, 1),
                                                                      (8, 2, 1),
                                                                      (9, 3, 1),
                                                                      (9, 5, 1),
                                                                      (10, 4, 2),
                                                                      (10, 8, 1),
                                                                      (10, 9, 1),
                                                                      (10, 10, 1);
