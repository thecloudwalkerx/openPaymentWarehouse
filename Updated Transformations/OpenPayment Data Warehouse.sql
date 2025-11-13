--
-- PostgreSQL database dump
--

\restrict cxFx1f0bAzm58doCzx0VHxVq8WTsLPbJFstpVWHCq7yQ32NkALorw6hgvxu5R9a

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-06 17:24:21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4983 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 57998)
-- Name: dim_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_address (
    address_id integer NOT NULL,
    address_full text NOT NULL,
    country text NOT NULL,
    state text NOT NULL,
    city text NOT NULL,
    zip_code text NOT NULL
);


ALTER TABLE public.dim_address OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 57997)
-- Name: dim_address_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dim_address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dim_address_address_id_seq OWNER TO postgres;

--
-- TOC entry 4984 (class 0 OID 0)
-- Dependencies: 219
-- Name: dim_address_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dim_address_address_id_seq OWNED BY public.dim_address.address_id;


--
-- TOC entry 226 (class 1259 OID 58025)
-- Name: dim_date; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_date (
    date_id integer NOT NULL,
    payment_day text NOT NULL,
    payment_month text NOT NULL,
    payment_year text NOT NULL,
    publication_day text NOT NULL,
    publication_month text NOT NULL,
    publication_year text NOT NULL
);


ALTER TABLE public.dim_date OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 58024)
-- Name: dim_date_date_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dim_date_date_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dim_date_date_id_seq OWNER TO postgres;

--
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 225
-- Name: dim_date_date_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dim_date_date_id_seq OWNED BY public.dim_date.date_id;


--
-- TOC entry 228 (class 1259 OID 58043)
-- Name: dim_flag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_flag (
    flag_id integer NOT NULL,
    change_type text NOT NULL,
    indicator_third_party text NOT NULL,
    indicator_related_product text NOT NULL,
    indicator_covered text NOT NULL
);


ALTER TABLE public.dim_flag OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 58042)
-- Name: dim_flag_flag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dim_flag_flag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dim_flag_flag_id_seq OWNER TO postgres;

--
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 227
-- Name: dim_flag_flag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dim_flag_flag_id_seq OWNED BY public.dim_flag.flag_id;


--
-- TOC entry 232 (class 1259 OID 58068)
-- Name: dim_identity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_identity (
    identity_id integer NOT NULL,
    type text NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL
);


ALTER TABLE public.dim_identity OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 58067)
-- Name: dim_identity_identity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dim_identity_identity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dim_identity_identity_id_seq OWNER TO postgres;

--
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 231
-- Name: dim_identity_identity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dim_identity_identity_id_seq OWNED BY public.dim_identity.identity_id;


--
-- TOC entry 224 (class 1259 OID 58016)
-- Name: dim_manufacturer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_manufacturer (
    manufacturer_id integer NOT NULL,
    manufacturer_name text NOT NULL,
    manufacturer_state text NOT NULL,
    manufacturer_country text NOT NULL
);


ALTER TABLE public.dim_manufacturer OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 58015)
-- Name: dim_manufacturer_manufacturer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dim_manufacturer_manufacturer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dim_manufacturer_manufacturer_id_seq OWNER TO postgres;

--
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 223
-- Name: dim_manufacturer_manufacturer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dim_manufacturer_manufacturer_id_seq OWNED BY public.dim_manufacturer.manufacturer_id;


--
-- TOC entry 230 (class 1259 OID 58052)
-- Name: dim_payment_detail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_payment_detail (
    payment_detail_id integer NOT NULL,
    payment_form text NOT NULL,
    payment_nature text NOT NULL
);


ALTER TABLE public.dim_payment_detail OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 58051)
-- Name: dim_payment_detail_payment_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dim_payment_detail_payment_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dim_payment_detail_payment_detail_id_seq OWNER TO postgres;

--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 229
-- Name: dim_payment_detail_payment_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dim_payment_detail_payment_detail_id_seq OWNED BY public.dim_payment_detail.payment_detail_id;


--
-- TOC entry 222 (class 1259 OID 58007)
-- Name: dim_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_product (
    product_id integer NOT NULL,
    product_type text NOT NULL,
    therapeutic_area text NOT NULL,
    product_name text NOT NULL
);


ALTER TABLE public.dim_product OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 58006)
-- Name: dim_product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dim_product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dim_product_product_id_seq OWNER TO postgres;

--
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 221
-- Name: dim_product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dim_product_product_id_seq OWNED BY public.dim_product.product_id;


--
-- TOC entry 218 (class 1259 OID 57989)
-- Name: dim_profession; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_profession (
    profession_id integer NOT NULL,
    primary_type text NOT NULL,
    specialty_group text NOT NULL,
    specialty text NOT NULL,
    subspecialty text NOT NULL,
    license_code text NOT NULL
);


ALTER TABLE public.dim_profession OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 57988)
-- Name: dim_profession_profession_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dim_profession_profession_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dim_profession_profession_id_seq OWNER TO postgres;

--
-- TOC entry 4991 (class 0 OID 0)
-- Dependencies: 217
-- Name: dim_profession_profession_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dim_profession_profession_id_seq OWNED BY public.dim_profession.profession_id;


--
-- TOC entry 242 (class 1259 OID 58115)
-- Name: fact_payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fact_payment (
    payment_id integer NOT NULL,
    payment_amount integer NOT NULL,
    payment_number integer NOT NULL,
    address_id integer NOT NULL,
    date_id integer NOT NULL,
    flag_id integer NOT NULL,
    identity_id integer NOT NULL,
    manufacturer_id integer NOT NULL,
    payment_detail_id integer NOT NULL,
    product_id integer NOT NULL,
    profession_id integer NOT NULL
);


ALTER TABLE public.fact_payment OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 58107)
-- Name: fact_payment_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fact_payment_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fact_payment_address_id_seq OWNER TO postgres;

--
-- TOC entry 4992 (class 0 OID 0)
-- Dependencies: 234
-- Name: fact_payment_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fact_payment_address_id_seq OWNED BY public.fact_payment.address_id;


--
-- TOC entry 235 (class 1259 OID 58108)
-- Name: fact_payment_date_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fact_payment_date_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fact_payment_date_id_seq OWNER TO postgres;

--
-- TOC entry 4993 (class 0 OID 0)
-- Dependencies: 235
-- Name: fact_payment_date_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fact_payment_date_id_seq OWNED BY public.fact_payment.date_id;


--
-- TOC entry 236 (class 1259 OID 58109)
-- Name: fact_payment_flag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fact_payment_flag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fact_payment_flag_id_seq OWNER TO postgres;

--
-- TOC entry 4994 (class 0 OID 0)
-- Dependencies: 236
-- Name: fact_payment_flag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fact_payment_flag_id_seq OWNED BY public.fact_payment.flag_id;


--
-- TOC entry 237 (class 1259 OID 58110)
-- Name: fact_payment_identity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fact_payment_identity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fact_payment_identity_id_seq OWNER TO postgres;

--
-- TOC entry 4995 (class 0 OID 0)
-- Dependencies: 237
-- Name: fact_payment_identity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fact_payment_identity_id_seq OWNED BY public.fact_payment.identity_id;


--
-- TOC entry 238 (class 1259 OID 58111)
-- Name: fact_payment_manufacturer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fact_payment_manufacturer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fact_payment_manufacturer_id_seq OWNER TO postgres;

--
-- TOC entry 4996 (class 0 OID 0)
-- Dependencies: 238
-- Name: fact_payment_manufacturer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fact_payment_manufacturer_id_seq OWNED BY public.fact_payment.manufacturer_id;


--
-- TOC entry 239 (class 1259 OID 58112)
-- Name: fact_payment_payment_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fact_payment_payment_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fact_payment_payment_detail_id_seq OWNER TO postgres;

--
-- TOC entry 4997 (class 0 OID 0)
-- Dependencies: 239
-- Name: fact_payment_payment_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fact_payment_payment_detail_id_seq OWNED BY public.fact_payment.payment_detail_id;


--
-- TOC entry 233 (class 1259 OID 58106)
-- Name: fact_payment_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fact_payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fact_payment_payment_id_seq OWNER TO postgres;

--
-- TOC entry 4998 (class 0 OID 0)
-- Dependencies: 233
-- Name: fact_payment_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fact_payment_payment_id_seq OWNED BY public.fact_payment.payment_id;


--
-- TOC entry 240 (class 1259 OID 58113)
-- Name: fact_payment_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fact_payment_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fact_payment_product_id_seq OWNER TO postgres;

--
-- TOC entry 4999 (class 0 OID 0)
-- Dependencies: 240
-- Name: fact_payment_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fact_payment_product_id_seq OWNED BY public.fact_payment.product_id;


--
-- TOC entry 241 (class 1259 OID 58114)
-- Name: fact_payment_profession_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fact_payment_profession_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fact_payment_profession_id_seq OWNER TO postgres;

--
-- TOC entry 5000 (class 0 OID 0)
-- Dependencies: 241
-- Name: fact_payment_profession_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fact_payment_profession_id_seq OWNED BY public.fact_payment.profession_id;


--
-- TOC entry 4791 (class 2604 OID 58001)
-- Name: dim_address address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_address ALTER COLUMN address_id SET DEFAULT nextval('public.dim_address_address_id_seq'::regclass);


--
-- TOC entry 4794 (class 2604 OID 58028)
-- Name: dim_date date_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_date ALTER COLUMN date_id SET DEFAULT nextval('public.dim_date_date_id_seq'::regclass);


--
-- TOC entry 4795 (class 2604 OID 58046)
-- Name: dim_flag flag_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_flag ALTER COLUMN flag_id SET DEFAULT nextval('public.dim_flag_flag_id_seq'::regclass);


--
-- TOC entry 4797 (class 2604 OID 58071)
-- Name: dim_identity identity_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_identity ALTER COLUMN identity_id SET DEFAULT nextval('public.dim_identity_identity_id_seq'::regclass);


--
-- TOC entry 4793 (class 2604 OID 58019)
-- Name: dim_manufacturer manufacturer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_manufacturer ALTER COLUMN manufacturer_id SET DEFAULT nextval('public.dim_manufacturer_manufacturer_id_seq'::regclass);


--
-- TOC entry 4796 (class 2604 OID 58055)
-- Name: dim_payment_detail payment_detail_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_payment_detail ALTER COLUMN payment_detail_id SET DEFAULT nextval('public.dim_payment_detail_payment_detail_id_seq'::regclass);


--
-- TOC entry 4792 (class 2604 OID 58010)
-- Name: dim_product product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_product ALTER COLUMN product_id SET DEFAULT nextval('public.dim_product_product_id_seq'::regclass);


--
-- TOC entry 4790 (class 2604 OID 57992)
-- Name: dim_profession profession_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_profession ALTER COLUMN profession_id SET DEFAULT nextval('public.dim_profession_profession_id_seq'::regclass);


--
-- TOC entry 4798 (class 2604 OID 58118)
-- Name: fact_payment payment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment ALTER COLUMN payment_id SET DEFAULT nextval('public.fact_payment_payment_id_seq'::regclass);


--
-- TOC entry 4799 (class 2604 OID 58119)
-- Name: fact_payment address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment ALTER COLUMN address_id SET DEFAULT nextval('public.fact_payment_address_id_seq'::regclass);


--
-- TOC entry 4800 (class 2604 OID 58120)
-- Name: fact_payment date_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment ALTER COLUMN date_id SET DEFAULT nextval('public.fact_payment_date_id_seq'::regclass);


--
-- TOC entry 4801 (class 2604 OID 58121)
-- Name: fact_payment flag_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment ALTER COLUMN flag_id SET DEFAULT nextval('public.fact_payment_flag_id_seq'::regclass);


--
-- TOC entry 4802 (class 2604 OID 58122)
-- Name: fact_payment identity_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment ALTER COLUMN identity_id SET DEFAULT nextval('public.fact_payment_identity_id_seq'::regclass);


--
-- TOC entry 4803 (class 2604 OID 58123)
-- Name: fact_payment manufacturer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment ALTER COLUMN manufacturer_id SET DEFAULT nextval('public.fact_payment_manufacturer_id_seq'::regclass);


--
-- TOC entry 4804 (class 2604 OID 58124)
-- Name: fact_payment payment_detail_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment ALTER COLUMN payment_detail_id SET DEFAULT nextval('public.fact_payment_payment_detail_id_seq'::regclass);


--
-- TOC entry 4805 (class 2604 OID 58125)
-- Name: fact_payment product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment ALTER COLUMN product_id SET DEFAULT nextval('public.fact_payment_product_id_seq'::regclass);


--
-- TOC entry 4806 (class 2604 OID 58126)
-- Name: fact_payment profession_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment ALTER COLUMN profession_id SET DEFAULT nextval('public.fact_payment_profession_id_seq'::regclass);


--
-- TOC entry 4810 (class 2606 OID 58005)
-- Name: dim_address dim_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_address
    ADD CONSTRAINT dim_address_pkey PRIMARY KEY (address_id);


--
-- TOC entry 4816 (class 2606 OID 58032)
-- Name: dim_date dim_date_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_date
    ADD CONSTRAINT dim_date_pkey PRIMARY KEY (date_id);


--
-- TOC entry 4818 (class 2606 OID 58050)
-- Name: dim_flag dim_flag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_flag
    ADD CONSTRAINT dim_flag_pkey PRIMARY KEY (flag_id);


--
-- TOC entry 4822 (class 2606 OID 58075)
-- Name: dim_identity dim_identity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_identity
    ADD CONSTRAINT dim_identity_pkey PRIMARY KEY (identity_id);


--
-- TOC entry 4814 (class 2606 OID 58023)
-- Name: dim_manufacturer dim_manufacturer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_manufacturer
    ADD CONSTRAINT dim_manufacturer_pkey PRIMARY KEY (manufacturer_id);


--
-- TOC entry 4820 (class 2606 OID 58059)
-- Name: dim_payment_detail dim_payment_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_payment_detail
    ADD CONSTRAINT dim_payment_detail_pkey PRIMARY KEY (payment_detail_id);


--
-- TOC entry 4812 (class 2606 OID 58014)
-- Name: dim_product dim_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_product
    ADD CONSTRAINT dim_product_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4808 (class 2606 OID 57996)
-- Name: dim_profession dim_profession_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_profession
    ADD CONSTRAINT dim_profession_pkey PRIMARY KEY (profession_id);


--
-- TOC entry 4824 (class 2606 OID 58128)
-- Name: fact_payment fact_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment
    ADD CONSTRAINT fact_payment_pkey PRIMARY KEY (payment_id);


--
-- TOC entry 4825 (class 2606 OID 58132)
-- Name: fact_payment fk_fact_payment_address; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment
    ADD CONSTRAINT fk_fact_payment_address FOREIGN KEY (address_id) REFERENCES public.dim_address(address_id);


--
-- TOC entry 4826 (class 2606 OID 58137)
-- Name: fact_payment fk_fact_payment_date; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment
    ADD CONSTRAINT fk_fact_payment_date FOREIGN KEY (date_id) REFERENCES public.dim_date(date_id);


--
-- TOC entry 4827 (class 2606 OID 58157)
-- Name: fact_payment fk_fact_payment_detail; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment
    ADD CONSTRAINT fk_fact_payment_detail FOREIGN KEY (payment_detail_id) REFERENCES public.dim_payment_detail(payment_detail_id);


--
-- TOC entry 4828 (class 2606 OID 58142)
-- Name: fact_payment fk_fact_payment_flag; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment
    ADD CONSTRAINT fk_fact_payment_flag FOREIGN KEY (flag_id) REFERENCES public.dim_flag(flag_id);


--
-- TOC entry 4829 (class 2606 OID 58147)
-- Name: fact_payment fk_fact_payment_identity; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment
    ADD CONSTRAINT fk_fact_payment_identity FOREIGN KEY (identity_id) REFERENCES public.dim_identity(identity_id);


--
-- TOC entry 4830 (class 2606 OID 58152)
-- Name: fact_payment fk_fact_payment_manufacturer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment
    ADD CONSTRAINT fk_fact_payment_manufacturer FOREIGN KEY (manufacturer_id) REFERENCES public.dim_manufacturer(manufacturer_id);


--
-- TOC entry 4831 (class 2606 OID 58162)
-- Name: fact_payment fk_fact_payment_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment
    ADD CONSTRAINT fk_fact_payment_product FOREIGN KEY (product_id) REFERENCES public.dim_product(product_id);


--
-- TOC entry 4832 (class 2606 OID 58167)
-- Name: fact_payment fk_fact_payment_profession; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_payment
    ADD CONSTRAINT fk_fact_payment_profession FOREIGN KEY (profession_id) REFERENCES public.dim_profession(profession_id);


-- Completed on 2025-10-06 17:24:21

--
-- PostgreSQL database dump complete
--

\unrestrict cxFx1f0bAzm58doCzx0VHxVq8WTsLPbJFstpVWHCq7yQ32NkALorw6hgvxu5R9a

