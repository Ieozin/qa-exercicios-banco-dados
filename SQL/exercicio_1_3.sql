-- SQL/exercicio_1_3.sql
-- Lista de atores que atuaram em filmes com mais de duas horas de duração (120min).
-- Ordenada pelo numero de filmes que cada ator participou.
USE sakila;

SELECT
    a.first_name AS nome_ator,
    a.last_name AS sobrenome_ator,
    COUNT(DISTINCT f.film_id) AS numero_de_filmes_longos
FROM
    actor AS a
JOIN
    film_actor AS fa ON a.actor_id = fa.actor_id
JOIN
    film AS f ON fa.film_id = f.film_id
WHERE
    f.length > 120
GROUP BY
    a.actor_id, a.first_name, a.last_name
ORDER BY
    numero_de_filmes_longos DESC;