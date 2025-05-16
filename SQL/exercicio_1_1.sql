-- SQL/exercicio_1_1.sql
-- Lista de filmes e suas categorias correspondentes.
USE sakila;

SELECT
    f.title AS titulo_do_filme,
    c.name AS nome_da_categoria
FROM
    film AS f
JOIN
    film_category AS fc ON f.film_id = fc.film_id
JOIN
    category AS c ON fc.category_id = c.category_id;