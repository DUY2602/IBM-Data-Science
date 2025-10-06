-- Create a database
CREATE DATABASE IF NOT EXISTS Getting_Started_with_SQL;
USE Getting_Started_with_SQL;

-- Create a table named Languages
CREATE TABLE Languages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(50),
    first_appeared YEAR,
    designed_by VARCHAR(100)
);

-- Insert data to each field in the table
-- Must be careful about the datatype for each field
INSERT INTO Languages (name, type, first_appeared, designed_by) VALUES
('Python', 'Interpreted', 1991, 'Guido van Rossum'),
('Java', 'Compiled', 1995, 'James Gosling'),
('C++', 'Compiled', 1985, 'Bjarne Stroustrup'),
('JavaScript', 'Interpreted', 1995, 'Brendan Eich'),
('Haskell', 'Compiled', 1990, 'Simon Peyton Jones'),
('Go', 'Compiled', 2009, 'Robert Griesemer, Rob Pike, Ken Thompson'),
('Ruby', 'Interpreted', 1995, 'Yukihiro Matsumoto'),
('Rust', 'Compiled', 2010, 'Graydon Hoare'),
('PHP', 'Interpreted', 1995, 'Rasmus Lerdorf'),
('Swift', 'Compiled', 2014, 'Chris Lattner'),
('Kotlin', 'Compiled', 2011, 'JetBrains'),
('TypeScript', 'Compiled', 2012, 'Anders Hejlsberg'),
('Scala', 'Compiled', 2003, 'Martin Odersky'),
('Perl', 'Interpreted', 1987, 'Larry Wall'),
('C', 'Compiled', 1972, 'Dennis Ritchie'),
('Lua', 'Interpreted', 1993, 'Roberto Ierusalimschy, Waldemar Celes, Luiz Henrique de Figueiredo');

SELECT * FROM languages