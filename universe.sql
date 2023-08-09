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
    name character varying(20) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric(8,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    planet_id integer,
    mean_radius_in_km numeric(7,1)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: nebulae; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebulae (
    nebulae_id integer NOT NULL,
    name character varying(20),
    test1 integer NOT NULL,
    test2 integer NOT NULL
);


ALTER TABLE public.nebulae OWNER TO freecodecamp;

--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebulae_nebulae_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebulae_nebulae_id_seq OWNER TO freecodecamp;

--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebulae_nebulae_id_seq OWNED BY public.nebulae.nebulae_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric(8,2),
    star_id integer,
    moon_number integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years numeric(6,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: nebulae nebulae_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae ALTER COLUMN nebulae_id SET DEFAULT nextval('public.nebulae_nebulae_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our galaxy', true, 13610.00);
INSERT INTO public.galaxy VALUES (2, 'NGC 5792', 'From New General Catalogue objects', true, 9800.00);
INSERT INTO public.galaxy VALUES (3, 'NGC 6027', 'S0 galaxy', false, 9700.00);
INSERT INTO public.galaxy VALUES (4, 'NGC 6027a', 'Sa galaxy', false, 9600.00);
INSERT INTO public.galaxy VALUES (5, 'NGC 6027b', 'S0 galaxy', false, 9500.00);
INSERT INTO public.galaxy VALUES (6, 'NGC 6027c', 'SB galaxy', false, 9400.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Our Moon', 3, 1737.4);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Innermost and large moon of Mars', 4, 11.3);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller and outermost moon of Mars', 4, 6.2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Largest and most massive natural satellite of Jupiter', 6, 2634.1);
INSERT INTO public.moon VALUES (5, 'Triton', 'Largest natural satellite of Neptune', 8, 1353.4);
INSERT INTO public.moon VALUES (6, 'Nereid', 'Third largest natural satellite of Neptune', 8, 357.0);
INSERT INTO public.moon VALUES (7, 'Proteus', 'Second Largest moon of Neptune', 8, 210.0);
INSERT INTO public.moon VALUES (8, 'Naid', 'Innermost satellite of Neptune', 8, 30.2);
INSERT INTO public.moon VALUES (9, 'Thalasa', 'The second innermost satellite of Neptune', 8, 40.7);
INSERT INTO public.moon VALUES (10, 'Despina', 'Third closer inner moon of Neptune', 8, 78.0);
INSERT INTO public.moon VALUES (11, 'Galatea', 'Fourth closest inner moon of Neptune', 8, 87.4);
INSERT INTO public.moon VALUES (12, 'Larissa', 'Fifth closest inner satellite of Neptune', 8, 97.0);
INSERT INTO public.moon VALUES (13, 'Hippocamp', 'Small moon of Neptune', 8, 17.4);
INSERT INTO public.moon VALUES (14, 'Io', 'Innermost and third largest of the Galilean moons of the planet Jupiter', 6, 1821.6);
INSERT INTO public.moon VALUES (15, 'Europa', 'The smallest of the four Galilean moons of Jupiter', 6, 1560.8);
INSERT INTO public.moon VALUES (16, 'Callisto', 'The second largest moon of Jupiter', 6, 2410.3);
INSERT INTO public.moon VALUES (17, 'Metis', 'The innermost know moon of Jupiter', 6, 21.5);
INSERT INTO public.moon VALUES (18, 'Adrastea', 'The second by distance, and the smallest of the four inner moons of Jupiter', 6, 8.2);
INSERT INTO public.moon VALUES (19, 'Amalthea', 'The third closest orbit around Jupiter', 6, 83.5);
INSERT INTO public.moon VALUES (20, 'Thebe', 'The fourth Jupiters moons by distance', 6, 49.3);


--
-- Data for Name: nebulae; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebulae VALUES (1, 'fake neb1', 5, 10);
INSERT INTO public.nebulae VALUES (2, 'fake neb2', 6, 7);
INSERT INTO public.nebulae VALUES (3, 'fake neb3', 0, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Closest to Sun', false, 4500.00, 1, 0);
INSERT INTO public.planet VALUES (2, 'Venus', 'The Second One', false, 4500.00, 1, 0);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our planet', true, 4500.00, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The Red One', false, 4500.00, 1, 2);
INSERT INTO public.planet VALUES (6, 'Jupiter', 'The Big One', false, 4500.00, 1, 95);
INSERT INTO public.planet VALUES (7, 'Uranus', 'The Blue One', false, 4500.00, 1, 27);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The Frozen Giant', false, 4500.00, 1, 14);
INSERT INTO public.planet VALUES (9, 'Pluto', 'The Small Giant', false, 4500.00, 1, 5);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 'First kepler planet found in the habitable zone', false, 4500.00, 3, 0);
INSERT INTO public.planet VALUES (11, 'Gliese 667CC', 'Lie in the habitable zone', false, 4500.00, 2, 0);
INSERT INTO public.planet VALUES (12, 'Kepler-69C', '40 percent larger than Earth', false, 4500.00, 4, 0);
INSERT INTO public.planet VALUES (13, 'Fake planet1', 'A fake planet', true, 3365.00, 5, 123);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our star', 4500.00, 1);
INSERT INTO public.star VALUES (2, 'Gliese 667 C', 'A triple star system', 4500.00, 1);
INSERT INTO public.star VALUES (3, 'Kepler 22', 'Sun like Star', 7000.00, 1);
INSERT INTO public.star VALUES (4, 'Kepler 69', 'Sun like Star', 9800.00, 1);
INSERT INTO public.star VALUES (5, 'Fake star1', 'A fake star', 3465.00, 2);
INSERT INTO public.star VALUES (6, 'Fake star2', 'A fake star', 3365.00, 4);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebulae_nebulae_id_seq', 3, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


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
-- Name: moon name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: nebulae nebulae_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae
    ADD CONSTRAINT nebulae_name_key UNIQUE (name);


--
-- Name: nebulae nebulae_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae
    ADD CONSTRAINT nebulae_pkey PRIMARY KEY (nebulae_id);


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

