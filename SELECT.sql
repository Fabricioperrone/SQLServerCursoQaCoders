--Selecionar a tabela
SELECT * FROM Person


--Selecionar com uma condição
SELECT * FROM Person
WHERE PersonID = 1;

--Selecionar dados especificos
SELECT PersonID, FirstName, Phone FROM Person


--Selecionar dados especificos passando uma condição
SELECT PersonID, FirstName, Phone FROM Person
WHERE PersonID = 1
AND state = 'QA'

--Selecionar dados especificos passando uma condição trazendo todos os campos
SELECT PersonID, FirstName, Phone,  * FROM Person
WHERE PersonID = 1
AND state = 'QA'