CREATE OR REPLACE FUNCTION public.quant_ativ_projeto(cod_proj INTEGER)
RETURNS INTEGER
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
total INTEGER;
BEGIN
SELECT INTO total count(*)
AS total_atividades
FROM projeto proj, atividade_projeto atv
WHERE atv.codprojeto=proj.codigo
AND proj.codigo=cod_proj;
RETURN total;
END;
$BODY$;

SELECT total_ativ_membro(proj.codigo)/quant_ativ_projeto(proj.codigo)
AS porcentagem
FROM projeto proj;
