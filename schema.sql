/* Database schema to keep the structure of entire database. */

CREATE DATABASE vet_clinic;

CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  date_of_birth DATE,
  escape_attempts INTEGER,
  neutered BOOLEAN,
  weight_kg DECIMAL(5,2)
);

-- Second Section

ALTER TABLE animals ADD species varchar(150);
