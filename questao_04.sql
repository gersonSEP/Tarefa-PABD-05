CREATE OR REPLACE FUNCTION atv_atrasada(codAtividade INTEGER)
RETURNS INTERVAL
AS $$
DECLARE
fim DATE;
hoje timestamp;
diasAtraso INTERVAL;
BEGIN
SELECT INTO hoje NOW();
SELECT INTO fim datafim
FROM atividade
WHERE codigo=codAtividade;
diasAtraso=fim-hoje;
return diasAtraso;
END;
$$ LANGUAGE 'plpgsql';


