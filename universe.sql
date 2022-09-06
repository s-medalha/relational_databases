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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30),
    is_spherical boolean NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    is_spherical boolean,
    number_of_stars integer,
    is_old boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    is_spherical boolean,
    is_white boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    has_life boolean NOT NULL,
    number_of_moons integer,
    description text,
    age_in_millions_of_years numeric(8,2),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    is_old boolean NOT NULL,
    is_red boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'a', true);
INSERT INTO public.asteroid VALUES (2, 'b', true);
INSERT INTO public.asteroid VALUES (3, 'c', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, true);
INSERT INTO public.galaxy VALUES (2, 'a', NULL, NULL, true);
INSERT INTO public.galaxy VALUES (3, 'b', NULL, NULL, true);
INSERT INTO public.galaxy VALUES (4, 'c', NULL, NULL, true);
INSERT INTO public.galaxy VALUES (5, 'd', NULL, NULL, true);
INSERT INTO public.galaxy VALUES (6, 'e', NULL, NULL, true);
INSERT INTO public.galaxy VALUES (7, 'f', NULL, NULL, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, NULL, true);
INSERT INTO public.moon VALUES (2, 'a', NULL, NULL, true);
INSERT INTO public.moon VALUES (3, 'b', NULL, NULL, true);
INSERT INTO public.moon VALUES (4, 'c', NULL, NULL, true);
INSERT INTO public.moon VALUES (5, 'd', NULL, NULL, true);
INSERT INTO public.moon VALUES (6, 'e', NULL, NULL, true);
INSERT INTO public.moon VALUES (7, 'f', NULL, NULL, true);
INSERT INTO public.moon VALUES (8, 'g', NULL, NULL, true);
INSERT INTO public.moon VALUES (9, 'd', NULL, NULL, true);
INSERT INTO public.moon VALUES (10, 'e', NULL, NULL, true);
INSERT INTO public.moon VALUES (11, 'f', NULL, NULL, true);
INSERT INTO public.moon VALUES (12, 'g', NULL, NULL, true);
INSERT INTO public.moon VALUES (13, 'd', NULL, NULL, true);
INSERT INTO public.moon VALUES (14, 'e', NULL, NULL, true);
INSERT INTO public.moon VALUES (15, 'f', NULL, NULL, true);
INSERT INTO public.moon VALUES (16, 'g', NULL, NULL, true);
INSERT INTO public.moon VALUES (17, 'd', NULL, NULL, true);
INSERT INTO public.moon VALUES (18, 'e', NULL, NULL, true);
INSERT INTO public.moon VALUES (19, 'f', NULL, NULL, true);
INSERT INTO public.moon VALUES (20, 'g', NULL, NULL, true);
INSERT INTO public.moon VALUES (21, 'd', NULL, NULL, true);
INSERT INTO public.moon VALUES (22, 'e', NULL, NULL, true);
INSERT INTO public.moon VALUES (23, 'f', NULL, NULL, true);
INSERT INTO public.moon VALUES (24, 'g', NULL, NULL, true);
INSERT INTO public.moon VALUES (25, 'd', NULL, NULL, true);
INSERT INTO public.moon VALUES (26, 'e', NULL, NULL, true);
INSERT INTO public.moon VALUES (27, 'f', NULL, NULL, true);
INSERT INTO public.moon VALUES (28, 'g', NULL, NULL, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'a', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'b', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'c', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'd', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'e', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'f', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'g', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, '1', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, '2', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, '3', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'd', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'e', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'f', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'g', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'd', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'e', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'f', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'g', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'd', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'e', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'f', true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'g', true, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, false);
INSERT INTO public.star VALUES (2, 'a', NULL, true, false);
INSERT INTO public.star VALUES (3, 'b', NULL, true, false);
INSERT INTO public.star VALUES (4, 'c', NULL, true, false);
INSERT INTO public.star VALUES (5, 'd', NULL, true, false);
INSERT INTO public.star VALUES (6, 'e', NULL, true, false);
INSERT INTO public.star VALUES (7, 'f', NULL, true, false);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroid ast_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT ast_uniq UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uniq UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_uniq UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unque; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unque UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

