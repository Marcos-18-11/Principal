START TRANSACTION;
INSERT INTO city (ID, Name, CountryCode, District, Population)  -- Replace with your actual columns
VALUES (99999, 'Test City', 'TST', 'Test District', 10000);
SELECT * FROM city WHERE ID = 99999; -- Check the inserted data
ROLLBACK;
SELECT * FROM city WHERE ID = 99999; -- Verify the rollback
