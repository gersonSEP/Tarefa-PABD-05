CREATE OR REPLACE PROCEDURE equipe_proj()
AS $$
BEGIN
SELECT e.nomeequipe, f.nome, d.sigla
FROM projeto proj, equipe e, departamento d, funcionario f
WHERE proj.equipe=e.codigo
AND d.codigo=proj.depto
AND f.codigo=proj.responsavel;
END;
$$ LANGUAGE plpgsql;
