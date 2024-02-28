

-- Database: BestKindBrewery

-- DROP DATABASE IF EXISTS "BestKindBrewery";

CREATE DATABASE "BestKindBrewery"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Create table: Beer    

CREATE TABLE IF NOT EXISTS public."Beer"
(
    beer_id integer NOT NULL DEFAULT nextval('"Beer_beer_id_seq"'::regclass),
    beer_name character varying(100) COLLATE pg_catalog."default",
    beer_type character varying(100) COLLATE pg_catalog."default",
    price_single numeric,
    price_bucket numeric,
    CONSTRAINT "Beer_pkey" PRIMARY KEY (beer_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Beer"
    OWNER to postgres;

-- Create table: Customers

CREATE TABLE IF NOT EXISTS public."Customers"
(
    customer_id integer NOT NULL DEFAULT nextval('"Customers_customer_id_seq"'::regclass),
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    email character varying(100) COLLATE pg_catalog."default" NOT NULL,
    address character varying(100) COLLATE pg_catalog."default" NOT NULL,
    phone character varying(100) COLLATE pg_catalog."default" NOT NULL,
    created_at date,
    CONSTRAINT "Customers_pkey" PRIMARY KEY (customer_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Customers"
    OWNER to postgres;

-- Create table: Deliveries

CREATE TABLE IF NOT EXISTS public."Deliveries"
(
    delivery_id integer NOT NULL DEFAULT nextval('"Deliveries_delivery_id_seq"'::regclass),
    amount_delivered integer,
    beer_id integer,
    delivery_date date,
    customer_id integer NOT NULL,
    CONSTRAINT "Deliveries_pkey" PRIMARY KEY (delivery_id),
    CONSTRAINT customer_id FOREIGN KEY (customer_id)
        REFERENCES public."Customers" (customer_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Deliveries"
    OWNER to postgres;

-- Create table: Locations

CREATE TABLE IF NOT EXISTS public."Locations"
(
    location_id integer NOT NULL DEFAULT nextval('"Locations_location_id_seq"'::regclass),
    location_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    location_type character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Locations_pkey" PRIMARY KEY (location_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Locations"
    OWNER to postgres;

-- Create table: Recycling

CREATE TABLE IF NOT EXISTS public."Recycling"
(
    recycling_id integer NOT NULL DEFAULT nextval('"Recycling_recycling_id_seq"'::regclass),
    recycling_can_kg integer,
    recycling_bucket_kg integer,
    pickup_date date,
    delivery_id integer,
    CONSTRAINT "Recycling_pkey" PRIMARY KEY (recycling_id),
    CONSTRAINT delivery_id FOREIGN KEY (delivery_id)
        REFERENCES public."Deliveries" (delivery_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Recycling"
    OWNER to postgres;

-- Create table: Rewards

CREATE TABLE IF NOT EXISTS public."Rewards"
(
    reward_id integer NOT NULL DEFAULT nextval('"Rewards_reward_id_seq"'::regclass),
    customer_id integer,
    amount_spent numeric,
    reward_points integer,
    CONSTRAINT "Rewards_pkey" PRIMARY KEY (reward_id),
    CONSTRAINT customer_id FOREIGN KEY (customer_id)
        REFERENCES public."Customers" (customer_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Rewards"
    OWNER to postgres;

-- Create table: Sales

CREATE TABLE IF NOT EXISTS public."Sales"
(
    sale_id integer NOT NULL DEFAULT nextval('"Sales_sale_id_seq"'::regclass),
    beer_id integer,
    salesrep_id integer,
    location_id integer,
    customer_id integer,
    sale_amount numeric,
    sale_date date,
    CONSTRAINT "Sales_pkey" PRIMARY KEY (sale_id),
    CONSTRAINT beer_id FOREIGN KEY (beer_id)
        REFERENCES public."Beer" (beer_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT customer_id FOREIGN KEY (customer_id)
        REFERENCES public."Customers" (customer_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT location_id FOREIGN KEY (location_id)
        REFERENCES public."Locations" (location_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT salesrep_id FOREIGN KEY (salesrep_id)
        REFERENCES public."SalesReps" (salesrep_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Sales"
    OWNER to postgres;

 -- Create table: SalesReps

CREATE TABLE IF NOT EXISTS public."SalesReps"
(
    salesrep_id integer NOT NULL DEFAULT nextval('"SalesReps_salesrep_id_seq"'::regclass),
    rep_name character varying COLLATE pg_catalog."default",
    total_sales integer,
    rep_awards character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT "SalesReps_pkey" PRIMARY KEY (salesrep_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."SalesReps"
    OWNER to postgres;    

