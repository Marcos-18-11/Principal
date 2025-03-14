INSERT INTO actor (first_name, last_name) 
VALUES ('Marcos', 'Bautista');
update actor
set last_name ='cualquiera'
where actor_id =5;
delete from actor
where actor_id = 5;
ALTER TABLE actor ADD COLUMN middle_name VARCHAR(50);
