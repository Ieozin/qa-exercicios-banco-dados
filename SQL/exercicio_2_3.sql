-- SQL/exercicio_2_3.sql
-- Número de registros encontrados pela busca do Exercício 1.3 (atores em filmes longos).
USE sakila;

SELECT
    COUNT(*) AS total_atores_em_filmes_longos
FROM (
    SELECT
        a.actor_id
    FROM
        actor AS a
    JOIN
        film_actor AS fa ON a.actor_id = fa.actor_id
    JOIN
        film AS f ON fa.film_id = f.film_id
    WHERE
        f.length > 120
    GROUP BY
        a.actor_id
) AS subconsulta_atores_filmes_longos;