CREATE OR REPLACE FUNCTION total_ativ_membro(codProjeto INTEGER)
RETURNS INTEGER
AS $$
DECLARE
total_atividades INTEGER;
BEGIN
SELECT INTO total_atividades count(*)
FROM funcionario f, atividade_membro am
WHERE am.codmembro=f.codigo;
RETURN total_atividades;
END;
$$ LANGUAGE 'plpgsql';
