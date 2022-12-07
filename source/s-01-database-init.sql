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
create user magestic with encrypted password 'magestic';
create database magestic with owner magestic encoding 'UTF8';
grant all privileges on database magestic to magestic;

-- Change user for next scripts
\c magestic magestic

-- Create extra extensions for libraries
create extension unaccent;
create extension pgcrypto;