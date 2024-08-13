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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL,
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2018, 'Final', 2, 4, 511, 387, 388);
INSERT INTO public.games VALUES (2018, 'Third Place', 0, 2, 512, 389, 390);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 1, 2, 513, 388, 390);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 0, 1, 514, 387, 389);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 3, 515, 388, 391);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 0, 2, 516, 390, 392);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 1, 2, 517, 389, 393);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 0, 2, 518, 387, 394);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1, 2, 519, 390, 395);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 0, 1, 520, 392, 396);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 3, 521, 389, 397);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 0, 2, 522, 393, 398);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1, 2, 523, 388, 399);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1, 2, 524, 391, 400);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1, 2, 525, 394, 401);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 3, 4, 526, 387, 402);
INSERT INTO public.games VALUES (2014, 'Final', 0, 1, 527, 403, 402);
INSERT INTO public.games VALUES (2014, 'Third Place', 0, 3, 528, 404, 393);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 0, 1, 529, 402, 404);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 1, 7, 530, 403, 393);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 0, 1, 531, 404, 405);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 0, 1, 532, 402, 389);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 2, 533, 393, 395);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 0, 1, 534, 403, 387);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1, 2, 535, 393, 406);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 0, 2, 536, 395, 394);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 0, 2, 537, 387, 407);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1, 2, 538, 403, 408);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1, 2, 539, 404, 398);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1, 2, 540, 405, 409);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 0, 1, 541, 402, 396);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1, 2, 542, 389, 410);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (387, 'France');
INSERT INTO public.teams VALUES (388, 'Croatia');
INSERT INTO public.teams VALUES (389, 'Belgium');
INSERT INTO public.teams VALUES (390, 'England');
INSERT INTO public.teams VALUES (391, 'Russia');
INSERT INTO public.teams VALUES (392, 'Sweden');
INSERT INTO public.teams VALUES (393, 'Brazil');
INSERT INTO public.teams VALUES (394, 'Uruguay');
INSERT INTO public.teams VALUES (395, 'Colombia');
INSERT INTO public.teams VALUES (396, 'Switzerland');
INSERT INTO public.teams VALUES (397, 'Japan');
INSERT INTO public.teams VALUES (398, 'Mexico');
INSERT INTO public.teams VALUES (399, 'Denmark');
INSERT INTO public.teams VALUES (400, 'Spain');
INSERT INTO public.teams VALUES (401, 'Portugal');
INSERT INTO public.teams VALUES (402, 'Argentina');
INSERT INTO public.teams VALUES (403, 'Germany');
INSERT INTO public.teams VALUES (404, 'Netherlands');
INSERT INTO public.teams VALUES (405, 'Costa Rica');
INSERT INTO public.teams VALUES (406, 'Chile');
INSERT INTO public.teams VALUES (407, 'Nigeria');
INSERT INTO public.teams VALUES (408, 'Algeria');
INSERT INTO public.teams VALUES (409, 'Greece');
INSERT INTO public.teams VALUES (410, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 542, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 410, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games opponent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_id_fk FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_id_fk FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

