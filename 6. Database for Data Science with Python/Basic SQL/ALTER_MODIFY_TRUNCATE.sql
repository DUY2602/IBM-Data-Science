use getting_started_with_sql;

-- ALTER TABLE statements can be used to add or remove columns from a table, to modify the data type of columns, to add or remove keys, and to add or remove constraints
ALTER TABLE Languages
ADD status varchar(50);

-- Sometimes, the data presented may be in a different format than required. In such a case, we need to modify the data_type of the column. 
ALTER TABLE Languages
MODIFY status bit;

UPDATE Languages
SET status = 1;

-- TRUNCATE TABLE statements are used to delete all of the rows in a table. 
TRUNCATE TABLE Languages;

-- DROP TABLE: Delete the table
DROP TABLE Languages;

-- DROP DATABASE
DROP DATABASE getting_started_with_sql;
