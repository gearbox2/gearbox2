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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    distance_in_mly numeric,
    naked_eye_galaxy boolean
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
    name character varying(50) NOT NULL,
    description text,
    planet_id integer NOT NULL,
    mean_diameter_in_miles integer
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
    name character varying(50) NOT NULL,
    description text,
    star_id integer NOT NULL,
    has_life_confirmed boolean,
    planet_type_id integer
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    galaxy_id integer,
    age_in_gyr numeric
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (23, 'Andromeda Galaxy', NULL, 2.5, true);
INSERT INTO public.galaxy VALUES (24, 'Sculptor Galaxy', NULL, 12, true);
INSERT INTO public.galaxy VALUES (25, 'Centaurus A', NULL, 13.7, true);
INSERT INTO public.galaxy VALUES (26, 'Bode''s Galaxy', NULL, 12, true);
INSERT INTO public.galaxy VALUES (27, 'Large Magellanic Cloud', NULL, 0.16, true);
INSERT INTO public.galaxy VALUES (28, 'Small Magellanic Cloud', NULL, 0.2, true);
INSERT INTO public.galaxy VALUES (29, 'Milky Way Galaxy', NULL, 0, true);
INSERT INTO public.galaxy VALUES (30, 'Triangulum Galaxy', NULL, 2.9, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (55, 'Earth''s moon', 'fifth largest satellite in the Solar system', 5, NULL);
INSERT INTO public.moon VALUES (56, 'Phobos', NULL, 6, NULL);
INSERT INTO public.moon VALUES (57, 'Deimos', NULL, 6, 4);
INSERT INTO public.moon VALUES (58, 'Io', NULL, 7, NULL);
INSERT INTO public.moon VALUES (59, 'Europa', NULL, 7, NULL);
INSERT INTO public.moon VALUES (60, 'Ganymede', 'largest moon of Jupiter, and the Solar system', 7, 3273);
INSERT INTO public.moon VALUES (61, 'Callisto', 'second largest moon of Jupiter', 7, NULL);
INSERT INTO public.moon VALUES (62, 'Titan', 'largest moon of Saturn, second-largest satellite in the Solar system', 8, NULL);
INSERT INTO public.moon VALUES (63, 'Puck', NULL, 9, NULL);
INSERT INTO public.moon VALUES (64, 'Miranda', NULL, 9, NULL);
INSERT INTO public.moon VALUES (65, 'Ariel', NULL, 9, NULL);
INSERT INTO public.moon VALUES (66, 'Umbriel', NULL, 9, NULL);
INSERT INTO public.moon VALUES (67, 'Titania', 'largest moon of Uranus', 9, 981);
INSERT INTO public.moon VALUES (68, 'Oberon', NULL, 9, NULL);
INSERT INTO public.moon VALUES (69, 'Triton', 'largest moon of Neptune', 10, NULL);
INSERT INTO public.moon VALUES (70, 'Neso', NULL, 10, NULL);
INSERT INTO public.moon VALUES (71, 'Proteus', NULL, 10, NULL);
INSERT INTO public.moon VALUES (72, 'Psamathe', NULL, 10, NULL);
INSERT INTO public.moon VALUES (73, 'Mimas', NULL, 8, 246);
INSERT INTO public.moon VALUES (74, 'Pheobe', NULL, 8, 132);
INSERT INTO public.moon VALUES (75, 'Rhea', 'second largest moon of Saturn', 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Gliese 15 Ab', NULL, 30, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Gliese 15 Ac', NULL, 30, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Mercury', NULL, 24, false, NULL);
INSERT INTO public.planet VALUES (4, 'Venus', NULL, 24, false, NULL);
INSERT INTO public.planet VALUES (5, 'Earth', NULL, 24, true, NULL);
INSERT INTO public.planet VALUES (6, 'Mars', NULL, 24, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Jupiter', NULL, 24, false, NULL);
INSERT INTO public.planet VALUES (8, 'Saturn', NULL, 24, false, NULL);
INSERT INTO public.planet VALUES (9, 'Uranus', NULL, 24, false, NULL);
INSERT INTO public.planet VALUES (10, 'Neptune', NULL, 24, false, NULL);
INSERT INTO public.planet VALUES (11, 'Proxima b', 'exoplanet', 31, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Proxima c', 'super-Earth', 31, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Proxima d', 'sub-Earth', 31, NULL, NULL);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Chthonian Planet', NULL);
INSERT INTO public.planet_type VALUES (2, 'Carbon Plane', NULL);
INSERT INTO public.planet_type VALUES (3, 'City Planet', NULL);
INSERT INTO public.planet_type VALUES (4, 'Coreless Planet', NULL);
INSERT INTO public.planet_type VALUES (5, 'Desert Planet', NULL);
INSERT INTO public.planet_type VALUES (6, 'Gas Dwarf', NULL);
INSERT INTO public.planet_type VALUES (7, 'Gas Giant', NULL);
INSERT INTO public.planet_type VALUES (8, 'Helium Planet', NULL);
INSERT INTO public.planet_type VALUES (9, 'Ice Giant', NULL);
INSERT INTO public.planet_type VALUES (10, 'Ice Planet', NULL);
INSERT INTO public.planet_type VALUES (11, 'Iron Planet', NULL);
INSERT INTO public.planet_type VALUES (12, 'Lava Planet', NULL);
INSERT INTO public.planet_type VALUES (13, 'Ocean Planet', NULL);
INSERT INTO public.planet_type VALUES (14, 'Protoplanet', NULL);
INSERT INTO public.planet_type VALUES (15, 'Puffy Planet', NULL);
INSERT INTO public.planet_type VALUES (16, 'Silicate Planet', NULL);
INSERT INTO public.planet_type VALUES (17, 'Terrestrial Planet', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (24, 'Sun', NULL, 29, 4.572);
INSERT INTO public.star VALUES (25, 'A (Rigil Kentaurus)', NULL, 25, NULL);
INSERT INTO public.star VALUES (26, 'B (Toliman)', NULL, 25, NULL);
INSERT INTO public.star VALUES (27, 'Upsilon Andromedae', NULL, 23, 3.781);
INSERT INTO public.star VALUES (28, 'A (Sirius)', NULL, NULL, NULL);
INSERT INTO public.star VALUES (29, 'Luyten''s Star', NULL, NULL, NULL);
INSERT INTO public.star VALUES (30, 'Gliese 15 A', NULL, NULL, NULL);
INSERT INTO public.star VALUES (31, 'Centauri C (Proxima Centauri)', 'closest star to the Sun', 25, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 30, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 31, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_type planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_type planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_type_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

