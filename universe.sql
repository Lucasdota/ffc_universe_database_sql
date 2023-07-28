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
    name character varying(30) NOT NULL,
    type text NOT NULL,
    age bigint,
    livable_planets integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: guardian; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guardian (
    guardian_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    friendly boolean,
    helpers numeric
);


ALTER TABLE public.guardian OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    has_life boolean,
    shape character varying(15)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    has_life boolean,
    moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    type text,
    emits_light boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky_way', 'spiral', 136100000000, 1);
INSERT INTO public.galaxy VALUES (3, 'flame_void', 'cluttered', 300000000000, 4);
INSERT INTO public.galaxy VALUES (2, 'jelly_way', 'type-cD', 50000000000, 1);
INSERT INTO public.galaxy VALUES (4, 'blue_vision', 'shell', 250500000000, 22);
INSERT INTO public.galaxy VALUES (5, 'flashy_way', 'super_luminous', 1000000000000, 333);
INSERT INTO public.galaxy VALUES (6, 'passing_way', 'ring', 100000000000, 1);


--
-- Data for Name: guardian; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guardian VALUES (1, 'miqtar-sarov', 2, false, 351);
INSERT INTO public.guardian VALUES (2, 'yfri manfrico', 3, false, 0);
INSERT INTO public.guardian VALUES (3, 'garga-gurj', 4, true, 11);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1, false, 'circular');
INSERT INTO public.moon VALUES (2, 'titan', 2, false, 'circular');
INSERT INTO public.moon VALUES (3, 'rhea', 2, false, 'circular');
INSERT INTO public.moon VALUES (4, 'tethys', 2, false, 'circular');
INSERT INTO public.moon VALUES (5, 'coshen', 4, false, 'circular');
INSERT INTO public.moon VALUES (6, 'icushen', 4, false, 'changing');
INSERT INTO public.moon VALUES (7, 'yfrima', 6, true, 'star');
INSERT INTO public.moon VALUES (8, 'layono60', 6, false, 'triangle');
INSERT INTO public.moon VALUES (9, 'manjobrtt', 6, false, 'changing');
INSERT INTO public.moon VALUES (10, 'firfur', 6, true, 'rectangle');
INSERT INTO public.moon VALUES (11, 'whellen', 6, false, 'circular');
INSERT INTO public.moon VALUES (12, 'luminis', 9, false, 'circular');
INSERT INTO public.moon VALUES (13, 'yendalvar', 9, true, 'circular');
INSERT INTO public.moon VALUES (14, 'emaysyel', 10, false, 'circular');
INSERT INTO public.moon VALUES (15, 'flashuim', 10, true, 'circular');
INSERT INTO public.moon VALUES (16, 'andufin', 10, false, 'square');
INSERT INTO public.moon VALUES (17, 'danti-x1', 10, false, 'changing');
INSERT INTO public.moon VALUES (18, 'staintlen', 10, false, 'circular');
INSERT INTO public.moon VALUES (19, 'asfal', 11, false, 'rectangle');
INSERT INTO public.moon VALUES (20, 'placa', 11, false, 'circular');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1, true, 1);
INSERT INTO public.planet VALUES (2, 'saturn', 1, false, 146);
INSERT INTO public.planet VALUES (3, 'jonjon-tt', 2, true, 0);
INSERT INTO public.planet VALUES (4, 'bloblen02', 2, false, 3);
INSERT INTO public.planet VALUES (5, 'fiessen', 3, false, 0);
INSERT INTO public.planet VALUES (6, 'fostm', 3, true, 12);
INSERT INTO public.planet VALUES (7, 'aqua-fin', 4, true, 0);
INSERT INTO public.planet VALUES (8, 'menquar', 4, true, 0);
INSERT INTO public.planet VALUES (9, 'illis', 5, true, 3);
INSERT INTO public.planet VALUES (10, 'jeruym', 5, true, 9);
INSERT INTO public.planet VALUES (11, 'strada', 6, true, 2);
INSERT INTO public.planet VALUES (12, 'rail-kt', 6, false, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 1, 'solar', true);
INSERT INTO public.star VALUES (2, 'gomm', 2, 'hot blue', true);
INSERT INTO public.star VALUES (3, 'impyr', 3, 'solar', true);
INSERT INTO public.star VALUES (4, 'casc', 4, 'neutron', false);
INSERT INTO public.star VALUES (5, 'yeshh', 5, 'white dwarf', true);
INSERT INTO public.star VALUES (6, 'sigma', 6, 'red giant', true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: guardian guardian_guardian_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guardian
    ADD CONSTRAINT guardian_guardian_id_key UNIQUE (guardian_id);


--
-- Name: guardian guardian_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guardian
    ADD CONSTRAINT guardian_pkey PRIMARY KEY (guardian_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: guardian guardian_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guardian
    ADD CONSTRAINT guardian_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

