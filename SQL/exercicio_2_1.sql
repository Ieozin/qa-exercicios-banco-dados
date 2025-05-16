-- SQL/exercicio_2_1.sql
-- Número de registros encontrados pela busca do Exercício 1.1 (filmes e categorias).
USE sakila;

SELECT COUNT(*) AS total_registros_filme_categoria
FROM
    film AS f
JOIN
    film_category AS fc ON f.film_id = fc.film_id
JOIN
    category AS c ON fc.category_id = c.category_id;