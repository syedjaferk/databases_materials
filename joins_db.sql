--
-- PostgreSQL database dump
--

\restrict 0KYDGYPlk4kcn2Td4PjQRcfTgi2o7Ikufl1vaBcXABxV2jmYQ3UsoujuYGIKgJh

-- Dumped from database version 17.7 (Ubuntu 17.7-3.pgdg22.04+1)
-- Dumped by pg_dump version 17.7 (Ubuntu 17.7-3.pgdg22.04+1)

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
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: syedjaferk
--

COPY public.departments (dept_id, dept_name) FROM stdin;
1	HR
2	Finance
3	IT
4	Food
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: syedjaferk
--

COPY public.employees (emp_id, emp_name, dept_id, salary) FROM stdin;
4	David	\N	60500
5	Bob	2	7878
2	Bob	2	66200
3	Charlie Chaplin	3	12345
\.


--
-- Data for Name: orders_feb_2026; Type: TABLE DATA; Schema: public; Owner: syedjaferk
--

COPY public.orders_feb_2026 (id, order_date, amount) FROM stdin;
6	2026-02-05	200
\.


--
-- Data for Name: orders_jan_2026; Type: TABLE DATA; Schema: public; Owner: syedjaferk
--

COPY public.orders_jan_2026 (id, order_date, amount) FROM stdin;
3	2026-01-03	200
4	2026-01-05	200
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: syedjaferk
--

COPY public.users (id, name) FROM stdin;
1	Jafer
2	Postgres
3	Postgres
4	Postgres
5	Syed Jafer
6	Syed Jafer
\.


--
-- Name: departments_dept_id_seq; Type: SEQUENCE SET; Schema: public; Owner: syedjaferk
--

SELECT pg_catalog.setval('public.departments_dept_id_seq', 3, true);


--
-- Name: employees_emp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: syedjaferk
--

SELECT pg_catalog.setval('public.employees_emp_id_seq', 4, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: syedjaferk
--

SELECT pg_catalog.setval('public.orders_id_seq', 6, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: syedjaferk
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 0KYDGYPlk4kcn2Td4PjQRcfTgi2o7Ikufl1vaBcXABxV2jmYQ3UsoujuYGIKgJh

