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


-- A definição da nossa tabela é a seguinte: 
order_id SMALLINT UNSIGNED PRIMARY KEY (id do pedido)
store_id TINYINT UNSIGNEDNOT NULL (qual loja fez o pedido)
film_id SMALLINT UNSIGNED NOT NULL (qual filme foi pedido)
ordered_amount SMALLINT UNSIGNED NOT NULL (quantos filmes foram pedidos)
price DECIMAL(10,3) NOT NULL (quanto custa o pedido)
order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP

CREATE TABLE sakila.order (
    order_id INT NOT NULL AUTO_INCREMENT,
    store_id TINYINT(255) UNSIGNED NOT NULL,
    film_id SMALLINT(255) UNSIGNED NOT NULL,
    ordered_amount SMALLINT(255) UNSIGNED NOT NULL,
    price DECIMAL(10, 3) UNSIGNED NOT NULL,
    order_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (order_id)
);

ALTER TABLE sakila.order
ADD INDEX fk_store_id_idx (store_id ASC) VISIBLE,
ADD INDEX fk_film_id_idx (film_id ASC) VISIBLE,
ADD CONSTRAINT fk_store_id
FOREIGN KEY (store_id)
REFERENCES sakila.store (store_id)
ON DELETE RESTRICT
ON DELETE CASCADE, 
ADD CONSTRAINT fk_film_id
FOREIGN KEY (film_id)
ON DELETE RESTRICT
ON DELETE CASCADE;