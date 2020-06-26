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
    "total_cost_$m" double precision,
    fleet_age_average double precision,
    fleet_age_distribution double precision
);


ALTER TABLE public.airline_cost_filtered OWNER TO postgres;

--
-- Name: airline_delay_stat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline_delay_stat (
    "UniqueCarrier" text,
    arrdelay_avg double precision,
    depdelay_avg double precision,
    distance_avg double precision,
    carrierdelay_avg double precision,
    year double precision,
    arrdelay_sum double precision,
    depdelay_sum double precision,
    distance_sum bigint,
    carrierdelay_sum double precision
);


ALTER TABLE public.airline_delay_stat OWNER TO postgres;

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
    "total_cost_$m" integer,
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
    "Published_Airline_IATA_Code" text,
    landing_count double precision,
    passenger_count bigint,
    total_landed_weight double precision,
    number_of_airplanes double precision,
    "total_cost_$m" double precision,
    fleet_age_average double precision,
    fleet_age_distribution double precision,
    published_airline_air_berlin bigint,
    published_airline_air_canada bigint,
    published_airline_air_china bigint,
    published_airline_air_new_zealand bigint,
    published_airline_alaska_airlines bigint,
    published_airline_all_nippon_airways bigint,
    published_airline_allegiant_air bigint,
    published_airline_american_airlines bigint,
    published_airline_asiana_airlines bigint,
    published_airline_cathay_pacific bigint,
    published_airline_china_airlines bigint,
    published_airline_emirates bigint,
    published_airline_etihad_airways bigint,
    published_airline_frontier_airlines bigint,
    published_airline_hawaiian_airlines bigint,
    published_airline_japan_airlines bigint,
    published_airline_jet_airways bigint,
    published_airline_philippine_airlines bigint,
    published_airline_qantas_airways bigint,
    published_airline_singapore_airlines bigint,
    published_airline_spirit_airlines bigint,
    published_airline_thomas_cook_airlines bigint,
    published_airline_turkish_airlines bigint,
    published_airline_united_airlines bigint,
    published_airline_virgin_america bigint,
    geo_summary_domestic bigint,
    geo_summary_international bigint,
    price_category_code_low_fare bigint,
    price_category_code_other bigint,
    "landing_aircraft_type_0.17855239944516121" bigint,
    "landing_aircraft_type_0.6631465954645208" bigint,
    geo_region_asia bigint,
    "geo_region_australia_/_oceania" bigint,
    geo_region_canada bigint,
    geo_region_europe bigint,
    geo_region_middle_east bigint,
    geo_region_us bigint
);


ALTER TABLE public.airline_performance OWNER TO postgres;

--
-- Name: delay_airline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delay_airline (
    published_airline text,
    published_airline_iata_code text,
    unique_carrier text,
    carrierdelay_avg double precision
);


ALTER TABLE public.delay_airline OWNER TO postgres;

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
-- Name: sfo_data_df; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sfo_data_df (
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


ALTER TABLE public.sfo_data_df OWNER TO postgres;

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
-- Name: ix_airline_cost_filtered_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_airline_cost_filtered_index ON public.airline_cost_filtered USING btree (index);


--
-- Name: ix_airline_delay_stat_UniqueCarrier; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ix_airline_delay_stat_UniqueCarrier" ON public.airline_delay_stat USING btree ("UniqueCarrier");


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
-- Name: ix_airline_performance_Published_Airline_IATA_Code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ix_airline_performance_Published_Airline_IATA_Code" ON public.airline_performance USING btree ("Published_Airline_IATA_Code");


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

