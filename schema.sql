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


-- Part 3 :- Multiple Tables will be added below

CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  full_name TEXT NOT NULL,
  age INTEGER NOT NULL
);

CREATE TABLE species (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

-- Altering the table below

ALTER TABLE animals
DROP COLUMN species,
ADD COLUMN species_id INT,
ADD COLUMN owner_id INT,
ADD CONSTRAINT fok_species
  FOREIGN KEY (species_id)
  REFERENCES species(id),
ADD CONSTRAINT fok_owner
  FOREIGN KEY (owner_id)
  REFERENCES owners(id);


-- 4th and final seciton of the project

-- Project 4

CREATE TABLE veterinarians (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  graduation_date DATE NOT NULL
);

CREATE TABLE specializations (
  veterinarian_id INT NOT NULL,
  species_id INT NOT NULL,
  PRIMARY KEY (veterinarian_id, species_id),
  FOREIGN KEY (veterinarian_id) REFERENCES veterinarians(id),
  FOREIGN KEY (species_id) REFERENCES species(id)
);

CREATE TABLE visits (
  animal_id INT NOT NULL,
  veterinarian_id INT NOT NULL,
  visit_date DATE NOT NULL,
  PRIMARY KEY (animal_id, veterinarian_id, visit_date),
  FOREIGN KEY (animal_id) REFERENCES animals(id),
  FOREIGN KEY (veterinarian_id) REFERENCES veterinarians(id)
);
