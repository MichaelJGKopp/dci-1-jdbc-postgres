SELECT b.genre, count(br.return_date) AS borrowed_books_count
FROM public.books b
         JOIN public.borrow_records br on b.book_id = br.book_id
         JOIN public.members m on br.member_id = m.member_id
GROUP BY b.genre
ORDER BY borrowed_books_count DESC