DELIMITER $
CREATE OR REPLACE FUNCTION calc_idade_func(INT codigo) RETURNS INT
BEGIN
SET @idade := (SELECT DATEDIFF(MONTH,'dataNasc',GETDATE())/12 WHERE 
Funcionario.codigo = codigo);
RETURN @idade;
END $
DELIMITER;
