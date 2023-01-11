--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1673454105646', 0, 0);
INSERT INTO public.users VALUES (4, 'user_1673454105645', 0, 0);
INSERT INTO public.users VALUES (1, 'Test', 4, 1);
INSERT INTO public.users VALUES (96, 'user_1673457885784', 2, 318);
INSERT INTO public.users VALUES (88, 'user_1673457796415', 2, 495);
INSERT INTO public.users VALUES (11, 'user_1673454435185', 0, 0);
INSERT INTO public.users VALUES (13, 'user_1673454435184', 0, 0);
INSERT INTO public.users VALUES (46, 'user_1673456749925', 3, 841);
INSERT INTO public.users VALUES (80, 'user_1673457748424', 2, 269);
INSERT INTO public.users VALUES (18, 'user_1673455178715', 0, 0);
INSERT INTO public.users VALUES (19, 'user_1673455178714', 0, 0);
INSERT INTO public.users VALUES (20, 'Test 1', 0, 0);
INSERT INTO public.users VALUES (21, 'user_1673455199724', 0, 0);
INSERT INTO public.users VALUES (22, 'user_1673455199723', 0, 0);
INSERT INTO public.users VALUES (23, 'user_1673455311903', 0, 0);
INSERT INTO public.users VALUES (24, 'user_1673455311902', 0, 0);
INSERT INTO public.users VALUES (25, 'user_1673455494250', 0, 0);
INSERT INTO public.users VALUES (26, 'user_1673455494249', 0, 0);
INSERT INTO public.users VALUES (27, 'user_1673455563269', 0, 0);
INSERT INTO public.users VALUES (28, 'user_1673455563268', 0, 0);
INSERT INTO public.users VALUES (29, 'user_1673456081794', 0, 0);
INSERT INTO public.users VALUES (30, 'user_1673456081793', 0, 0);
INSERT INTO public.users VALUES (31, 'user_1673456135985', 0, 0);
INSERT INTO public.users VALUES (32, 'user_1673456135984', 0, 0);
INSERT INTO public.users VALUES (33, 'user_1673456184330', 0, 0);
INSERT INTO public.users VALUES (34, 'user_1673456184329', 0, 0);
INSERT INTO public.users VALUES (56, 'user_1673457278015', 2, 346);
INSERT INTO public.users VALUES (36, 'user_1673456365322', 0, 547);
INSERT INTO public.users VALUES (35, 'user_1673456365323', 0, 156);
INSERT INTO public.users VALUES (70, 'user_1673457726379', 2, 287);
INSERT INTO public.users VALUES (45, 'user_1673456749926', 9, 101);
INSERT INTO public.users VALUES (95, 'user_1673457885785', 5, 14);
INSERT INTO public.users VALUES (38, 'user_1673456459640', 2, 205);
INSERT INTO public.users VALUES (55, 'user_1673457278016', 5, 142);
INSERT INTO public.users VALUES (79, 'user_1673457748425', 5, 34);
INSERT INTO public.users VALUES (37, 'user_1673456459641', 5, 291);
INSERT INTO public.users VALUES (69, 'user_1673457726380', 5, 131);
INSERT INTO public.users VALUES (48, 'user_1673456760500', 3, 170);
INSERT INTO public.users VALUES (87, 'user_1673457796416', 5, 20);
INSERT INTO public.users VALUES (58, 'user_1673457280619', 2, 836);
INSERT INTO public.users VALUES (89, 'user_1673457857450', 0, 0);
INSERT INTO public.users VALUES (40, 'user_1673456575834', 2, 630);
INSERT INTO public.users VALUES (90, 'user_1673457857449', 0, 0);
INSERT INTO public.users VALUES (47, 'user_1673456760501', 9, 42);
INSERT INTO public.users VALUES (39, 'user_1673456575835', 5, 511);
INSERT INTO public.users VALUES (57, 'user_1673457280620', 5, 206);
INSERT INTO public.users VALUES (72, 'user_1673457733466', 2, 197);
INSERT INTO public.users VALUES (42, 'user_1673456633685', 3, 367);
INSERT INTO public.users VALUES (50, 'user_1673456890661', 3, 341);
INSERT INTO public.users VALUES (60, 'user_1673457282954', 2, 47);
INSERT INTO public.users VALUES (71, 'user_1673457733467', 5, 64);
INSERT INTO public.users VALUES (41, 'user_1673456633686', 9, 612);
INSERT INTO public.users VALUES (49, 'user_1673456890662', 9, 104);
INSERT INTO public.users VALUES (82, 'user_1673457763615', 2, 359);
INSERT INTO public.users VALUES (59, 'user_1673457282955', 5, 248);
INSERT INTO public.users VALUES (44, 'user_1673456709745', 3, 28);
INSERT INTO public.users VALUES (52, 'user_1673456942588', 1, 287);
INSERT INTO public.users VALUES (43, 'user_1673456709746', 9, 161);
INSERT INTO public.users VALUES (51, 'user_1673456942589', 4, 140);
INSERT INTO public.users VALUES (81, 'user_1673457763616', 5, 201);
INSERT INTO public.users VALUES (62, 'user_1673457285464', 2, 723);
INSERT INTO public.users VALUES (74, 'user_1673457735960', 2, 8);
INSERT INTO public.users VALUES (54, 'user_1673456988361', 2, 513);
INSERT INTO public.users VALUES (102, 'user_1673457907184', 2, 147);
INSERT INTO public.users VALUES (61, 'user_1673457285465', 5, 27);
INSERT INTO public.users VALUES (53, 'user_1673456988362', 5, 567);
INSERT INTO public.users VALUES (73, 'user_1673457735961', 5, 41);
INSERT INTO public.users VALUES (63, 'Test 5', 1, 0);
INSERT INTO public.users VALUES (64, 'Test3', 1, 0);
INSERT INTO public.users VALUES (92, 'user_1673457870283', 2, 523);
INSERT INTO public.users VALUES (66, 'user_1673457606700', 2, 283);
INSERT INTO public.users VALUES (98, 'user_1673457888500', 2, 279);
INSERT INTO public.users VALUES (65, 'user_1673457606701', 5, 261);
INSERT INTO public.users VALUES (76, 'user_1673457743268', 2, 210);
INSERT INTO public.users VALUES (84, 'user_1673457790471', 2, 242);
INSERT INTO public.users VALUES (91, 'user_1673457870284', 5, 198);
INSERT INTO public.users VALUES (75, 'user_1673457743269', 5, 53);
INSERT INTO public.users VALUES (68, 'user_1673457716224', 2, 22);
INSERT INTO public.users VALUES (83, 'user_1673457790472', 5, 89);
INSERT INTO public.users VALUES (101, 'user_1673457907185', 5, 345);
INSERT INTO public.users VALUES (67, 'user_1673457716225', 5, 232);
INSERT INTO public.users VALUES (78, 'user_1673457746012', 2, 172);
INSERT INTO public.users VALUES (97, 'user_1673457888501', 5, 90);
INSERT INTO public.users VALUES (77, 'user_1673457746013', 5, 104);
INSERT INTO public.users VALUES (86, 'user_1673457793516', 2, 317);
INSERT INTO public.users VALUES (94, 'user_1673457874128', 2, 4);
INSERT INTO public.users VALUES (85, 'user_1673457793517', 5, 111);
INSERT INTO public.users VALUES (93, 'user_1673457874129', 5, 183);
INSERT INTO public.users VALUES (100, 'user_1673457891095', 2, 61);
INSERT INTO public.users VALUES (99, 'user_1673457891096', 5, 169);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 102, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

