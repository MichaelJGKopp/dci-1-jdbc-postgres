create database crms_db
    with owner postgres;

create table public.customers
(
    customer_id serial
        constraint customers_pk
            primary key,
    name        varchar not null,
    address     varchar not null,
    phone       varchar not null
);

alter table public.customers
    owner to postgres;

create table public.cars
(
    car_id serial
        constraint cars_pk
            primary key,
    brand       varchar        not null,
    model       varchar        not null,
    rental_price_per_day numeric(10, 2) not null,
    availability_status boolean not null default false
);

alter table public.cars
    owner to postgres;

create table public.rentals
(
    rental_id     serial
        constraint rentals_pk
            primary key,
    customer_id  integer not null
        constraint rentals_customers_customer_id_fk
            references public.customers
            on delete cascade,
    car_id  integer not null
        constraint rentals_cars_car_id_fk
            references public.cars
            on delete cascade,
    rental_date   date default current_date not null,
    return_date   date not null,
    total_cost    numeric(10, 2) not null
);

alter table public.rentals
    owner to postgres;