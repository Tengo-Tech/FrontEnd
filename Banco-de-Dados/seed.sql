--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2023-12-07 23:29:09

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4898 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 24972)
-- Name: tb_banned; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_banned (
    id_banned integer NOT NULL,
    user_id integer,
    word_id integer
);


ALTER TABLE public.tb_banned OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24971)
-- Name: tb_banned_id_banned_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_banned_id_banned_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_banned_id_banned_seq OWNER TO postgres;

--
-- TOC entry 4899 (class 0 OID 0)
-- Dependencies: 223
-- Name: tb_banned_id_banned_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_banned_id_banned_seq OWNED BY public.tb_banned.id_banned;


--
-- TOC entry 226 (class 1259 OID 25007)
-- Name: tb_occurance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_occurance (
    id_occurance integer NOT NULL,
    city character varying(255),
    ocurrence_date timestamp without time zone,
    word_id integer,
    media_id integer
);


ALTER TABLE public.tb_occurance OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 25006)
-- Name: tb_occurance_id_occurance_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_occurance_id_occurance_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_occurance_id_occurance_seq OWNER TO postgres;

--
-- TOC entry 4900 (class 0 OID 0)
-- Dependencies: 225
-- Name: tb_occurance_id_occurance_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_occurance_id_occurance_seq OWNED BY public.tb_occurance.id_occurance;


--
-- TOC entry 222 (class 1259 OID 24844)
-- Name: tb_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_person (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    sur_name character varying(255),
    cpf character varying(255) NOT NULL,
    avatar_url character varying(255),
    user_id integer
);


ALTER TABLE public.tb_person OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24843)
-- Name: tb_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_person_id_seq OWNER TO postgres;

--
-- TOC entry 4901 (class 0 OID 0)
-- Dependencies: 221
-- Name: tb_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_person_id_seq OWNED BY public.tb_person.id;


--
-- TOC entry 218 (class 1259 OID 24709)
-- Name: tb_social_media; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_social_media (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    company character varying(255)
);


ALTER TABLE public.tb_social_media OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24708)
-- Name: tb_social_media_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_social_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_social_media_id_seq OWNER TO postgres;

--
-- TOC entry 4902 (class 0 OID 0)
-- Dependencies: 217
-- Name: tb_social_media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_social_media_id_seq OWNED BY public.tb_social_media.id;


--
-- TOC entry 220 (class 1259 OID 24824)
-- Name: tb_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_user (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    created_at timestamp without time zone,
    role character varying(255) NOT NULL
);


ALTER TABLE public.tb_user OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24823)
-- Name: tb_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_user_id_seq OWNER TO postgres;

--
-- TOC entry 4903 (class 0 OID 0)
-- Dependencies: 219
-- Name: tb_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_user_id_seq OWNED BY public.tb_user.id;


--
-- TOC entry 216 (class 1259 OID 24673)
-- Name: tb_word; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_word (
    id integer NOT NULL,
    word character varying(255)
);


ALTER TABLE public.tb_word OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24672)
-- Name: tb_word_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_word_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_word_id_seq OWNER TO postgres;

--
-- TOC entry 4904 (class 0 OID 0)
-- Dependencies: 215
-- Name: tb_word_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_word_id_seq OWNED BY public.tb_word.id;


--
-- TOC entry 4717 (class 2604 OID 24975)
-- Name: tb_banned id_banned; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_banned ALTER COLUMN id_banned SET DEFAULT nextval('public.tb_banned_id_banned_seq'::regclass);


--
-- TOC entry 4718 (class 2604 OID 25010)
-- Name: tb_occurance id_occurance; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_occurance ALTER COLUMN id_occurance SET DEFAULT nextval('public.tb_occurance_id_occurance_seq'::regclass);


--
-- TOC entry 4716 (class 2604 OID 24847)
-- Name: tb_person id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_person ALTER COLUMN id SET DEFAULT nextval('public.tb_person_id_seq'::regclass);


--
-- TOC entry 4714 (class 2604 OID 24712)
-- Name: tb_social_media id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_social_media ALTER COLUMN id SET DEFAULT nextval('public.tb_social_media_id_seq'::regclass);


--
-- TOC entry 4715 (class 2604 OID 24827)
-- Name: tb_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user ALTER COLUMN id SET DEFAULT nextval('public.tb_user_id_seq'::regclass);


--
-- TOC entry 4713 (class 2604 OID 24676)
-- Name: tb_word id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_word ALTER COLUMN id SET DEFAULT nextval('public.tb_word_id_seq'::regclass);


--
-- TOC entry 4890 (class 0 OID 24972)
-- Dependencies: 224
-- Data for Name: tb_banned; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_banned VALUES (1, 2, 4);
INSERT INTO public.tb_banned VALUES (2, 2, 2);
INSERT INTO public.tb_banned VALUES (3, 2, 8);
INSERT INTO public.tb_banned VALUES (4, 1, 7);
INSERT INTO public.tb_banned VALUES (5, 1, 2);
INSERT INTO public.tb_banned VALUES (6, 1, 6);
INSERT INTO public.tb_banned VALUES (7, 8, 6);
INSERT INTO public.tb_banned VALUES (8, 8, 10);
INSERT INTO public.tb_banned VALUES (9, 8, 1);
INSERT INTO public.tb_banned VALUES (10, 10, 3);


--
-- TOC entry 4892 (class 0 OID 25007)
-- Dependencies: 226
-- Data for Name: tb_occurance; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_occurance VALUES (1, 'Caruaru', '2023-11-12 00:00:00', 2, 1);
INSERT INTO public.tb_occurance VALUES (2, 'Caruaru', '2023-11-12 00:00:00', 4, 5);
INSERT INTO public.tb_occurance VALUES (3, 'Caruaru', '2023-11-12 00:00:00', 5, 1);
INSERT INTO public.tb_occurance VALUES (4, 'Agrestina', '2023-11-12 00:00:00', 8, 7);
INSERT INTO public.tb_occurance VALUES (5, 'Bezerros', '2023-11-12 00:00:00', 3, 4);
INSERT INTO public.tb_occurance VALUES (6, 'Gravatá', '2023-11-12 00:00:00', 1, 2);
INSERT INTO public.tb_occurance VALUES (7, 'Belo Jardim', '2023-11-12 00:00:00', 1, 5);
INSERT INTO public.tb_occurance VALUES (8, 'Belo Jardim', '2023-11-12 00:00:00', 5, 3);
INSERT INTO public.tb_occurance VALUES (9, 'Tacaimbó', '2023-11-12 00:00:00', 6, 4);
INSERT INTO public.tb_occurance VALUES (10, 'São Caetano', '2023-09-11 00:00:00', 10, 10);


--
-- TOC entry 4888 (class 0 OID 24844)
-- Dependencies: 222
-- Data for Name: tb_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_person VALUES (1, 'Lara', 'Pinto', '187.322.422-20', 'link', 1);
INSERT INTO public.tb_person VALUES (2, 'Douglas', 'Azevedo', '996.085.856-19', 'link', 2);
INSERT INTO public.tb_person VALUES (3, 'Maria', 'Oliveira', '224.501.477-48', 'link', 3);
INSERT INTO public.tb_person VALUES (4, 'Laura', 'Cavalcanti', '598.460.662-36', 'link', 4);
INSERT INTO public.tb_person VALUES (5, 'Rudy', 'Edgerton', '736.947.089-01', 'link', 5);
INSERT INTO public.tb_person VALUES (6, 'Alice', 'Pinto', '401.522.595-38', 'link', 6);
INSERT INTO public.tb_person VALUES (7, 'Fernanda', 'Martins', '840.092.199-20', 'link', 7);
INSERT INTO public.tb_person VALUES (8, 'Gabriel', 'Azevedo', '361.134.913-58', 'link', 8);
INSERT INTO public.tb_person VALUES (9, 'Caio', 'Carvalho', '307.116.380-04', 'link', 9);
INSERT INTO public.tb_person VALUES (10, 'Richard', 'Ellender', '304.115.322-55', 'link', 10);


--
-- TOC entry 4884 (class 0 OID 24709)
-- Dependencies: 218
-- Data for Name: tb_social_media; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_social_media VALUES (1, 'Facebook', 'Meta Platforms');
INSERT INTO public.tb_social_media VALUES (2, 'Instagram', 'Meta Platforms');
INSERT INTO public.tb_social_media VALUES (3, 'X', 'Twitter');
INSERT INTO public.tb_social_media VALUES (4, 'LinkedIn', 'Microsoft');
INSERT INTO public.tb_social_media VALUES (6, 'TikTok', 'ByteDance');
INSERT INTO public.tb_social_media VALUES (7, 'Snapchat', 'Snap');
INSERT INTO public.tb_social_media VALUES (8, 'Pinterest', 'Pinterest');
INSERT INTO public.tb_social_media VALUES (9, 'Reddit', 'Reddit');
INSERT INTO public.tb_social_media VALUES (5, 'WhatsApp', 'Meta Platforms');
INSERT INTO public.tb_social_media VALUES (10, 'YouTube', 'Google LLC');


--
-- TOC entry 4886 (class 0 OID 24824)
-- Dependencies: 220
-- Data for Name: tb_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_user VALUES (2, 'douglasazevedosilva@fleckens.hu', 'Hoput1928', '2022-12-12 00:00:00', 'RH');
INSERT INTO public.tb_user VALUES (3, 'mariaoliveiramelo@teleworm.us', 'H2oput1928', '2022-12-12 00:00:00', 'Jornalismo');
INSERT INTO public.tb_user VALUES (4, 'lauradiascavalcanti@cuvox.de', 'Whowlead', '2022-12-12 00:00:00', 'TI');
INSERT INTO public.tb_user VALUES (5, 'rudymedgerton@fleckens.hu', 'Semandowns76', '2022-12-12 00:00:00', 'RH');
INSERT INTO public.tb_user VALUES (6, 'alicecunhapinto@superrito.com', 'zae3ieSh4ohj', '2022-12-12 00:00:00', 'Jornalismo');
INSERT INTO public.tb_user VALUES (7, 'fernandaferreiramartins@teleworm.us', 'ceiZiesei3e', '2022-12-12 00:00:00', 'Jornalismo');
INSERT INTO public.tb_user VALUES (8, 'gabrielsouzaazevedo@dayrep.com', 'yie1El5Ei', '2022-12-12 00:00:00', 'TI');
INSERT INTO public.tb_user VALUES (9, 'caiocorreiacarvalho@gustr.com', 'Eiqu7re3ie', '2022-12-12 00:00:00', 'RH');
INSERT INTO public.tb_user VALUES (10, 'richardhellender@einrot.com', 'EapaiVaesh6', '2022-12-12 00:00:00', 'Jornalismo');
INSERT INTO public.tb_user VALUES (1, 'larapintocardoso@gustr.com', 'ISh1Gohm6Xee', '2022-12-12 00:00:00', 'TI');


--
-- TOC entry 4882 (class 0 OID 24673)
-- Dependencies: 216
-- Data for Name: tb_word; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_word VALUES (1, 'Testosterona');
INSERT INTO public.tb_word VALUES (2, 'Dianabol');
INSERT INTO public.tb_word VALUES (3, 'Deca-Durabolin');
INSERT INTO public.tb_word VALUES (4, 'Trembolona');
INSERT INTO public.tb_word VALUES (5, 'Oxandrolona');
INSERT INTO public.tb_word VALUES (6, 'Estanozolol');
INSERT INTO public.tb_word VALUES (7, 'Primobolan');
INSERT INTO public.tb_word VALUES (8, 'Halotestin');
INSERT INTO public.tb_word VALUES (9, 'Masteron');
INSERT INTO public.tb_word VALUES (10, 'Anadrol');


--
-- TOC entry 4905 (class 0 OID 0)
-- Dependencies: 223
-- Name: tb_banned_id_banned_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_banned_id_banned_seq', 1, false);


--
-- TOC entry 4906 (class 0 OID 0)
-- Dependencies: 225
-- Name: tb_occurance_id_occurance_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_occurance_id_occurance_seq', 1, false);


--
-- TOC entry 4907 (class 0 OID 0)
-- Dependencies: 221
-- Name: tb_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_person_id_seq', 1, false);


--
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 217
-- Name: tb_social_media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_social_media_id_seq', 1, false);


--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 219
-- Name: tb_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_user_id_seq', 1, false);


--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 215
-- Name: tb_word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_word_id_seq', 1, false);


--
-- TOC entry 4730 (class 2606 OID 24977)
-- Name: tb_banned tb_banned_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_banned
    ADD CONSTRAINT tb_banned_pkey PRIMARY KEY (id_banned);


--
-- TOC entry 4732 (class 2606 OID 25012)
-- Name: tb_occurance tb_occurance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_occurance
    ADD CONSTRAINT tb_occurance_pkey PRIMARY KEY (id_occurance);


--
-- TOC entry 4726 (class 2606 OID 24853)
-- Name: tb_person tb_person_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_person
    ADD CONSTRAINT tb_person_cpf_key UNIQUE (cpf);


--
-- TOC entry 4728 (class 2606 OID 24851)
-- Name: tb_person tb_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_person
    ADD CONSTRAINT tb_person_pkey PRIMARY KEY (id);


--
-- TOC entry 4722 (class 2606 OID 24716)
-- Name: tb_social_media tb_social_media_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_social_media
    ADD CONSTRAINT tb_social_media_pkey PRIMARY KEY (id);


--
-- TOC entry 4724 (class 2606 OID 24831)
-- Name: tb_user tb_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_user
    ADD CONSTRAINT tb_user_pkey PRIMARY KEY (id);


--
-- TOC entry 4720 (class 2606 OID 24678)
-- Name: tb_word tb_word_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_word
    ADD CONSTRAINT tb_word_pkey PRIMARY KEY (id);


--
-- TOC entry 4734 (class 2606 OID 24978)
-- Name: tb_banned tb_banned_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_banned
    ADD CONSTRAINT tb_banned_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.tb_user(id);


--
-- TOC entry 4735 (class 2606 OID 24983)
-- Name: tb_banned tb_banned_word_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_banned
    ADD CONSTRAINT tb_banned_word_id_fkey FOREIGN KEY (word_id) REFERENCES public.tb_word(id);


--
-- TOC entry 4736 (class 2606 OID 25018)
-- Name: tb_occurance tb_occurance_media_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_occurance
    ADD CONSTRAINT tb_occurance_media_id_fkey FOREIGN KEY (media_id) REFERENCES public.tb_social_media(id);


--
-- TOC entry 4737 (class 2606 OID 25013)
-- Name: tb_occurance tb_occurance_word_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_occurance
    ADD CONSTRAINT tb_occurance_word_id_fkey FOREIGN KEY (word_id) REFERENCES public.tb_word(id);


--
-- TOC entry 4733 (class 2606 OID 24854)
-- Name: tb_person tb_person_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_person
    ADD CONSTRAINT tb_person_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.tb_user(id);


-- Completed on 2023-12-07 23:29:09

--
-- PostgreSQL database dump complete
--

