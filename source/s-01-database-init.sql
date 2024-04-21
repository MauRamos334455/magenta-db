--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      UNAM
-- Project :      magenta
-- Author :       C. Mauricio Ramos V.,
--                Carolina Kennedy V.
--
-- Date Created : Monday, May 23, 2022 16:10:58
-- Target DBMS : Postgres 14
--
-- Description : User and database creation
--

-- With postgres user
create user magenta with encrypted password 'magenta';
create database magenta with owner magenta encoding 'UTF8';
grant all privileges on database magenta to magenta;

-- Change user for next scripts
\c magenta magenta

-- Create extra extensions for libraries
create extension unaccent;
create extension pgcrypto;