EXEC sp_help 'Person';


--Alterar as caracteristicas de uma tabela
ALTER TABLE Person
ADD cod INT;


ALTER TABLE Person
ADD documentCPF varchar(14);

ALTER TABLE Person
ADD state varchar(14);


--Remover uma coluna da tabela
ALTER TABLE Person
DROP COLUMN cod;

--Alterar a caracteristica de uma coluna
ALTER TABLE Person
ALTER COLUMN State char(2);