--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE IF EXISTS s4s;
--
-- Name: s4s; Type: DATABASE; Schema: -; Owner: smartnet
--

CREATE DATABASE s4s WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE s4s OWNER TO smartnet;

\connect s4s

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: s4s; Type: COMMENT; Schema: -; Owner: smartnet
--

COMMENT ON DATABASE s4s IS 'Проект S4S';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: users; Type: TABLE; Schema: public; Owner: smartnet
--

CREATE TABLE users (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name character varying(256),
    soname character varying(256),
    family character varying(256),
    bday date,
    sex boolean,
    email character varying(256),
    pass character varying(512)
);


ALTER TABLE users OWNER TO smartnet;

--
-- Name: TABLE users; Type: COMMENT; Schema: public; Owner: smartnet
--

COMMENT ON TABLE users IS 'Пользователи';


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: smartnet
--

COPY users (id, name, soname, family, bday, sex, email, pass) FROM stdin;
e4cc914d-3bd8-4691-82cb-2d8713f0359a	Иван	Эдуардович	Качинский	1959-03-16	t	ivan@kachinskiy.ru	\N
\.


--
-- Name: users users_id_pk; Type: CONSTRAINT; Schema: public; Owner: smartnet
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_id_pk PRIMARY KEY (id);


--
-- Name: users_id_uindex; Type: INDEX; Schema: public; Owner: smartnet
--

CREATE UNIQUE INDEX users_id_uindex ON users USING btree (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

