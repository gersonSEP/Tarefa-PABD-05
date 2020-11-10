Os índices são empregados em uma consulta para ajudar a encontrar regitros com um valor específico em uma coluna de forma rápida, ou seja, para aumentar o desempenho na execução de consultas, já que faz o acesso de forma mais direta, ao contrário de consultas realizadas pelo SGBD que percorre vários registros da tabela. O uso de índices deve ser feito com cautela, pois o seu uso demasiado pode prejudicar a performance em outros comandos de um SGBD, pelo espaço ocupado na memória.

A sintaxe utilizada para a criação de um índice é a seguinte:
CREATE [UNIQUE] INDEX nome_índice
ON nome_tabela (
  coluna1 [ASC | DESC],
  [coluna2 [ASC | DESC]]...
);
