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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(100) NOT NULL
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

INSERT INTO public.games VALUES (505, 2018, 'Final', 1511, 1512, 4, 2);
INSERT INTO public.games VALUES (506, 2018, 'Third Place', 1513, 1514, 2, 0);
INSERT INTO public.games VALUES (507, 2018, 'Semi-Final', 1512, 1514, 2, 1);
INSERT INTO public.games VALUES (508, 2018, 'Semi-Final', 1511, 1513, 1, 0);
INSERT INTO public.games VALUES (509, 2018, 'Quarter-Final', 1512, 1515, 3, 2);
INSERT INTO public.games VALUES (510, 2018, 'Quarter-Final', 1514, 1516, 2, 0);
INSERT INTO public.games VALUES (511, 2018, 'Quarter-Final', 1513, 1517, 2, 1);
INSERT INTO public.games VALUES (512, 2018, 'Quarter-Final', 1511, 1518, 2, 0);
INSERT INTO public.games VALUES (513, 2018, 'Eighth-Final', 1514, 1519, 2, 1);
INSERT INTO public.games VALUES (514, 2018, 'Eighth-Final', 1516, 1520, 1, 0);
INSERT INTO public.games VALUES (515, 2018, 'Eighth-Final', 1513, 1521, 3, 2);
INSERT INTO public.games VALUES (516, 2018, 'Eighth-Final', 1517, 1522, 2, 0);
INSERT INTO public.games VALUES (517, 2018, 'Eighth-Final', 1512, 1523, 2, 1);
INSERT INTO public.games VALUES (518, 2018, 'Eighth-Final', 1515, 1524, 2, 1);
INSERT INTO public.games VALUES (519, 2018, 'Eighth-Final', 1518, 1525, 2, 1);
INSERT INTO public.games VALUES (520, 2018, 'Eighth-Final', 1511, 1526, 4, 3);
INSERT INTO public.games VALUES (521, 2014, 'Final', 1527, 1526, 1, 0);
INSERT INTO public.games VALUES (522, 2014, 'Third Place', 1528, 1517, 3, 0);
INSERT INTO public.games VALUES (523, 2014, 'Semi-Final', 1526, 1528, 1, 0);
INSERT INTO public.games VALUES (524, 2014, 'Semi-Final', 1527, 1517, 7, 1);
INSERT INTO public.games VALUES (525, 2014, 'Quarter-Final', 1528, 1529, 1, 0);
INSERT INTO public.games VALUES (526, 2014, 'Quarter-Final', 1526, 1513, 1, 0);
INSERT INTO public.games VALUES (527, 2014, 'Quarter-Final', 1517, 1519, 2, 1);
INSERT INTO public.games VALUES (528, 2014, 'Quarter-Final', 1527, 1511, 1, 0);
INSERT INTO public.games VALUES (529, 2014, 'Eighth-Final', 1517, 1530, 2, 1);
INSERT INTO public.games VALUES (530, 2014, 'Eighth-Final', 1519, 1518, 2, 0);
INSERT INTO public.games VALUES (531, 2014, 'Eighth-Final', 1511, 1531, 2, 0);
INSERT INTO public.games VALUES (532, 2014, 'Eighth-Final', 1527, 1532, 2, 1);
INSERT INTO public.games VALUES (533, 2014, 'Eighth-Final', 1528, 1522, 2, 1);
INSERT INTO public.games VALUES (534, 2014, 'Eighth-Final', 1529, 1533, 2, 1);
INSERT INTO public.games VALUES (535, 2014, 'Eighth-Final', 1526, 1520, 1, 0);
INSERT INTO public.games VALUES (536, 2014, 'Eighth-Final', 1513, 1534, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1511, 'France');
INSERT INTO public.teams VALUES (1512, 'Croatia');
INSERT INTO public.teams VALUES (1513, 'Belgium');
INSERT INTO public.teams VALUES (1514, 'England');
INSERT INTO public.teams VALUES (1515, 'Russia');
INSERT INTO public.teams VALUES (1516, 'Sweden');
INSERT INTO public.teams VALUES (1517, 'Brazil');
INSERT INTO public.teams VALUES (1518, 'Uruguay');
INSERT INTO public.teams VALUES (1519, 'Colombia');
INSERT INTO public.teams VALUES (1520, 'Switzerland');
INSERT INTO public.teams VALUES (1521, 'Japan');
INSERT INTO public.teams VALUES (1522, 'Mexico');
INSERT INTO public.teams VALUES (1523, 'Denmark');
INSERT INTO public.teams VALUES (1524, 'Spain');
INSERT INTO public.teams VALUES (1525, 'Portugal');
INSERT INTO public.teams VALUES (1526, 'Argentina');
INSERT INTO public.teams VALUES (1527, 'Germany');
INSERT INTO public.teams VALUES (1528, 'Netherlands');
INSERT INTO public.teams VALUES (1529, 'Costa Rica');
INSERT INTO public.teams VALUES (1530, 'Chile');
INSERT INTO public.teams VALUES (1531, 'Nigeria');
INSERT INTO public.teams VALUES (1532, 'Algeria');
INSERT INTO public.teams VALUES (1533, 'Greece');
INSERT INTO public.teams VALUES (1534, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 536, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1534, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

