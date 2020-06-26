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
-- Name: airline_cost_filtered; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline_cost_filtered (
    index bigint,
    published_airline text,
    published_airline_iata_code text,
    number_of_airplanes double precision,
    total_fleet_cost_million_usd double precision,
    fleet_age_average double precision,
    fleet_age_distribution double precision
);


ALTER TABLE public.airline_cost_filtered OWNER TO postgres;

--
-- Name: airline_delay_stat_db; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline_delay_stat_db (
    "UniqueCarrier" text,
    arrdelay_avg double precision,
    depdelay_avg double precision,
    distance_avg double precision,
    carrierdelay_avg double precision,
    year double precision,
    arrdelay_sum double precision,
    depdelay_sum double precision,
    distance_sum bigint,
    carrierdelay_sum double precision,
    unique_carrier text
);


ALTER TABLE public.airline_delay_stat_db OWNER TO postgres;

--
-- Name: airline_fleet_cost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline_fleet_cost (
    index bigint,
    published_airline text,
    number_of_airplanes double precision,
    total_fleet_cost_million_usd integer,
    fleet_age_average double precision,
    fleet_age_distribution double precision
);


ALTER TABLE public.airline_fleet_cost OWNER TO postgres;

--
-- Name: airline_name; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline_name (
    index bigint,
    published_airline text,
    published_airline_iata_code text
);


ALTER TABLE public.airline_name OWNER TO postgres;

--
-- Name: airline_performance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline_performance (
    published_airline_iata_code text,
    landing_count double precision,
    passenger_count bigint,
    total_landed_weight double precision,
    total_fleet_cost_million_usd double precision,
    fleet_age_average double precision,
    fleet_age_distribution double precision,
    "published_airline_Aer Lingus" bigint,
    "published_airline_Aeromexico" bigint,
    "published_airline_Air Berlin" bigint,
    "published_airline_Air Canada" bigint,
    "published_airline_Air China" bigint,
    "published_airline_Air France" bigint,
    "published_airline_Air New Zealand" bigint,
    "published_airline_Alaska Airlines" bigint,
    "published_airline_All Nippon Airways" bigint,
    "published_airline_Allegiant Air" bigint,
    "published_airline_American Airlines" bigint,
    "published_airline_Asiana Airlines" bigint,
    "published_airline_British Airways" bigint,
    "published_airline_Cathay Pacific" bigint,
    "published_airline_China Airlines" bigint,
    "published_airline_Emirates" bigint,
    "published_airline_Etihad Airways" bigint,
    "published_airline_Frontier Airlines" bigint,
    "published_airline_Hawaiian Airlines" bigint,
    "published_airline_Japan Airlines" bigint,
    "published_airline_Jet Airways" bigint,
    "published_airline_JetBlue Airways" bigint,
    "published_airline_Philippine Airlines" bigint,
    "published_airline_Qantas Airways" bigint,
    "published_airline_Singapore Airlines" bigint,
    "published_airline_Spirit Airlines" bigint,
    "published_airline_Thomas Cook Airlines" bigint,
    "published_airline_Turkish Airlines" bigint,
    "published_airline_United Airlines" bigint,
    "published_airline_Virgin America" bigint,
    "geo_summary_Domestic" bigint,
    "geo_summary_International" bigint,
    price_category_code_low bigint,
    price_category_code_legacy bigint,
    price_category_code_butique bigint,
    landing_aircraft_freight bigint,
    landing_aircraft_passanger bigint,
    "geo_region_Asia" bigint,
    "geo_region_Australia / Oceania" bigint,
    "geo_region_Canada" bigint,
    "geo_region_Europe" bigint,
    "geo_region_Mexico" bigint,
    "geo_region_Middle East" bigint,
    "geo_region_US" bigint
);


ALTER TABLE public.airline_performance OWNER TO postgres;

--
-- Name: airline_performance_dt; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline_performance_dt (
    published_airline_iata_code text,
    activity_period timestamp without time zone,
    published_airline text,
    landing_count double precision,
    passenger_count bigint,
    total_landed_weight double precision,
    geo_summary text,
    price_category_code text,
    landing_aircraft_type double precision,
    geo_region text,
    total_fleet_cost_million_usd double precision,
    fleet_age_average double precision,
    fleet_age_distribution double precision
);


ALTER TABLE public.airline_performance_dt OWNER TO postgres;

--
-- Name: delay_airline_vs_cost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delay_airline_vs_cost (
    published_airline text,
    published_airline_iata_code text,
    carrierdelay_avg double precision,
    number_of_airplanes double precision,
    fleet_age_average double precision
);


ALTER TABLE public.delay_airline_vs_cost OWNER TO postgres;

--
-- Name: sfo_airline_total_cost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sfo_airline_total_cost (
    published_airline text,
    published_airline_iata_code text,
    number_of_airplanes double precision,
    total_fleet_cost_million_usd integer
);


ALTER TABLE public.sfo_airline_total_cost OWNER TO postgres;

--
-- Name: sfo_data_no_date; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sfo_data_no_date (
    index bigint,
    published_airline_iata_code text,
    published_airline text,
    landing_count double precision,
    passenger_count bigint,
    total_landed_weight double precision,
    geo_summary text,
    price_category_code text,
    landing_aircraft_type double precision,
    geo_region text
);


ALTER TABLE public.sfo_data_no_date OWNER TO postgres;

--
-- Name: sfo_landing_statistics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sfo_landing_statistics (
    index bigint,
    activity_period timestamp without time zone,
    published_airline text,
    published_airline_iata_code text,
    geo_summary text,
    geo_region text,
    landing_aircraft_type text,
    aircraft_manufacturer text,
    aircraft_model text,
    landing_count bigint,
    total_landed_weight bigint
);


ALTER TABLE public.sfo_landing_statistics OWNER TO postgres;

--
-- Name: sfo_passanger_statistics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sfo_passanger_statistics (
    index bigint,
    activity_period timestamp without time zone,
    operating_airline text,
    operating_airline_iata_code text,
    published_airline text,
    published_airline_iata_code text,
    geo_summary text,
    geo_region text,
    activity_type_code text,
    price_category_code text,
    passenger_count bigint
);


ALTER TABLE public.sfo_passanger_statistics OWNER TO postgres;

--
-- Name: sql_combined_delay_airline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sql_combined_delay_airline (
    published_airline text,
    published_airline_iata_code text,
    unique_carrier text,
    carrierdelay_avg double precision
);


ALTER TABLE public.sql_combined_delay_airline OWNER TO postgres;

--
-- Name: ix_airline_cost_filtered_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_airline_cost_filtered_index ON public.airline_cost_filtered USING btree (index);


--
-- Name: ix_airline_delay_stat_db_UniqueCarrier; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ix_airline_delay_stat_db_UniqueCarrier" ON public.airline_delay_stat_db USING btree ("UniqueCarrier");


--
-- Name: ix_airline_fleet_cost_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_airline_fleet_cost_index ON public.airline_fleet_cost USING btree (index);


--
-- Name: ix_airline_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_airline_name_index ON public.airline_name USING btree (index);


--
-- Name: ix_airline_performance_dt_published_airline_iata_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_airline_performance_dt_published_airline_iata_code ON public.airline_performance_dt USING btree (published_airline_iata_code);


--
-- Name: ix_airline_performance_published_airline_iata_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_airline_performance_published_airline_iata_code ON public.airline_performance USING btree (published_airline_iata_code);


--
-- Name: ix_sfo_data_no_date_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_sfo_data_no_date_index ON public.sfo_data_no_date USING btree (index);


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

