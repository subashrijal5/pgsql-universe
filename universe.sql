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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    redius numeric(10,2),
    description text,
    planet_id integer,
    is_potentially_hazardous boolean NOT NULL
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
    name character varying(30) NOT NULL,
    diameter numeric(10,2),
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galexy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galexy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galexy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galexy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galexy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    redius numeric(10,2),
    description text,
    planet_id integer,
    has_water boolean NOT NULL
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
    name character varying(30) NOT NULL,
    redius numeric(10,2),
    description text,
    star_id integer,
    has_atmosphere boolean NOT NULL,
    has_water boolean NOT NULL
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
    age integer,
    redius numeric(18,4),
    description text,
    galaxy_id integer,
    is_black_hole boolean NOT NULL,
    is_binary boolean NOT NULL
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galexy_id_seq'::regclass);


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

INSERT INTO public.asteroid VALUES (13, 'Ceres', 473.00, 'Ceres is the largest object in the asteroid belt that lies between the orbits of Mars and Jupiter.', 13, false);
INSERT INTO public.asteroid VALUES (14, 'Vesta', 262.70, 'Vesta is one of the largest objects in the asteroid belt.', 14, false);
INSERT INTO public.asteroid VALUES (15, 'Pallas', 258.00, 'Pallas is one of the largest asteroids in the asteroid belt.', 15, false);
INSERT INTO public.asteroid VALUES (16, 'Hygiea', 215.00, 'Hygiea is the fourth-largest asteroid in the Solar System.', 16, false);
INSERT INTO public.asteroid VALUES (17, 'Bennu', 245.00, 'Bennu is a near-Earth object and the target of the OSIRIS-REx mission.', 17, true);
INSERT INTO public.asteroid VALUES (18, 'Apophis', 370.00, 'Apophis is a near-Earth asteroid that caused a brief period of concern in December 2004.', 18, true);
INSERT INTO public.asteroid VALUES (19, 'Mathilde', 50.00, 'Mathilde is a large asteroid in the intermediate asteroid belt.', 19, false);
INSERT INTO public.asteroid VALUES (20, 'Eros', 16.84, 'Eros is a near-Earth asteroid and a potential impactor on Earth.', 20, true);
INSERT INTO public.asteroid VALUES (21, 'Gaspra', 10.00, 'Gaspra is a stony S-type asteroid.', 21, false);
INSERT INTO public.asteroid VALUES (22, 'Ida', 15.70, 'Ida is an asteroid located in the asteroid belt.', 22, false);
INSERT INTO public.asteroid VALUES (23, 'Kleopatra', 103.00, 'Kleopatra is an elongated, dog-bone-shaped asteroid.', 23, false);
INSERT INTO public.asteroid VALUES (24, 'Itokawa', 0.54, 'Itokawa is an Apollo and Mars-crosser asteroid.', 24, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000.00, 'The Milky Way is the galaxy that contains our Solar System.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 120000.50, 'Andromeda is the nearest spiral galaxy to the Milky Way.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000.75, 'The Triangulum Galaxy is a spiral galaxy approximately 3 million light-years from Earth.');
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 150000.25, 'Messier 87 is a supergiant elliptical galaxy in the constellation Virgo.');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 70000.80, 'The Sombrero Galaxy is an unbarred spiral galaxy in the constellation Virgo.');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 80000.60, 'The Whirlpool Galaxy is an interacting grand-design spiral galaxy in the constellation Canes Venatici.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (19, 'Luna', 1737.10, 'Luna is Earth''s only natural satellite.', 13, false);
INSERT INTO public.moon VALUES (20, 'Phobos', 11.10, 'Phobos is the innermost and larger of the two natural satellites of Mars.', 14, false);
INSERT INTO public.moon VALUES (21, 'Deimos', 6.20, 'Deimos is the smaller and outermost of the two natural satellites of Mars.', 14, false);
INSERT INTO public.moon VALUES (22, 'Ganymede', 2634.10, 'Ganymede is the largest moon of Jupiter and in the Solar System.', 15, true);
INSERT INTO public.moon VALUES (23, 'Europa', 1560.70, 'Europa is the smallest of the four Galilean moons orbiting Jupiter.', 15, true);
INSERT INTO public.moon VALUES (24, 'Io', 1821.60, 'Io is the innermost of the four Galilean moons of Jupiter.', 15, false);
INSERT INTO public.moon VALUES (25, 'Titan', 2575.50, 'Titan is the largest moon of Saturn and the second-largest natural satellite in the Solar System.', 16, true);
INSERT INTO public.moon VALUES (26, 'Enceladus', 252.10, 'Enceladus is the sixth-largest moon of Saturn.', 16, true);
INSERT INTO public.moon VALUES (27, 'Mimas', 198.20, 'Mimas is a moon of Saturn which was discovered in 1789 by William Herschel.', 16, false);
INSERT INTO public.moon VALUES (28, 'Miranda', 235.80, 'Miranda is the smallest and innermost of Uranus''s five round satellites.', 17, false);
INSERT INTO public.moon VALUES (29, 'Triton', 1353.40, 'Triton is the largest natural satellite of the planet Neptune.', 18, true);
INSERT INTO public.moon VALUES (30, 'Nereid', 170.00, 'Nereid is the third-largest moon of Neptune.', 18, false);
INSERT INTO public.moon VALUES (31, 'Charon', 606.00, 'Charon is the largest moon of the dwarf planet Pluto.', 19, false);
INSERT INTO public.moon VALUES (32, 'Kerberos', 15.00, 'Kerberos is a small natural satellite of Pluto.', 19, false);
INSERT INTO public.moon VALUES (33, 'Hydra', 30.50, 'Hydra is a small natural satellite of Pluto.', 19, false);
INSERT INTO public.moon VALUES (34, 'Kepler-186f Moon', 1200.00, 'Kepler-186f Moon is the moon of Kepler-186f, an exoplanet.', 20, false);
INSERT INTO public.moon VALUES (35, 'HD 209458 b Moon', 1800.00, 'HD 209458 b Moon is the moon of HD 209458 b, an exoplanet.', 21, false);
INSERT INTO public.moon VALUES (36, 'TrES-2b Moon', 1000.00, 'TrES-2b Moon is the moon of TrES-2b, an exoplanet.', 22, false);
INSERT INTO public.moon VALUES (46, 'Larissa', 194.00, 'Larissa is a moon of Neptune.', 18, false);
INSERT INTO public.moon VALUES (47, 'Oberon', 761.40, 'Oberon is the outermost of the five major moons of Uranus.', 17, false);
INSERT INTO public.moon VALUES (48, 'Rhea', 763.80, 'Rhea is the second-largest moon of Saturn and the ninth-largest moon in the Solar System.', 16, true);
INSERT INTO public.moon VALUES (49, 'Tethys', 533.00, 'Tethys is a mid-sized moon of Saturn about 1070 kilometers (670 miles) across.', 16, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Mercury', 2439.70, 'Mercury is the smallest planet in the Solar System.', 1, true, false);
INSERT INTO public.planet VALUES (14, 'Venus', 6051.80, 'Venus is the second planet from the Sun.', 2, true, false);
INSERT INTO public.planet VALUES (15, 'Earth', 6371.00, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', 3, true, true);
INSERT INTO public.planet VALUES (16, 'Mars', 3389.50, 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System.', 4, true, false);
INSERT INTO public.planet VALUES (17, 'Jupiter', 69911.00, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.', 5, true, false);
INSERT INTO public.planet VALUES (18, 'Saturn', 58232.00, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System.', 6, true, false);
INSERT INTO public.planet VALUES (19, 'Uranus', 25362.00, 'Uranus is the seventh planet from the Sun.', 7, true, false);
INSERT INTO public.planet VALUES (20, 'Neptune', 24622.00, 'Neptune is the eighth and farthest-known Solar planet from the Sun.', 8, true, false);
INSERT INTO public.planet VALUES (21, 'Pluto', 1188.30, 'Pluto is a dwarf planet in the Kuiper belt.', 9, true, false);
INSERT INTO public.planet VALUES (22, 'Kepler-186f', 3445.80, 'Kepler-186f is the first Earth-size planet discovered in the potentially habitable zone around another star.', 10, true, true);
INSERT INTO public.planet VALUES (23, 'HD 209458 b', 94529.00, 'HD 209458 b is an exoplanet that orbits the solar analog HD 209458 in the constellation Pegasus.', 2, true, false);
INSERT INTO public.planet VALUES (24, 'TrES-2b', 1047.00, 'TrES-2b is a hot Jupiter exoplanet orbiting the star GSC 03549-02811 in the constellation Draco.', 1, true, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 460000, 696340.0000, 'The Sun is thestar at the center of the Solar System.', 2, false, false);
INSERT INTO public.star VALUES (2, 'Sirius', 460000, 1822.0000, 'Sirius is a binary star system and the brightest star in the night sky.', 3, false, true);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 460000, 887000.0000, 'Betelgeuse is a red supergiant star in the constellation of Orion.', 4, false, false);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 460000, 200000.0000, 'Proxima Centauri is a red dwarf star located in the Alpha Centauri system.', 5, false, false);
INSERT INTO public.star VALUES (5, 'VY Canis Majoris', 100000, 1420900.0000, 'VY Canis Majoris is one of the largest known stars by radius.', 6, false, false);
INSERT INTO public.star VALUES (6, 'Cygnus X-1', 60000, 5.0000, 'Cygnus X-1 is a galactic X-ray source in the constellation Cygnus.', 1, true, false);
INSERT INTO public.star VALUES (7, 'Alpha Centauri A', 60000000, 1412000.0000, 'Alpha Centauri A is the principal member or primary of the Alpha Centauri star system.', 1, false, true);
INSERT INTO public.star VALUES (8, 'Polaris', 700000, 46.0000, 'Polaris is a triple star system, comprising the primary star Polaris Aa, two smaller companions, Polaris B, and Polaris Ab.', 1, false, true);
INSERT INTO public.star VALUES (9, 'Rigel', 90000, 700000.0000, 'Rigel is a blue supergiant star located in the constellation of Orion.', 2, false, false);
INSERT INTO public.star VALUES (10, 'Sagittarius A*', 40000, 0.0000, 'Sagittarius A* is a complex radio source at the center of the Milky Way.', 3, true, false);
INSERT INTO public.star VALUES (11, 'Alpha Centauri B', 6000000, 1063000.0000, 'Alpha Centauri B is a red dwarf star in the Alpha Centauri system.', 1, false, true);
INSERT INTO public.star VALUES (12, 'Barnard Star', 1000000, 209124.0000, 'Barnard''s Star is a red dwarf about six light-years away from Earth.', 1, false, false);
INSERT INTO public.star VALUES (13, 'Vega', 455000, 2375.0000, 'Vega is the brightest star in the constellation of Lyra.', 1, false, false);
INSERT INTO public.star VALUES (14, 'Aldebaran', 6250000, 443675.0000, 'Aldebaran is an orange giant star located about 65 light-years away in the zodiac constellation of Taurus.', 1, false, false);
INSERT INTO public.star VALUES (15, 'Antares', 9000000, 883600.0000, 'Antares is a red supergiant star in the Milky Way galaxy.', 1, false, false);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 24, true);


--
-- Name: galaxy_galexy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galexy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 49, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 15, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key1 UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

