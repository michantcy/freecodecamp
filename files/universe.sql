--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    unique_code numeric(4,1) NOT NULL,
    planets_count integer,
    star_count integer,
    name_text text
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
-- Name: logging; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.logging (
    logging_id integer NOT NULL,
    name character varying(30),
    is_transaction_success boolean,
    email_notify boolean,
    random_unique integer NOT NULL
);


ALTER TABLE public.logging OWNER TO freecodecamp;

--
-- Name: logging_logging_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.logging_logging_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logging_logging_id_seq OWNER TO freecodecamp;

--
-- Name: logging_logging_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.logging_logging_id_seq OWNED BY public.logging.logging_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    unique_code numeric(4,1) NOT NULL,
    random_col_1 integer,
    random_col_2 integer,
    planet_id integer
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
    unique_code numeric(4,1) NOT NULL,
    random_col_1 integer,
    random_col_2 integer,
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
    name character varying(30),
    unique_code numeric(4,1) NOT NULL,
    random_col_1 integer NOT NULL,
    random_col_2 integer,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: logging logging_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.logging ALTER COLUMN logging_id SET DEFAULT nextval('public.logging_logging_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'myGalaxy', 4.4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'myGalaxy2', 4.2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'myGalax3', 5.2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'mygalaxy10', 100.1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'mygalaxy12', 100.3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'mygalaxy11', 100.2, NULL, NULL, NULL);


--
-- Data for Name: logging; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.logging VALUES (1, NULL, NULL, NULL, 1);
INSERT INTO public.logging VALUES (2, NULL, NULL, NULL, 2);
INSERT INTO public.logging VALUES (3, NULL, NULL, NULL, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'myMoon1', 400.4, NULL, NULL, 2);
INSERT INTO public.moon VALUES (2, NULL, 1.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, NULL, 2.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, NULL, 3.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, NULL, 4.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, NULL, 5.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, NULL, 6.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, NULL, 7.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, NULL, 8.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (10, NULL, 9.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (11, NULL, 10.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (12, NULL, 11.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (13, NULL, 12.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (14, NULL, 13.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, NULL, 14.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (16, NULL, 15.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (17, NULL, 16.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (18, NULL, 17.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (19, NULL, 18.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (20, NULL, 19.0, NULL, NULL, 2);
INSERT INTO public.moon VALUES (21, NULL, 20.0, NULL, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'myPlanet', 7.1, NULL, NULL, 5);
INSERT INTO public.planet VALUES (2, 'myPlanet2', 7.2, NULL, NULL, 6);
INSERT INTO public.planet VALUES (3, 'myPlanet3', 7.3, NULL, NULL, 7);
INSERT INTO public.planet VALUES (4, 'myPlanet4', 7.4, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'myPlanet5', 7.5, NULL, NULL, 5);
INSERT INTO public.planet VALUES (7, 'myPlanet6', 7.6, NULL, NULL, 5);
INSERT INTO public.planet VALUES (8, 'myPlanet7', 7.7, NULL, NULL, 5);
INSERT INTO public.planet VALUES (9, 'myPlanet8', 7.8, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'myPlanet9', 7.9, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'myPlanet10', 10.1, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'myPlanet11', 11.6, NULL, NULL, 5);
INSERT INTO public.planet VALUES (13, 'myPlanet12', 12.7, NULL, NULL, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'test star name', 100.5, 10, NULL, 1);
INSERT INTO public.star VALUES (6, 'myStar2', 200.5, 11, NULL, 2);
INSERT INTO public.star VALUES (7, 'myStar3', 123.4, 12, NULL, 3);
INSERT INTO public.star VALUES (8, 'mystar4', 200.4, 13, NULL, 1);
INSERT INTO public.star VALUES (10, 'mystar5', 201.5, 14, NULL, 1);
INSERT INTO public.star VALUES (11, 'mystar6', 301.5, 15, NULL, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: logging_logging_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.logging_logging_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_code_key UNIQUE (unique_code);


--
-- Name: logging logging_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.logging
    ADD CONSTRAINT logging_pkey PRIMARY KEY (logging_id);


--
-- Name: logging logging_random_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.logging
    ADD CONSTRAINT logging_random_unique_key UNIQUE (random_unique);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_code_key UNIQUE (unique_code);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_code_key UNIQUE (unique_code);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_random_col_1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_random_col_1_key UNIQUE (random_col_1);


--
-- Name: star star_unique_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_code_key UNIQUE (unique_code);


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

