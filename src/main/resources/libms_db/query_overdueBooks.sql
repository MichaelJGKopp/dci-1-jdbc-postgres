SELECT b.title, m.name, '2024-12-10'::date - br.return_date AS days_overdue--, br.return_date
    FROM public.books b
    JOIN public.borrow_records br on b.book_id = br.book_id
    JOIN public.members m on br.member_id = m.member_id
WHERE br.return_date < '2024-12-10'
ORDER BY days_overdue DESC, b.title DESC;

-- result with pereira, using is null for date
SELECT
    title,
    name,
    CURRENT_DATE,
    borrow_date + 10 AS due_date,
    CURRENT_DATE - (borrow_date + 10) AS days_overdue
FROM borrow_records
         JOIN members ON borrow_records.member_id = members.member_id
         JOIN books ON borrow_records.book_id = books.book_id
WHERE
    return_date IS NULL
  AND
            CURRENT_DATE - (borrow_date + 10) > 0;