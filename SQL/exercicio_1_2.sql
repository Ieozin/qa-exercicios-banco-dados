-- SQL/exercicio_1_2.sql
-- Lista de todos os atores com o número filmes que cada ator participou.
-- Ordenada pelo numero de filmes (maior para menor).
USE sakila;

SELECT
    a.first_name AS nome_ator,
    a.last_name AS sobrenome_ator,
    COUNT(fa.film_id) AS numero_de_filmes
FROM
    actor AS a
JOIN
    film_actor AS fa ON a.actor_id = fa.actor_id
GROUP BY
    a.actor_id, a.first_name, a.last_name
ORDER BY
    numero_de_filmes DESC;