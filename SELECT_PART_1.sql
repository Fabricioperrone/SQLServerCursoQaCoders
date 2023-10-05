--SELECIONAR OS DOIS PRIMEIROS REGISTROS DA TABELA
SELECT * FROM Person

SELECT TOP 5 * FROM Person


--Selecionar os dois primeiros registros da tabela com condição where
SELECT TOP 2 * FROM Person --Usando condição
WHERE state = 'QA'

--Selecionar os 2 primeiros registros da tabela com ordenação decrescente
SELECT TOP 2 * FROM Person ORDER BY 1 DESC

--Selecionar os 2 primeiros registros da tabela com ordenação crescente
SELECT TOP 2 * FROM Person ORDER BY 3 ASC

--Selecionar os 2 primeiros registros da tabela com ordenação crescente pelo nome da coluna
SELECT TOP 2 * FROM Person ORDER BY PersonID ASC


--Seleciona os registros por porcentagem
SELECT TOP 50 PERCENT * FROM Person

--Seleciona os regsitros por porcentagem passando coluna especifica
SELECT TOP 50 PERCENT LastName FROM Person

--Select onde a condicional e o resultado de outro Select
SELECT * FROM Person WHERE PersonID = 1

SELECT * FROM Phone WHERE PersonID = 1

SELECT * FROM Phone
Where PersonID = (SELECT PersonID FROM Person WHERE PersonID = 5)

SELECT * FROM Person

USE jobCampSQL



--Select part II


CREATE TABLE Price(
	PriceID int IDENTITY(1, 1) PRIMARY KEY,
	PersonID int NOT NULL,
	PriceValue Float NOT NULL,
	Descriptions varchar(255),
	Status varchar(10),
	FOREIGN KEY(PersonID) REFERENCES Person(PersonID)
);


--Inserindo dados através de INSERT

INSERT Price
VALUES (1, 25.32, 'Cerveja Premium 600ml  12 UNID', 'PAGO');


INSERT Price
VALUES (1, 13.30, 'Coca Cola  2L 1 UNID', 'PAGO');

INSERT Price
VALUES (1, 10.10, 'Carteira de couro', 'PENDENTE');

SELECT * FROM Price

--Seleciona o valor mínimo
SELECT MIN(PriceValue) AS 'Valor Mínimo'
FROM Price


--Seleciona o valor máximo
SELECT MAX(PriceValue) AS 'Valor do Produto'--Alias
FROM Price

--Soma o valor
SELECT SUM(PriceValue) AS 'Soma de todos os valores'
FROM Price
WHERE STATUS = 'PAGO'

--Conta registros
SELECT COUNT(PersonID)
FROM Price
WHERE PersonID = 1

--INNER JOIN E LEFT-JOIN


SELECT * FROM Price
SELECT * FROM Person 

SELECT Person.PersonID, Person.FirstName,
Price.PriceValue, Price.Descriptions, Price.Status
FROM Person 
INNER JOIN Price ON Person.PersonID = Price.PriceID
WHERE Person.PersonID = 1


SELECT Person.PersonID, Person.FirstName,
Price.PriceValue, Price.Descriptions, Price.Status
FROM Person 
LEFT JOIN Price ON Person.PersonID = Price.PriceID
WHERE Person.PersonID = 1