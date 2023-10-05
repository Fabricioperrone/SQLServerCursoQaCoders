EXEC sp_help 'Person' 

--Todos os campos da tabela.

INSERT INTO Person --Como passar todos os campos
VALUES (1, 'William','Alves', 'email@email.com.br', '11999999999', '321456789', 'QA');

INSERT INTO Person --Como passar todos os campos
VALUES (3, 'Vam','Damme', 'email@email.com.br', '11999999999', '321456789', 'QA');

INSERT INTO Person --Como passar todos os campos
VALUES (4, 'Aline','Claudia', 'email@email.com.br', '11999999999', '321456789', 'SP');

INSERT INTO Person --Como passar todos os campos
VALUES (5, 'Marcos','Aldo', 'email@email.com.br', '11999999999', '321456789', 'MG');



--Outra forma de fazer
--Como passar campos especificos 
INSERT INTO Person(PersonID, LastName, Phone, documentCPF)
VALUES (2, 'Alves',	'11999999999', '321456789');