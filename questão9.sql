CREATE OR REPLACE
VIEW gerentes
AS
SELECT f.nome
AS nome_gerente, d.codigo
AS dep_gerente, f.salario
AS salario_gerente
FROM departamento d, funcionario f
WHERE d.gerente=f.codigo;

SELECT f.nome, d.sigla
FROM funcionario f, departamento d, gerentes ge
WHERE f.salario>ge.salario_gerente
AND d.codigo=ge.dep_gerente
AND f.depto=d.codigo;
