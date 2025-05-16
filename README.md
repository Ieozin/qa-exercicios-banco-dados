# Exercícios de Banco de Dados - SQL e NoSQL (Módulo 32 QA)

Este repositório contém as soluções para os exercícios propostos no Módulo 32 do curso de QA, focados em consultas a bancos de dados SQL (utilizando o banco de dados Sakila no MySQL) e NoSQL (utilizando um arquivo `books.json` no MongoDB).

## Estrutura do Repositório

O projeto está organizado da seguinte forma:

-   **/SQL/**: Contém os scripts SQL para as consultas no banco de dados Sakila (MySQL).
    -   `exercicio_1_1.sql`: Lista de filmes e suas categorias.
    -   `exercicio_1_2.sql`: Lista de atores e o número de filmes em que participaram, ordenado.
    -   `exercicio_1_3.sql`: Lista de atores que atuaram em filmes com mais de 120 minutos, ordenado.
    -   `exercicio_2_1.sql`: Contagem de registros para a consulta de filmes e categorias (SQL Ex. 1.1).
    -   `exercicio_2_2.sql`: Contagem de atores com filmes (SQL Ex. 1.2).
    -   `exercicio_2_3.sql`: Contagem de atores em filmes longos (SQL Ex. 1.3).
-   **/NoSQL/**: Contém os scripts/comandos para as consultas no banco de dados de livros (MongoDB).
    -   `exercicio_1_1.nosql`: Busca: Livros não publicados com menos de 300 páginas.
    -   `exercicio_1_2.nosql`: Busca: Livros com "MongoDB" e "SQL Server" no título.
    -   `exercicio_1_3.nosql`: Busca: Livros com ISBN começando com "18".
    -   `exercicio_1_4.nosql`: Busca: Livros com "JAVA" ou "Mobile" na descrição.
    -   `exercicio_2_1_count.nosql`: Contagem para a consulta NoSQL Ex. 1.1.
    -   `exercicio_2_2_count.nosql`: Contagem para a consulta NoSQL Ex. 1.2.
    -   `exercicio_2_3_count.nosql`: Contagem para a consulta NoSQL Ex. 1.3.
    -   `exercicio_2_4_count.nosql`: Contagem para a consulta NoSQL Ex. 1.4.

## Pré-requisitos e Configuração

### SQL (MySQL - Sakila)

1.  **Servidor MySQL:** Um servidor MySQL deve estar em execução.
2.  **Banco de Dados Sakila:** O banco de dados de exemplo `sakila` precisa estar importado e acessível neste servidor.
3.  **Cliente SQL:** Qualquer cliente SQL compatível com MySQL (ex: DBeaver, MySQL Workbench, HeidiSQL) pode ser usado para executar os scripts.
4.  **Execução:** Os scripts na pasta `SQL/` incluem `USE sakila;` no início para selecionar o banco de dados correto antes de executar as consultas.

### NoSQL (MongoDB - books.json)

1.  **Servidor MongoDB:** Um servidor MongoDB deve estar em execução. Para este projeto, foi utilizada uma instância Docker.
    -   Comando para iniciar um container MongoDB (exemplo):
        ```bash
        docker run -d --name meu-mongo-db -p 27017:27017 mongo
        ```
2.  **Dados `books.json`:** O arquivo `books.json` (fornecido na atividade) deve ser importado.
    -   **Importação:**
        1.  Copie o arquivo `books.json` para dentro do container:
            ```bash
            docker cp /caminho/para/seu/books.json meu-mongo-db:/tmp/books.json
            ```
        2.  Execute `mongoimport` dentro do container (acessado via `docker exec -it meu-mongo-db sh`):
            ```bash
            # Dentro do shell do container
            mongoimport --db biblioteca --collection livros --file /tmp/books.json
            ```
            *(Observação: Assume-se que `books.json` é um arquivo NDJSON, ou seja, um documento JSON por linha. Se for um array JSON, adicione `--jsonArray` ao comando `mongoimport`.)*
3.  **Cliente MongoDB:** As consultas podem ser executadas no `mongo` shell (acessível via `docker exec -it meu-mongo-db mongo`) ou através de uma GUI como o Mongo Compass.
4.  **Execução:**
    1.  No `mongo` shell, primeiro execute: `use biblioteca;`
    2.  Em seguida, copie e cole o conteúdo dos arquivos `.nosql` para executar as consultas.

## Como Executar

1.  **Configure os ambientes** SQL e NoSQL conforme descrito nos pré-requisitos.
2.  Para **SQL**, abra os arquivos `.sql` em seu cliente SQL preferido e execute-os contra o banco `sakila`.
3.  Para **NoSQL**, conecte-se ao seu MongoDB, selecione o banco `biblioteca`, e execute os comandos dos arquivos `.nosql`.

---
**Autor:** Leonardo Martins Pereira dos Reis
**Curso:** Engenheiro de Qualidade de Software - EBAC
**Módulo:** 32 - Banco de Dados