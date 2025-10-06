use getting_started_with_sql;

-- Insert into <table> (column1, column2,...) values (values for column1, column2,....), (values for column1, column2,....), ...
INSERT INTO Languages (name, type, first_appeared, designed_by) VALUES 
('duydo', 'student', '2006', 'my parents');

SELECT * FROM Languages;			-- Notice the inserted record at the last row

UPDATE Languages                  -- Update <table>
SET name = 'Đỗ Đức Duy'			  -- set <column> = new value
WHERE name = 'duydo';			  -- where condition

SELECT * FROM Languages;           -- Notice the update on the last row

-- Delete: Delete a record
DELETE FROM Languages
WHERE name = 'Đỗ Đức Duy';

SELECT * FROM Languages;           -- Notice the new record has been deleted