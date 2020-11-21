CREATE OR REPLACE FUNCTION proj_atrasado(codProjeto INT)
RETURNS INT
DECLARE
fim DATE;
hoje timestamp;
diasAtraso INT;
BEGIN
SELECT INTO hoje NOW();
SELECT INTO fim datafim
FROM projeto
WHERE codigo=codProjeto;
diasAtraso=fim-hoje;
RETURN diasAtraso;
END;
