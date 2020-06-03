--
-- PostgreSQL database dump
--

-- Dumped from database version 11.7
-- Dumped by pg_dump version 11.7

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

SET default_with_oids = false;

--
-- Name: airline_delay; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline_delay (
    index bigint,
    "UniqueCarrier" text,
    "ArrDelay" double precision,
    "DepDelay" double precision,
    "Distance" bigint,
    "Cancelled" bigint,
    "CancellationCode" text,
    "Diverted" bigint,
    "CarrierDelay" double precision,
    "Date" timestamp without time zone
);


ALTER TABLE public.airline_delay OWNER TO postgres;

--
-- Name: airline_fleet_cost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline_fleet_cost (
    "Parent Airline" text,
    "Total nr of units" double precision,
    "Unit Cost M$" integer,
    "Total Cost $M" integer,
    "Fleet Age Average" double precision,
    "Fleet Age Distribution" double precision
);


ALTER TABLE public.airline_fleet_cost OWNER TO postgres;

--
-- Name: airline_name; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline_name (
    index bigint,
    "Operating Airline" text,
    "Operating Airline IATA Code" text,
    "Published Airline" text,
    "Published Airline IATA Code" text
);


ALTER TABLE public.airline_name OWNER TO postgres;

--
-- Name: sfo_data_df; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sfo_data_df (
    index bigint,
    "Activity Period" timestamp without time zone,
    "Operating Airline" text,
    "Operating Airline IATA Code" text,
    "Published Airline" text,
    "Published Airline IATA Code" text,
    "GEO Summary" text,
    "GEO Region" text,
    "Activity Type Code" text,
    "Price Category Code" text,
    "Passenger Count" bigint,
    "Published Airline_y" text,
    "Landing Aircraft Type" text,
    "Aircraft Manufacturer" text,
    "Aircraft Model" text,
    "Landing Count" bigint,
    "Total Landed Weight" bigint
);


ALTER TABLE public.sfo_data_df OWNER TO postgres;

--
-- Name: sfo_landing_statistics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sfo_landing_statistics (
    index bigint,
    "Activity Period" timestamp without time zone,
    "Published Airline" text,
    "Published Airline IATA Code" text,
    "GEO Summary" text,
    "GEO Region" text,
    "Landing Aircraft Type" text,
    "Aircraft Manufacturer" text,
    "Aircraft Model" text,
    "Landing Count" bigint,
    "Total Landed Weight" bigint
);


ALTER TABLE public.sfo_landing_statistics OWNER TO postgres;

--
-- Name: sfo_passanger_statistics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sfo_passanger_statistics (
    index bigint,
    "Activity Period" timestamp without time zone,
    "Operating Airline" text,
    "Operating Airline IATA Code" text,
    "Published Airline" text,
    "Published Airline IATA Code" text,
    "GEO Summary" text,
    "GEO Region" text,
    "Activity Type Code" text,
    "Price Category Code" text,
    "Passenger Count" bigint
);


ALTER TABLE public.sfo_passanger_statistics OWNER TO postgres;

--
-- Name: ix_airline_delay_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_airline_delay_index ON public.airline_delay USING btree (index);


--
-- Name: ix_airline_fleet_cost_Parent Airline; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ix_airline_fleet_cost_Parent Airline" ON public.airline_fleet_cost USING btree ("Parent Airline");


--
-- Name: ix_airline_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_airline_name_index ON public.airline_name USING btree (index);


--
-- Name: ix_sfo_data_df_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_sfo_data_df_index ON public.sfo_data_df USING btree (index);


--
-- Name: ix_sfo_landing_statistics_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_sfo_landing_statistics_index ON public.sfo_landing_statistics USING btree (index);


--
-- Name: ix_sfo_passanger_statistics_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_sfo_passanger_statistics_index ON public.sfo_passanger_statistics USING btree (index);


--
-- PostgreSQL database dump complete
--

