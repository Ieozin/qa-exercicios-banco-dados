-- SQL/exercicio_2_2.sql
-- Número de registros encontrados pela busca do Exercício 1.2 (atores e número de filmes).
USE sakila;

SELECT
    COUNT(*) AS total_atores_com_filmes
FROM (
    SELECT
        a.actor_id 
    FROM
        actor AS a
    JOIN
        film_actor AS fa ON a.actor_id = fa.actor_id
    GROUP BY
        a.actor_id
) AS subconsulta_atores;