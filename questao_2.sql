
DELIMITER $
CREATE OR REPLACE FUNCTION idade_media_depto(depto INT)
RETURNS INT
BEGIN
SELECT INTO @media AVG(EXTRACT(years FROM AGE(f.datanasc)))
FROM funcionario f
WHERE f.depto = depto;
RETURN @media;
END $
DELIMITER $


