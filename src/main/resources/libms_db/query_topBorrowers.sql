SELECT m.name, count(br.return_date) AS borrowed_books_count,
       string_agg(b.title, ', ' ORDER BY b.title) AS titles
FROM public.books b
         JOIN public.borrow_records br on b.book_id = br.book_id
         JOIN public.members m on br.member_id = m.member_id
GROUP BY m.name
ORDER BY borrowed_books_count DESC
LIMIT 5