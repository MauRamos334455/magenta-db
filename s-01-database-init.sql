--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      UNAM
-- Project :      magesticd
-- Author :       C. Mauricio Ramos V.,
--                Carolina Kennedy V.
--
-- Date Created : Monday, May 23, 2022 16:10:58
-- Target DBMS : Postgres 14
--
-- Description : User and database creation
--

create user magesticd with encrypted password 'magesticd';
create database magesticd with owner MagestiCD encoding UTF8;
grant all privileges on database magesticd to magesticd;