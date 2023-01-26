INSERT INTO sakila.actor
(actor_id, first_name, last_name, last_update) VALUES (201, 'Cebolinha', 'Souza', NOW());

UPDATE sakila.actor SET last_name = 'Limoeiro', last_update = NOW() WHERE actor_id = 202;

INSERT INTO sakila.actor
(actor_id, first_name, last_name, last_update) VALUES (201, 'Cebolinha', 'Souza', NOW());


SELECT language_id FROM sakila.language

INSERT INTO sakila.film
(title, description, language_id) VALUES ('Glass Onion', 'Satiric film', 1);

INSERT INTO sakila.film_actor
(film_id, actor_id) VALUES (1001, 201)