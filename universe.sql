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
    name character varying(20) NOT NULL,
    age integer,
    color character varying(20),
    has_life boolean
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
-- Name: meteorit; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteorit (
    meteorit_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    speed numeric(10,2),
    description text,
    color character varying(20)
);


ALTER TABLE public.meteorit OWNER TO freecodecamp;

--
-- Name: meteorit_meteorit_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteorit_meteorit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteorit_meteorit_id_seq OWNER TO freecodecamp;

--
-- Name: meteorit_meteorit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteorit_meteorit_id_seq OWNED BY public.meteorit.meteorit_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    has_life boolean,
    color character varying(20),
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
    name character varying(20) NOT NULL,
    age integer,
    has_life boolean,
    color character varying(20),
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
    name character varying(20) NOT NULL,
    age integer,
    galaxy_id integer NOT NULL,
    color character varying(20)
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
-- Name: meteorit meteorit_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorit ALTER COLUMN meteorit_id SET DEFAULT nextval('public.meteorit_meteorit_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 542146, 'Blue', true);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic', 54215, 'Red', true);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 84216, 'Yellow', false);
INSERT INTO public.galaxy VALUES (4, 'Gicar', 641825, 'Purple', true);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 74615, 'Brown', false);
INSERT INTO public.galaxy VALUES (6, 'Tadpole', 123265, 'Green', true);


--
-- Data for Name: meteorit; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteorit VALUES (1, 'Meteor 1', 10000, 25000.00, 'Large meteor with high speed', 'Gray');
INSERT INTO public.meteorit VALUES (2, 'Meteor 2', 5000, 18000.00, 'Medium meteor with moderate speed', 'Red');
INSERT INTO public.meteorit VALUES (3, 'Meteor 3', 20000, 30000.00, 'Small but very fast meteor', 'Yellow');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, false, 'Gray', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, false, 'Gray', 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, false, 'Brown', 3);
INSERT INTO public.moon VALUES (4, 'Io', 4500, false, 'Yellow', 4);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, false, 'White', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, false, 'Gray', 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, false, 'Dark gray', 5);
INSERT INTO public.moon VALUES (8, 'Titan', 4500, false, 'Orange', 4);
INSERT INTO public.moon VALUES (9, 'Rhea', 4500, false, 'White', 3);
INSERT INTO public.moon VALUES (10, 'Enceladus', 4500, false, 'White', 2);
INSERT INTO public.moon VALUES (11, 'Triton', 4500, false, 'White', 1);
INSERT INTO public.moon VALUES (12, 'Charon', 4500, false, 'Gray', 2);
INSERT INTO public.moon VALUES (13, 'Mimas', 4500, false, 'White', 3);
INSERT INTO public.moon VALUES (14, 'Miranda', 4500, false, 'Gray', 4);
INSERT INTO public.moon VALUES (15, 'Ariel', 4500, false, 'White', 5);
INSERT INTO public.moon VALUES (16, 'Umbriel', 4500, false, 'Dark gray', 6);
INSERT INTO public.moon VALUES (17, 'Titania', 4500, false, 'Gray', 1);
INSERT INTO public.moon VALUES (18, 'Oberon', 4500, false, 'Dark gray', 2);
INSERT INTO public.moon VALUES (19, 'Tethys', 4500, false, 'White', 3);
INSERT INTO public.moon VALUES (20, 'Hyperion', 4500, false, 'Dark brown', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, false, 'Gray', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4500, false, 'Yellow', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4500, true, 'Blue', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4500, false, 'Red', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4500, false, 'Brown', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4500, false, 'Gold', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4500, false, 'Cyan', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4500, false, 'Blue', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 4500, false, 'White', 1);
INSERT INTO public.planet VALUES (10, 'Ceres', 4500, false, 'Gray', 1);
INSERT INTO public.planet VALUES (11, 'Eris', 4500, false, 'White', 2);
INSERT INTO public.planet VALUES (12, 'Kepler-22b', 2000, true, 'Green', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 654542169, 1, 'Yellow');
INSERT INTO public.star VALUES (2, 'Sirius', 664545451, 2, 'Blue');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 74165, 3, 'Green');
INSERT INTO public.star VALUES (4, 'Polaris', 65214, 4, 'Purple');
INSERT INTO public.star VALUES (5, 'Vega', 554611, 5, 'Red');
INSERT INTO public.star VALUES (6, 'Alpha Centauri', 96125, 6, 'Black');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: meteorit_meteorit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteorit_meteorit_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


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
-- Name: meteorit meteorit_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorit
    ADD CONSTRAINT meteorit_name_key UNIQUE (name);


--
-- Name: meteorit meteorit_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorit
    ADD CONSTRAINT meteorit_pkey PRIMARY KEY (meteorit_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

