SELECT b.title, m.name, '2024-12-10'::date - br.return_date AS days_overdue--, br.return_date
    FROM public.books b
    JOIN public.borrow_records br on b.book_id = br.book_id
    JOIN public.members m on br.member_id = m.member_id
WHERE br.return_date < '2024-12-10'
ORDER BY days_overdue DESC, b.title DESC