\set ON_ERROR_STOP on

DROP DATABASE IF EXISTS msc_2020;
DROP USER IF EXISTS msc_2020_admin;
DROP USER IF EXISTS msc_2020_tester;

CREATE USER msc_2020_admin WITH PASSWORD 'msc_2020_admin';
CREATE USER msc_2020_tester WITH PASSWORD 'msc_2020_tester';
CREATE DATABASE msc_2020 OWNER msc_2020_admin ENCODING = 'UTF8';

\c msc_2020

CREATE TABLE customer (
    id bigint PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    nip bigint,
    pesel bigint,
    invoice_address_id bigint,
    shipment_address_id bigint
);

CREATE TABLE product (
    id bigint PRIMARY KEY,
    category_id bigint,
    name varchar(255),
    description text
);

CREATE TABLE sale (
    id bigint PRIMARY KEY,
    offer_customer_id bigint,
    transaction_date date
);

CREATE TABLE offer (
    id bigint PRIMARY KEY,
    product_id bigint,
    quantity int,
    regular_price decimal(19, 4),
    offer_price decimal(19, 4),
    start_date date,
    end_date date
);

CREATE TABLE address (
    id bigint PRIMARY KEY,
    street varchar(255),
    house_number varchar(10),
    postal_code varchar(10),
    city varchar(255)
);

CREATE TABLE product_category (
    id bigint PRIMARY KEY,
    value varchar(255)
);

CREATE TABLE offer_customer (
    id bigint PRIMARY KEY,
    offer_id bigint,
    customer_id bigint
);

ALTER TABLE public.address OWNER TO msc_2020_admin;
ALTER TABLE public.customer OWNER TO msc_2020_admin;
ALTER TABLE public.offer OWNER TO msc_2020_admin;
ALTER TABLE public.offer_customer OWNER TO msc_2020_admin;
ALTER TABLE public.product OWNER TO msc_2020_admin;
ALTER TABLE public.product_category OWNER TO msc_2020_admin;
ALTER TABLE public.sale OWNER TO msc_2020_admin;

GRANT SELECT ON TABLE public.address TO msc_2020_tester;
GRANT SELECT ON TABLE public.customer TO msc_2020_tester;
GRANT SELECT ON TABLE public.offer TO msc_2020_tester;
GRANT SELECT ON TABLE public.offer_customer TO msc_2020_tester;
GRANT SELECT ON TABLE public.product TO msc_2020_tester;
GRANT SELECT ON TABLE public.product_category TO msc_2020_tester;
GRANT SELECT ON TABLE public.sale TO msc_2020_tester;
