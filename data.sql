/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES
  ('Agumon', '2020-02-03', 0, TRUE, 10.23),
  ('Gabumon', '2018-11-15', 2, TRUE, 8),
  ('Pikachu', '2021-01-07', 1, FALSE, 15.04),
  ('Devimon', '2017-05-12', 5, TRUE, 11);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Charmander', '2020-02-08', 0, false, -11),
       ('Plantmon', '2021-11-15', 2, true, -5.7),
       ('Squirtle', '1993-04-02', 3, false, -12.13),
       ('Angemon', '2005-06-12', 1, true, -45),
       ('Boarmon', '2005-06-07', 7, true, 20.4),
       ('Blossom', '1998-10-13', 3, true, 17),
       ('Ditto', '2022-05-14', 4, true, 22);

--Insert the given data into the owners table using the code below

INSERT INTO owners (full_name, age)
VALUES
('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);

INSERT INTO species (name)
VALUES ('Pokemon'), ('Digimon');

UPDATE animals
SET species_id = s.id
FROM species s
WHERE animals.name LIKE '%mon' AND s.name = 'Digimon';

UPDATE animals
SET species_id = s.id
FROM species s
WHERE animals.species_id IS NULL AND s.name = 'Pokemon';

UPDATE animals
SET owner_id = o.id
FROM owners o
WHERE animals.name IN ('Agumon') AND o.full_name = 'Sam Smith';

UPDATE animals
SET owner_id = o.id
FROM owners o
WHERE animals.name IN ('Gabumon', 'Pikachu') AND o.full_name = 'Jennifer Orwell';

UPDATE animals
SET owner_id = o.id
FROM owners o
WHERE animals.name IN ('Devimon', 'Plantmon') AND o.full_name = 'Bob';

UPDATE animals
SET owner_id = o.id
FROM owners o
WHERE animals.name IN ('Charmander', 'Squirtle', 'Blossom') AND o.full_name = 'Melody Pond';

UPDATE animals
SET owner_id = o.id
FROM owners o
WHERE animals.name IN ('Angemon', 'Boarmon') AND o.full_name = 'Dean Winchester';

