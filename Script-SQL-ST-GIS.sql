/*Querys de Script para variados projetos.*/

/*Query para comparar tabelas com colunas iguais contando o maximo de valores e contador de linhas dentro de uma coluna.*/

select ALIAS4.Columm, MAX(COLUMM_*) AS "ALIAS",
    COUNT(COLUMM_*) AS "ALIAS2"
FROM DATABASE.TABEL AS "ALIAS3"
INNER JOIN DATABASE.TABEL AS "ALIAS4"
ON ALIAS3.COLUMM = ALIAS4.COLUMM
GROUP BY "ALIAS".COLUMM_*; --CASO TENHA COLUNAS COM VALOR REPETIDO

/*******************************************************************************/
/*Query para criação de tabela temporaria aonde vão ser alocados valores de colunas especificas.*/

CREATE TABLE TABEL_TEMP(

    COLUMM_A VARCHAR(45), -- OU OUTRA TIPAGEM ESPECIFICA
    COLUMM_B INT,
    COLUMM_C DATETIME 

    );

INSERT INTO TABEL_A
SELECT ALIAS1.COLUMM_A, COUNT(COLUMM_B) AS "ALIAS1"
    MIN(COLUMM_B) AS "ALIAS2"
FROM DATABASE.TABEL_A AS "ALIAS3"
INNER JOIN DATABASE.TABEL_B AS "ALIAS4"
ON ALIAS3.COLUMM_C = ALIAS4.COLUMM_C
GROUP BY "ALIAS".COLUMM_*; -- CASO TENHA COLUNAS COM VALORES REPETIDOS 

/*******************************************************************************/
/*Query para comparar tabelas com colunas iguais contando o minimo de valores e contador de linhas dentro de uma coluna.*/

SELECT ALIAS3.COLUMM_A, COUNT(COLUMM_*) AS "ALIAS1",
    MIN(COLUMM_*) AS "ALIAS2"
INNER JOIN DATABASE.TABEL_A AS "ALIAS3"
ON ALIAS2.COLUMM_A = ALIAS3.COLUMM_A
GROUP BY "ALIAS".COLUMM_* -- CASO TENHA COLUNAS COM VALORES REPETIDOS

/*******************************************************************************/
/*Query para comparação de colunas com valores iguais e fazendo validação de pontos "spacial" que estejam no mesmo ponto
e seguindo uma ordem da superficie da área.*/

SELECT COLUMM_A, COUNT(COLUMM_B) AS "ALIAS1"
FROM DATABASE.TABEL_A AS "ALIAS2"
INNER JOIN DATABASE.TABEL_B AS "ALIAS3"
ON ALIAS2.COLUMM_A = ALIAS3.COLUMM_A
WHERE COLUMM_* = 'NOME' 
    AND COLUMM_* = 'NOME' -- CONDICIONAL
GROUP BY "ALIAS".COLUMM_* -- CASO TENHA COLUNAS COM VALORES REPETIDOS

SELECT COLUMM_A, COUNT(A.TABEL_A) AS "ALIAS1"
FROM DATABASE.COLUMM_* A, DATABASE.COLUMM_* B 
WHERE A.SHAPE.STIntersects(B.SHAPE) = 1 -- TRUE
AND A.Columm_A = (
    SELECT TOP 1 COLUMM FROM (
        SELECT TOP 2 COLUMM
        FROM DATABASE.TABEL_A
        ORDER BY SHAPE.STArea() DESC
        ) A1 ORDER BY COLUMM_* -- CASO TENHA COLUNAS COM VALORES FORA DE ORDEM
    ) GROUP BY COLUMM_* ---- CASO TENHA COLUNAS COM VALORES REPETIDOS 

/*******************************************************************************/
