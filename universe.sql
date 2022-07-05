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
    type character(20),
    age character(15),
    size_radius_lightyear integer NOT NULL,
    name character varying NOT NULL
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
    node character(1),
    saros integer,
    gamma numeric(7,3),
    planet_id integer,
    name character varying,
    date text NOT NULL
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
-- Name: people; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.people (
    people_id integer NOT NULL,
    name character varying NOT NULL,
    watch_lunar_eclipse boolean,
    like_moon boolean
);


ALTER TABLE public.people OWNER TO freecodecamp;

--
-- Name: people_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.people_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_p_id_seq OWNER TO freecodecamp;

--
-- Name: people_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.people_p_id_seq OWNED BY public.people.people_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    type character(20),
    age character(15),
    star_id integer,
    name character varying NOT NULL,
    size numeric(7,2)
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
    system character(20),
    age character(15),
    size_r_km integer,
    galaxy_id integer,
    name character varying NOT NULL
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
-- Name: people people_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people ALTER COLUMN people_id SET DEFAULT nextval('public.people_p_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Sb                  ', '1.361E10       ', 52850, 'Milky Way');
INSERT INTO public.galaxy VALUES (2, 'SA(s)b              ', '1.001E10       ', 110000, 'Andromeda Galaxy');
INSERT INTO public.galaxy VALUES (3, 'SA(s)cd             ', NULL, 30000, 'Triangulum Galaxy');
INSERT INTO public.galaxy VALUES (4, 'SB(s)m pec          ', '200-300million ', 500000, 'Antennae Galaxies');
INSERT INTO public.galaxy VALUES (6, '(R)SA(rs)ab         ', '1.328E10       ', 26481, 'Black Eye Galaxy');
INSERT INTO public.galaxy VALUES (5, 'SA(r)ab             ', NULL, 61366, 'NGC4622');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'D', 141, -1.035, 5, 'Penumbral', '2023-05-05');
INSERT INTO public.moon VALUES (3, 'A', 146, 0.947, 5, 'Partial', '2023-08-28');
INSERT INTO public.moon VALUES (4, 'D', 113, 1.061, 5, 'Penumbral', '2024-05-25');
INSERT INTO public.moon VALUES (5, 'A', 118, 1.062, 5, 'Partial', '2024-09-18');
INSERT INTO public.moon VALUES (6, 'D', 123, 0.348, 5, 'Total', '2025-03-14');
INSERT INTO public.moon VALUES (7, 'A', 128, -0.275, 5, 'Total', '2025-09-07');
INSERT INTO public.moon VALUES (8, 'D', 133, -0.377, 5, 'Total', '2026-03-03');
INSERT INTO public.moon VALUES (9, 'A', 138, 0.497, 5, 'Partial', '2026-08-28');
INSERT INTO public.moon VALUES (10, 'D', 143, -1.048, 5, 'Penumbral', '2027-02-20');
INSERT INTO public.moon VALUES (11, 'A', 148, 1.280, 5, 'Penumbral', '2027-08-17');
INSERT INTO public.moon VALUES (12, 'A', 110, -1.576, 5, 'Penumbral', '2027-07-18');
INSERT INTO public.moon VALUES (13, 'D', 115, 0.982, 5, 'Partial', '2028-01-12');
INSERT INTO public.moon VALUES (14, 'A', 120, -0.790, 5, 'Partial', '2028-07-06');
INSERT INTO public.moon VALUES (15, 'D', 125, 0.326, 5, 'Total', '2028-12-31');
INSERT INTO public.moon VALUES (16, 'A', 130, 0.013, 5, 'Total', '2029-06-26');
INSERT INTO public.moon VALUES (17, 'D', 135, -0.381, 5, 'Total', '2029-12-20');
INSERT INTO public.moon VALUES (18, 'A', 140, 0.754, 5, 'Partial', '2030-06-15');
INSERT INTO public.moon VALUES (19, 'D', 145, -1.073, 5, 'Penumbral', '2030-12-09');
INSERT INTO public.moon VALUES (20, 'A', 150, 1.473, 5, 'Penumbral', '2031-01-05');
INSERT INTO public.moon VALUES (21, 'A', 112, -1.069, 5, 'Penumbral', '2031-05-07');


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.people VALUES (1, 'Karson', false, false);
INSERT INTO public.people VALUES (2, 'Camellia', false, true);
INSERT INTO public.people VALUES (3, 'Jack', false, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 'terrestrial planet  ', '4.543E9        ', 1, 'Earth', 6371.00);
INSERT INTO public.planet VALUES (3, 'terrestrial planet  ', '4.503E9        ', 1, 'Mercury', 2439.70);
INSERT INTO public.planet VALUES (4, 'terrestrial planet  ', '4.503E9        ', 1, 'Venus', 6051.80);
INSERT INTO public.planet VALUES (6, 'terrestrial planet  ', '4.603E9        ', 1, 'Mar', 3389.50);
INSERT INTO public.planet VALUES (8, 'Gas Giant           ', '4,503E9        ', 1, 'Saturn', 58232.00);
INSERT INTO public.planet VALUES (9, 'Ice Giant           ', '4,503E9        ', 1, 'Uranus', 25362.00);
INSERT INTO public.planet VALUES (10, 'Ice Giant           ', '4,503E9        ', 1, 'Neptune', 24622.00);
INSERT INTO public.planet VALUES (7, 'Gas Giant           ', '4,603E9        ', 1, 'Jupiter', 69911.00);
INSERT INTO public.planet VALUES (11, 'Super Earth         ', '4.2465ly       ', 2, 'Promima Centauri b', NULL);
INSERT INTO public.planet VALUES (12, NULL, NULL, 5, '61 Cygni Ac', NULL);
INSERT INTO public.planet VALUES (13, 'Rocky Planet        ', '3.02E9         ', 6, ' Groombridge', NULL);
INSERT INTO public.planet VALUES (14, 'Dwarf Planet        ', '4.6bill years  ', 1, 'Pluto', 1188.30);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Solar System        ', '4.603E9        ', 696340, 1, 'Sun');
INSERT INTO public.star VALUES (2, 'Toliman             ', '4.85E9         ', 107280, 1, 'V645 Centauri');
INSERT INTO public.star VALUES (3, 'GJ866               ', NULL, NULL, 1, 'EZ Aquarli A');
INSERT INTO public.star VALUES (4, 'Luhman 16           ', NULL, NULL, 1, 'WISE 1049-5319A');
INSERT INTO public.star VALUES (6, 'Groombridge 34      ', '2.754E9        ', NULL, 1, 'GC Andromedae');
INSERT INTO public.star VALUES (5, '61 Cygni            ', '6.1E9          ', 462640, 1, 'false');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: people_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.people_p_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: moon moon_date_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_date_key UNIQUE (date);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: people people_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_name_key UNIQUE (name);


--
-- Name: people people_p_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_p_id_key UNIQUE (people_id);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (people_id);


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

