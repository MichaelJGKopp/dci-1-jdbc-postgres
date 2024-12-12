create database libms_db
    with owner postgres;

create table public.members
(
    member_id serial
        constraint members_pk
            primary key,
    name        varchar not null,
    email       varchar not null,
    phone       varchar not null
);

alter table public.members
    owner to postgres;

create table public.books
(
    book_id serial
        constraint books_pk
            primary key,
    title      varchar        not null,
    author     varchar        not null,
    genre      varchar        not null
);

alter table public.books
    owner to postgres;

create table public.borrow_records
(
    borrow_id     serial
        constraint borrow_records_pk
            primary key,
    member_id  integer not null
        constraint borrow_records_members_member_id_fk
            references public.members
            on delete cascade,
    book_id  integer not null
        constraint borrow_records_books_book_id_fk
            references public.books
            on delete cascade,
    borrow_date   date default current_date not null,
    return_date   date not null
);

alter table public.borrow_records
    owner to postgres;