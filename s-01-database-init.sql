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

-- With postgres user
create user magesticd with encrypted password 'magesticd';
create database magesticd with owner magesticd encoding 'UTF8';
grant all privileges on database magesticd to magesticd;

-- Change user for next scripts
\c magesticd magesticd

-- Create extra extensions for libraries
create extension unaccent;
create extension pgcrypto;