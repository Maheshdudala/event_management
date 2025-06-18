--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.3

-- Started on 2025-06-18 19:41:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4946 (class 0 OID 17375)
-- Dependencies: 222
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 4948 (class 0 OID 17383)
-- Dependencies: 224
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 4944 (class 0 OID 17369)
-- Dependencies: 220
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add event	7	add_event
26	Can change event	7	change_event
27	Can delete event	7	delete_event
28	Can view event	7	view_event
29	Can add attendee	8	add_attendee
30	Can change attendee	8	change_attendee
31	Can delete attendee	8	delete_attendee
32	Can view attendee	8	view_attendee
\.


--
-- TOC entry 4950 (class 0 OID 17389)
-- Dependencies: 226
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- TOC entry 4952 (class 0 OID 17397)
-- Dependencies: 228
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 4954 (class 0 OID 17403)
-- Dependencies: 230
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 4956 (class 0 OID 17461)
-- Dependencies: 232
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 4942 (class 0 OID 17361)
-- Dependencies: 218
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	events	event
8	events	attendee
\.


--
-- TOC entry 4940 (class 0 OID 17353)
-- Dependencies: 216
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2025-06-18 13:01:32.192997+05:30
2	auth	0001_initial	2025-06-18 13:01:32.36431+05:30
3	admin	0001_initial	2025-06-18 13:01:32.401232+05:30
4	admin	0002_logentry_remove_auto_add	2025-06-18 13:01:32.408736+05:30
5	admin	0003_logentry_add_action_flag_choices	2025-06-18 13:01:32.417241+05:30
6	contenttypes	0002_remove_content_type_name	2025-06-18 13:01:32.438402+05:30
7	auth	0002_alter_permission_name_max_length	2025-06-18 13:01:32.447753+05:30
8	auth	0003_alter_user_email_max_length	2025-06-18 13:01:32.454406+05:30
9	auth	0004_alter_user_username_opts	2025-06-18 13:01:32.460386+05:30
10	auth	0005_alter_user_last_login_null	2025-06-18 13:01:32.46693+05:30
11	auth	0006_require_contenttypes_0002	2025-06-18 13:01:32.468901+05:30
12	auth	0007_alter_validators_add_error_messages	2025-06-18 13:01:32.476927+05:30
13	auth	0008_alter_user_username_max_length	2025-06-18 13:01:32.494543+05:30
14	auth	0009_alter_user_last_name_max_length	2025-06-18 13:01:32.503533+05:30
15	auth	0010_alter_group_name_max_length	2025-06-18 13:01:32.512898+05:30
16	auth	0011_update_proxy_permissions	2025-06-18 13:01:32.519116+05:30
17	auth	0012_alter_user_first_name_max_length	2025-06-18 13:01:32.526501+05:30
18	events	0001_initial	2025-06-18 13:01:32.57131+05:30
19	sessions	0001_initial	2025-06-18 13:01:32.595288+05:30
\.


--
-- TOC entry 4961 (class 0 OID 17514)
-- Dependencies: 237
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 4960 (class 0 OID 17499)
-- Dependencies: 236
-- Data for Name: events_attendee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events_attendee (id, name, email, event_id) FROM stdin;
1	Rajesh Kumar	rajesh.kumar@gmail.com	5
2	Priya Sharma	priya.sharma@yahoo.com	5
3	Arjun Patel	arjun.patel@outlook.com	5
4	Sneha Reddy	sneha.reddy@gmail.com	5
5	Vikram Singh	vikram.singh@hotmail.com	5
6	Deepika Iyer	deepika.iyer@gmail.com	6
7	Rohit Agarwal	rohit.agarwal@outlook.com	6
8	Meera Nair	meera.nair@yahoo.com	6
9	Suresh Babu	suresh.babu@gmail.com	6
10	Rohit Agarwal	rohit.agarwal@outlook.com	7
11	Arjun Patel	arjun.patel@outlook.com	7
12	Sneha Reddy	sneha.reddy@gmail.com	7
13	Vikram Singh	vikram.singh@hotmail.com	7
14	Ananya Gupta	ananya.gupta@gmail.com	7
15	Karthik Krishnan	karthik.krishnan@yahoo.com	7
16	Deepika Iyer	deepika.iyer@gmail.com	7
17	Meera Nair	meera.nair@yahoo.com	7
18	Meera Nair	meera.nair@yahoo.com	8
19	Deepika Iyer	deepika.iyer@gmail.com	8
20	Karthik Krishnan	karthik.krishnan@yahoo.com	8
21	Ananya Gupta	ananya.gupta@gmail.com	8
22	Sneha Reddy	sneha.reddy@gmail.com	8
23	Priya Sharma	priya.sharma@yahoo.com	8
24	Rajesh Kumar	rajesh.kumar@gmail.com	8
25	Amit Joshi	amit.joshi@gmail.com	8
26	Ritu Kapoor	ritu.kapoor@yahoo.com	8
27	Sanjay Verma	sanjay.verma@outlook.com	8
28	Sanjay Verma	sanjay.verma@outlook.com	7
29	Manoj Tiwari	manoj.tiwari@gmail.com	7
30	Divya Sinha	divya.sinha@outlook.com	7
31	Rahul Mishra	rahul.mishra@yahoo.com	7
32	Neha Jain	neha.jain@gmail.com	7
33	Aditya Kulkarni	aditya.kulkarni@gmail.com	7
34	Shreya Malhotra	shreya.malhotra@yahoo.com	7
35	Varun Chopra	varun.chopra@outlook.com	7
36	Isha Goel	isha.goel@gmail.com	7
37	Harsh Agrawal	harsh.agrawal@gmail.com	7
38	Tanvi Shah	tanvi.shah@yahoo.com	7
39	Abhishek Pandey	abhishek.pandey@outlook.com	7
40	Ritika Saxena	ritika.saxena@gmail.com	7
41	Gaurav Bhardwaj	gaurav.bhardwaj@hotmail.com	7
42	Simran Kaur	simran.kaur@yahoo.com	7
\.


--
-- TOC entry 4958 (class 0 OID 17490)
-- Dependencies: 234
-- Data for Name: events_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events_event (id, name, location, start_time, end_time, max_capacity) FROM stdin;
5	Tech Conference 2025	Chennai Convention Center	2025-07-15 09:00:00+05:30	2025-07-15 18:00:00+05:30	100
6	Summer Music Festival	Marina Beach Amphitheater	2025-08-20 17:00:00+05:30	2025-08-20 23:00:00+05:30	150
7	Startup Pitch Night	T-Hub, Hyderabad	2025-09-10 18:30:00+05:30	2025-09-10 21:30:00+05:30	200
8	AI & ML Workshop	IIT Madras	2025-10-05 10:00:00+05:30	2025-10-05 16:00:00+05:30	10
9	Food & Culture Festival	Phoenix Mall, Bangalore	2025-11-12 11:00:00+05:30	2025-11-12 22:00:00+05:30	5
\.


--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 227
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 4971 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- TOC entry 4972 (class 0 OID 0)
-- Dependencies: 229
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 4973 (class 0 OID 0)
-- Dependencies: 231
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 4974 (class 0 OID 0)
-- Dependencies: 217
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- TOC entry 4975 (class 0 OID 0)
-- Dependencies: 215
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- TOC entry 4976 (class 0 OID 0)
-- Dependencies: 235
-- Name: events_attendee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_attendee_id_seq', 42, true);


--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 233
-- Name: events_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_event_id_seq', 9, true);


-- Completed on 2025-06-18 19:41:49

--
-- PostgreSQL database dump complete
--

