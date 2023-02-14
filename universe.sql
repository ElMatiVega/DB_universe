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
    name character varying NOT NULL,
    description text,
    size numeric,
    visible_from_earth boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    is_spherical boolean,
    age_in_millons_of_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    plante_size numeric,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    visible_from_earth boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Chicxulub', 'Se encuentra en la peninsula de Yucatán. Se cree que es el que causo la extinción de los dinosaurios', 10, true);
INSERT INTO public.asteroid VALUES (2, 'Tunguska', 'En 1908  prudujo una desvastadora explosión de 12 megatones en la region de Tunguska, Siberia, Rusia, se cree que explotó en el aire', 0, false);
INSERT INTO public.asteroid VALUES (3, 'Ceres', 'Tiene una clasificación dual, tambien se lo concidera un planeta enano. Es el primer asteroide descubierto.', 945, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Está formada por 16 estrellas principales que forman su forma en el cielo', false, 97);
INSERT INTO public.galaxy VALUES (2, 'Orion', 'Es una de las constelaciones mas famosas de nuestro cielo, formada principalmente por 7 estrellas: Se le reconocen mas de 300 estrellas.', false, 773);
INSERT INTO public.galaxy VALUES (3, 'Can Mayor', 'Esta constelacion tiena a SIRIUS la estrella mas brillante de nuestro cielo', false, 9);
INSERT INTO public.galaxy VALUES (4, 'Sistema  Solar', 'Sistema planetario que gira alrededor del SOL, esta formado por 8 planetas y otros 5 planetas enanos', false, 0);
INSERT INTO public.galaxy VALUES (5, 'Aries', 'Es una constelación del zodíaco, al oeste de Piscis y este de Tauro', false, 342);
INSERT INTO public.galaxy VALUES (6, 'Crux', 'Conocida como la Cruz del Sur', false, 345);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Satelite natural', NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Spunik1', 'Primer satélite artificial lanzado por la unión Soviética', NULL, NULL);
INSERT INTO public.moon VALUES (3, 'ISS', 'Satelite artificial que actualmente orbita la tierra', NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Satelit 1', 'descripcion de este satélite', true, 1234);
INSERT INTO public.moon VALUES (5, 'Sat 2', 'Descripción del satélite', true, 1234);
INSERT INTO public.moon VALUES (6, 'Sat 6', 'Descripción del satélite  6', true, 1232);
INSERT INTO public.moon VALUES (7, 'Sat7', 'Descripción del Satélite  7', true, 12341);
INSERT INTO public.moon VALUES (8, 'Sat8', 'Te como el biscocho satelital', true, 12342);
INSERT INTO public.moon VALUES (9, 'Sat9', 'Descripción del satélite 9', false, 0);
INSERT INTO public.moon VALUES (10, 'Sat10', 'Descripción del satelite 10', true, 1234);
INSERT INTO public.moon VALUES (11, 'Sat11', 'Descripción del Satelite 11', true, 12345);
INSERT INTO public.moon VALUES (12, 'Sat12', 'Descripción del satélite 12', true, 12346);
INSERT INTO public.moon VALUES (13, 'Satelite 13', 'descripcion de este satélite', true, 1234);
INSERT INTO public.moon VALUES (14, 'Sat 14', 'Descripción del satélite', true, 1234);
INSERT INTO public.moon VALUES (15, 'Sat 15', 'Descripción del satélite  15', true, 1232);
INSERT INTO public.moon VALUES (16, 'Sat16', 'Descripción del Satélite  16', true, 12341);
INSERT INTO public.moon VALUES (17, 'Sat17', 'Te como el biscocho satelital', true, 12342);
INSERT INTO public.moon VALUES (18, 'Sat18', 'Descripción del satélite 18', false, 0);
INSERT INTO public.moon VALUES (19, 'Sat19', 'Descripción del satelite 19', true, 1234);
INSERT INTO public.moon VALUES (20, 'Sat20', 'Descripción del Satelite 20', true, 12345);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 'Es la mejor nave espacial que conozco', 12756, 4);
INSERT INTO public.planet VALUES (2, 'Júpite', 'Es el planeta más grande del sistema solar', 1429884, 4);
INSERT INTO public.planet VALUES (3, 'Ceres', 'Es considerado un planeta enano', 945, 4);
INSERT INTO public.planet VALUES (4, 'planeta1', 'descripcion de este planeta', 1234, 1);
INSERT INTO public.planet VALUES (5, 'Planeta2', 'Descripción del planeta', 1234, 2);
INSERT INTO public.planet VALUES (6, 'Planeta6', 'Descripción del planeta 6', 1234, 2);
INSERT INTO public.planet VALUES (7, 'Planeta7', 'Descripción del planeta 7', 1234, 1);
INSERT INTO public.planet VALUES (8, 'Planeta8', 'Te como el biscocho', 1234, 2);
INSERT INTO public.planet VALUES (9, 'Planeta9', 'Descripción del planeta 9', 12343, 3);
INSERT INTO public.planet VALUES (10, 'Planeta10', 'Descripción del planeta 10', 1234, 4);
INSERT INTO public.planet VALUES (11, 'Planeta11', 'Descripción del planteta 11', 1234, 5);
INSERT INTO public.planet VALUES (12, 'planeta12', 'Descripción del planeta 12', 1234, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Andromedae', 'Nombre propuesto Alpheratz, está a 97 años luz de la tierra.', 1, NULL);
INSERT INTO public.star VALUES (2, 'V385 And', 'Nombre propuesto V385 Andromedae, esta a 1249 años luz de la tierra.', 1, NULL);
INSERT INTO public.star VALUES (3, 'Theta Andromedae', 'Nombre propuesto 0 And, esta a 253 años luz de distancia de la tierra.', 1, NULL);
INSERT INTO public.star VALUES (4, 'Sol', 'Es la estrella que mas conocemos y esta a 152097701 km', 4, NULL);
INSERT INTO public.star VALUES (5, 'Alfa Arietis', 'Hamal es la estrella mas brillate de la constelación de aries, tiene la masa de 15 soles.', 5, NULL);
INSERT INTO public.star VALUES (6, 'beta Arietis', 'Sheretan, esla segunda estrella mas brillantes de la constelación de Aries. Tiene la masa de 2 soles.', 5, NULL);


--
-- Name: asteroid asteroid_asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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

