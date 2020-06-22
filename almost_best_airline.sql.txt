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
-- Name: airline_delay_stat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline_delay_stat (
    "UniqueCarrier" text,
    "ArrDelay_avg" double precision,
    "DepDelay_avg" double precision,
    "Distance_avg" double precision,
    "CarrierDelay_avg" double precision,
    year double precision,
    "ArrDelay_sum" double precision,
    "DepDelay_sum" double precision,
    "Distance_sum" bigint,
    "CarrierDelay_sum" double precision
);


ALTER TABLE public.airline_delay_stat OWNER TO postgres;

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
-- Name: airline_performance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline_performance (
    "Published Airline IATA Code" text,
    "Landing_Count" double precision,
    "Passenger_Count" bigint,
    "Total_Landed_Weight" double precision,
    "Number_of_Airplanes" double precision,
    "Total_Cost_$M" double precision,
    "Fleet_Age_Average" double precision,
    "Fleet_Age_Distribution" double precision,
    "Published_Airline_Air_Berlin" bigint,
    "Published_Airline_Air_Canada" bigint,
    "Published_Airline_Air_China" bigint,
    "Published_Airline_Air_New_Zealand" bigint,
    "Published_Airline_Alaska_Airlines" bigint,
    "Published_Airline_All_Nippon_Airways" bigint,
    "Published_Airline_Allegiant_Air" bigint,
    "Published_Airline_American_Airlines" bigint,
    "Published_Airline_Asiana_Airlines" bigint,
    "Published_Airline_Cathay_Pacific" bigint,
    "Published_Airline_China_Airlines" bigint,
    "Published_Airline_Emirates" bigint,
    "Published_Airline_Etihad_Airways" bigint,
    "Published_Airline_Frontier_Airlines" bigint,
    "Published_Airline_Hawaiian_Airlines" bigint,
    "Published_Airline_Japan_Airlines" bigint,
    "Published_Airline_Jet_Airways" bigint,
    "Published_Airline_Philippine_Airlines" bigint,
    "Published_Airline_Qantas_Airways" bigint,
    "Published_Airline_Singapore_Airlines" bigint,
    "Published_Airline_Spirit_Airlines" bigint,
    "Published_Airline_Thomas_Cook_Airlines" bigint,
    "Published_Airline_Turkish_Airlines" bigint,
    "Published_Airline_United_Airlines" bigint,
    "Published_Airline_Virgin_America" bigint,
    "GEO_Summary_Domestic" bigint,
    "GEO_Summary_International" bigint,
    "Price_Category_Code_Low_Fare" bigint,
    "Price_Category_Code_Other" bigint,
    "Landing_Aircraft_Type_0.17855239944516121" bigint,
    "Landing_Aircraft_Type_0.6631465954645208" bigint,
    "GEO_Region_Asia" bigint,
    "GEO_Region_Australia_/_Oceania" bigint,
    "GEO_Region_Canada" bigint,
    "GEO_Region_Europe" bigint,
    "GEO_Region_Middle_East" bigint,
    "GEO_Region_US" bigint
);


ALTER TABLE public.airline_performance OWNER TO postgres;

--
-- Name: sfo_data_df; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sfo_data_df (
    index bigint,
    "Published Airline IATA Code" text,
    "Published Airline" text,
    "Landing Count" double precision,
    "Passenger Count" bigint,
    "Total Landed Weight" double precision,
    "GEO Summary" text,
    "Price Category Code" text,
    "Landing Aircraft Type" double precision,
    "GEO Region" text
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
-- Name: ix_airline_delay_stat_UniqueCarrier; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ix_airline_delay_stat_UniqueCarrier" ON public.airline_delay_stat USING btree ("UniqueCarrier");


--
-- Name: ix_airline_fleet_cost_Parent Airline; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ix_airline_fleet_cost_Parent Airline" ON public.airline_fleet_cost USING btree ("Parent Airline");


--
-- Name: ix_airline_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_airline_name_index ON public.airline_name USING btree (index);


--
-- Name: ix_airline_performance_Published Airline IATA Code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ix_airline_performance_Published Airline IATA Code" ON public.airline_performance USING btree ("Published Airline IATA Code");


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

