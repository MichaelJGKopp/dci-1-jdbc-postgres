create database oms_db
    with owner postgres;

\c oms_db;

create table public.customers
(
    customer_id serial
        constraint customers_pk
            primary key,
    name        varchar not null,
    email       varchar not null,
    address     varchar not null
);

alter table public.customers
    owner to postgres;

create table public.products
(
    product_id serial
        constraint products_pk
            primary key,
    name       varchar        not null,
    price      numeric(10, 2) not null
);

alter table public.products
    owner to postgres;

create table public.orders
(
    order_id     serial
        constraint orders_pk
            primary key,
    customer_id  integer                   not null
        constraint orders_customers_customer_id_fk
            references public.customers
            on delete cascade,
    order_date   date default CURRENT_DATE not null,
    total_amount numeric(10, 2)            not null
);

alter table public.orders
    owner to postgres;

create table public.order_details
(
    order_id   integer not null
        constraint order_details_orders_order_id_fk
            references public.orders,
    product_id integer not null
        constraint order_details_products_product_id_fk
            references public.products,
    quantity   integer not null,
    constraint order_details_pk
        primary key (product_id, order_id)
);

alter table public.order_details
    owner to postgres;

