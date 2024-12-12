-- Insert fake data into members table
INSERT INTO public.members (name, email, phone) VALUES
                                                    ('Alice Johnson', 'alice.johnson@example.com', '555-1234'),
                                                    ('Bob Smith', 'bob.smith@example.com', '555-5678'),
                                                    ('Charlie Brown', 'charlie.brown@example.com', '555-9012'),
                                                    ('Daisy Miller', 'daisy.miller@example.com', '555-3456'),
                                                    ('Ethan White', 'ethan.white@example.com', '555-7890'),
                                                    ('Fiona Green', 'fiona.green@example.com', '555-2345'),
                                                    ('George Blue', 'george.blue@example.com', '555-6789'),
                                                    ('Hannah Grey', 'hannah.grey@example.com', '555-0123'),
                                                    ('Ivy Black', 'ivy.black@example.com', '555-4567'),
                                                    ('Jack Yellow', 'jack.yellow@example.com', '555-8901');

-- Insert fake data into books table
INSERT INTO public.books (title, author, genre) VALUES
                                                    ('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction'),
                                                    ('1984', 'George Orwell', 'Dystopian'),
                                                    ('To Kill a Mockingbird', 'Harper Lee', 'Fiction'),
                                                    ('Pride and Prejudice', 'Jane Austen', 'Romance'),
                                                    ('The Catcher in the Rye', 'J.D. Salinger', 'Fiction'),
                                                    ('Moby-Dick', 'Herman Melville', 'Adventure'),
                                                    ('War and Peace', 'Leo Tolstoy', 'Historical'),
                                                    ('The Odyssey', 'Homer', 'Epic'),
                                                    ('Brave New World', 'Aldous Huxley', 'Dystopian'),
                                                    ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy');

-- Insert fake data into borrow_records table
INSERT INTO public.borrow_records (member_id, book_id, borrow_date, return_date) VALUES
                                                                                     (1, 1, '2024-11-01', '2024-11-15'),
                                                                                     (2, 2, '2024-11-03', '2024-11-13'),
                                                                                     (3, 3, '2024-11-05', '2024-11-20'),
                                                                                     (1, 4, '2024-11-07', '2024-11-17'),
                                                                                     (4, 5, '2024-11-09', '2024-11-19'),
                                                                                     (5, 6, '2024-11-11', '2024-11-25'),
                                                                                     (6, 7, '2024-11-13', '2024-11-27'),
                                                                                     (7, 8, '2024-11-15', '2024-11-30'),
                                                                                     (8, 9, '2024-11-17', '2024-12-01'),
                                                                                     (9, 10, '2024-11-19', '2024-12-03'),
                                                                                     (10, 1, '2024-11-21', '2024-12-05'),
                                                                                     (1, 2, '2024-11-23', '2024-12-07'),
                                                                                     (2, 3, '2024-11-25', '2024-12-09'),
                                                                                     (3, 4, '2024-11-27', '2024-12-11'),
                                                                                     (4, 5, '2024-11-29', '2024-12-13'),
                                                                                     (5, 6, '2024-12-01', '2024-12-15'),
                                                                                     (6, 7, '2024-12-03', '2024-12-17'),
                                                                                     (7, 8, '2024-12-05', '2024-12-19'),
                                                                                     (8, 9, '2024-12-07', '2024-12-21'),
                                                                                     (9, 10, '2024-12-09', '2024-12-23');
