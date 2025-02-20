CREATE USER 'db_user'@'localhost' IDENTIFIED BY 'password';


GRANT SELECT ON city TO 'db_user'@'localhost';
GRANT SELECT ON country TO 'db_user'@'localhost';


GRANT INSERT, UPDATE ON city TO 'db_user'@'localhost';
REVOKE INSERT, UPDATE, DELETE ON country FROM 'db_user'@'localhost';
GRANT SELECT ON high_population_cities TO 'db_user'@'localhost';