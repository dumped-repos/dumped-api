--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: git_repos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE git_repos (
    id integer NOT NULL,
    repo_id integer NOT NULL,
    owner_login text NOT NULL,
    owner_avatar_url text DEFAULT ''::text,
    name text NOT NULL,
    full_name text NOT NULL,
    html_url text NOT NULL,
    description text DEFAULT ''::text,
    created_at timestamp without time zone NOT NULL,
    homepage text DEFAULT ''::text,
    size integer NOT NULL,
    stargazers_count integer NOT NULL,
    watchers_count integer NOT NULL,
    language text NOT NULL,
    forks_count integer NOT NULL,
    open_issues_count integer NOT NULL
);


--
-- Name: git_repos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE git_repos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: git_repos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE git_repos_id_seq OWNED BY git_repos.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    filename text NOT NULL
);


--
-- Name: git_repos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY git_repos ALTER COLUMN id SET DEFAULT nextval('git_repos_id_seq'::regclass);


--
-- Name: git_repos git_repos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY git_repos
    ADD CONSTRAINT git_repos_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (filename);


--
-- Name: git_repos_language_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX git_repos_language_index ON git_repos USING btree (language);


--
-- Name: git_repos_name_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX git_repos_name_index ON git_repos USING btree (name);


--
-- PostgreSQL database dump complete
--

