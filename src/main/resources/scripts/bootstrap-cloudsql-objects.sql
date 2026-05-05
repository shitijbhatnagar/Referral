-- Run as superuser once during bootstrap
-- Responsible for: database and objects setup

-- 1. Create database
CREATE DATABASE referrals_db;

-- connect to the new database
\c referrals_db

-- 2. Create t_referral table in public schema (default)
create table if not exists T_REFERRAL
(
    id varchar(255) primary key,
    name varchar(255) NOT NULL
);