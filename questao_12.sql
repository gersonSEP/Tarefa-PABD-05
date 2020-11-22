CREATE USER 'empresa_gerente' IDENTIFIED BY 'eg12345'

GRANT SELECT ON EmpresaDB.* TO empresa_gerente;

GRANT INSERT, UPDATE ON EmpresaDB.Equipe, Membro, Atividade, AtividadeProjeto TO empresa_gerente;
