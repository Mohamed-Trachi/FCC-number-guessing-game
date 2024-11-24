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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    score integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 14, 33);
INSERT INTO public.games VALUES (2, 658, 34);
INSERT INTO public.games VALUES (3, 750, 34);
INSERT INTO public.games VALUES (4, 933, 35);
INSERT INTO public.games VALUES (5, 110, 35);
INSERT INTO public.games VALUES (6, 607, 34);
INSERT INTO public.games VALUES (7, 215, 34);
INSERT INTO public.games VALUES (8, 375, 34);
INSERT INTO public.games VALUES (9, 305, 36);
INSERT INTO public.games VALUES (10, 27, 36);
INSERT INTO public.games VALUES (11, 619, 37);
INSERT INTO public.games VALUES (12, 887, 37);
INSERT INTO public.games VALUES (13, 676, 36);
INSERT INTO public.games VALUES (14, 302, 36);
INSERT INTO public.games VALUES (15, 606, 36);
INSERT INTO public.games VALUES (16, 298, 38);
INSERT INTO public.games VALUES (17, 400, 38);
INSERT INTO public.games VALUES (18, 191, 39);
INSERT INTO public.games VALUES (19, 60, 39);
INSERT INTO public.games VALUES (20, 231, 38);
INSERT INTO public.games VALUES (21, 688, 38);
INSERT INTO public.games VALUES (22, 376, 38);
INSERT INTO public.games VALUES (23, 1001, 40);
INSERT INTO public.games VALUES (24, 188, 40);
INSERT INTO public.games VALUES (25, 952, 41);
INSERT INTO public.games VALUES (26, 179, 41);
INSERT INTO public.games VALUES (27, 957, 40);
INSERT INTO public.games VALUES (28, 882, 40);
INSERT INTO public.games VALUES (29, 362, 40);
INSERT INTO public.games VALUES (30, 420, 42);
INSERT INTO public.games VALUES (31, 297, 42);
INSERT INTO public.games VALUES (32, 343, 43);
INSERT INTO public.games VALUES (33, 353, 43);
INSERT INTO public.games VALUES (34, 273, 42);
INSERT INTO public.games VALUES (35, 703, 42);
INSERT INTO public.games VALUES (36, 954, 42);
INSERT INTO public.games VALUES (37, 535, 44);
INSERT INTO public.games VALUES (38, 29, 44);
INSERT INTO public.games VALUES (39, 577, 45);
INSERT INTO public.games VALUES (40, 98, 45);
INSERT INTO public.games VALUES (41, 300, 44);
INSERT INTO public.games VALUES (42, 589, 44);
INSERT INTO public.games VALUES (43, 723, 44);
INSERT INTO public.games VALUES (44, 568, 46);
INSERT INTO public.games VALUES (45, 786, 46);
INSERT INTO public.games VALUES (46, 177, 47);
INSERT INTO public.games VALUES (47, 224, 47);
INSERT INTO public.games VALUES (48, 412, 46);
INSERT INTO public.games VALUES (49, 272, 46);
INSERT INTO public.games VALUES (50, 438, 46);
INSERT INTO public.games VALUES (51, 194, 48);
INSERT INTO public.games VALUES (52, 505, 48);
INSERT INTO public.games VALUES (53, 893, 49);
INSERT INTO public.games VALUES (54, 27, 49);
INSERT INTO public.games VALUES (55, 332, 48);
INSERT INTO public.games VALUES (56, 454, 48);
INSERT INTO public.games VALUES (57, 897, 48);
INSERT INTO public.games VALUES (58, 772, 50);
INSERT INTO public.games VALUES (59, 535, 50);
INSERT INTO public.games VALUES (60, 748, 51);
INSERT INTO public.games VALUES (61, 894, 51);
INSERT INTO public.games VALUES (62, 581, 50);
INSERT INTO public.games VALUES (63, 215, 50);
INSERT INTO public.games VALUES (64, 323, 50);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (33, 'MOHAMED');
INSERT INTO public.users VALUES (34, 'user_1732472612716');
INSERT INTO public.users VALUES (35, 'user_1732472612715');
INSERT INTO public.users VALUES (36, 'user_1732472760531');
INSERT INTO public.users VALUES (37, 'user_1732472760530');
INSERT INTO public.users VALUES (38, 'user_1732472907816');
INSERT INTO public.users VALUES (39, 'user_1732472907815');
INSERT INTO public.users VALUES (40, 'user_1732472923688');
INSERT INTO public.users VALUES (41, 'user_1732472923687');
INSERT INTO public.users VALUES (42, 'user_1732472942088');
INSERT INTO public.users VALUES (43, 'user_1732472942087');
INSERT INTO public.users VALUES (44, 'user_1732472961138');
INSERT INTO public.users VALUES (45, 'user_1732472961137');
INSERT INTO public.users VALUES (46, 'user_1732473075673');
INSERT INTO public.users VALUES (47, 'user_1732473075672');
INSERT INTO public.users VALUES (48, 'user_1732473131704');
INSERT INTO public.users VALUES (49, 'user_1732473131703');
INSERT INTO public.users VALUES (50, 'user_1732473169385');
INSERT INTO public.users VALUES (51, 'user_1732473169384');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 51, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

