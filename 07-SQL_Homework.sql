USE sakila;

ALTER TABLE sakila.actor
DROP COLUMN actor_full_name,
DROP COLUMN full_name,
DROP COLUMN Actor_Name,
ADD COLUMN  Actor_Full_Name VARCHAR(100) NOT NULL AFTER actor_id;


SET SQL_SAFE_UPDATES = 0;

UPDATE sakila.actor
SET Actor_Full_Name = CONCAT(first_name, " ", last_name);
SELECT * FROM sakila.actor;

SeLECT actor_id, last_name, Actor_Name FROM actor  WHERE first_name = "Joe";

SELECT * FROM sakila.actor WHERE last_name LIKE '%GEN%';

SELECT * FROM sakila.actor WHERE last_name LIKE '%LI%'
ORDER BY last_name, first_name;

SELECT country_id, country FROM country WHERE country IN ("Afghanistan", "Bangladesh", "China");

ALTER TABLE actor
ADD COLUMN description BLOB(1000) DEFAULT NULL ;
SELECT * FROM sakila.actor;  

ALTER TABLE actor
DROP COLUMN description,
GROUP BY last_name,
SELECT * FROM sakila.actor WHERE last_name NOT DISTINCT;                                                                                                                                                                                                                                                                                        DISTINCT;

LIST(last_name DISTINCT;

COUNT(last_name DISTINCT)

