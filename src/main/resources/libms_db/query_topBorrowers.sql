SELECT m.name, count(br.return_date) AS borrowed_books_count,
       string_agg(b.title, ', ' ORDER BY b.title) AS titles
FROM public.books b
         JOIN public.borrow_records br on b.book_id = br.book_id
         JOIN public.members m on br.member_id = m.member_id
GROUP BY m.name
ORDER BY borrowed_books_count DESC
LIMIT 5;

-- Top Borrowers
-- Write a query to identify the top 3 members who have borrowed the most books.
-- Display their name, email, and the total number of books borrowed.

SELECT members.member_id, name, COUNT(*) AS borrowed_books
FROM borrow_records
         JOIN members ON members.member_id = borrow_records.member_id
GROUP BY (members.member_id)
ORDER BY borrowed_books DESC
LIMIT 2;


SELECT COUNT(*)
FROM borrow_records
GROUP BY member_id
ORDER BY count DESC
LIMIT 1;

SELECT members.member_id, name, COUNT(*) AS borrowed_books
FROM borrow_records
         JOIN members ON members.member_id = borrow_records.member_id
GROUP BY (members.member_id)
HAVING COUNT(*) = 2;

SELECT members.member_id, name, COUNT(*) AS borrowed_books
FROM borrow_records
         JOIN members ON members.member_id = borrow_records.member_id
GROUP BY (members.member_id)
HAVING COUNT(*) IN (
    SELECT COUNT(*)
    FROM borrow_records
    GROUP BY member_id
    ORDER BY count DESC
    LIMIT 5
);


SELECT *
FROM books
WHERE book_id IN (3, 4);