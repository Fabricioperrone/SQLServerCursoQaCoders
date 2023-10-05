# Manipulação de dados

## INSERT:

```
-Todos os campos da tabela.

INSERT INTO Person
VALUES (1, 'William','Alves', 'email@email.com.br', '11999999999', '321456789', 'QA');
 
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/e3ca4c0e-174e-4454-a92c-eaf255bfea6e)


Após executar o comando deve retornar uma mensagem como na imagem acima.

## INSERT passando campos específicos:
Sintaxe:
```
--Outra forma de fazer
--Como passar campos especificos 
INSERT INTO Person(PersonID, LastName, Phone, documentCPF)
VALUES (2, 'Alves',	'11999999999', '321456789');
```
## SELECT

Sintaxe:
```
SELECT * FROM Person

```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/c663f6e9-a99e-460b-a3c7-e34be0a872a1)


Após a execução do comando o gerenciador de banco de dados irá exibir os dados da tabela selecionada. No exemplo temos dois registros inseridos na tabela Person.



## SELECT com condição:

Sintaxe:
```
--Selecionar com uma condição
SELECT * FROM Person
WHERE PersonID = 1;
```

 ![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/319d367e-a933-4b02-80d3-62ce04da2fa9)




## SELECT com passando dados específicos 

Sintaxe:
```
--Selecionar dados especificos
SELECT PersonID, FirstName, Phone FROM Person
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/af7efc4a-986a-4f9a-a58b-67ee23321ce2)

 

## SELECT com dados específicos passando uma condição
```
--Selecionar dados especificos passando uma condição
SELECT PersonID, FirstName, Phone FROM Person
WHERE PersonID = 1
AND state = 'QA'
```
 
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/537549b3-7e7f-4410-b4c7-15feb5780708)


## SELECT com dados específicos passando uma condição, trazendo todos os campos. 

```
--Selecionar dados específicos passando uma condição trazendo todos os campos
SELECT PersonID, FirstName, Phone,  * FROM Person
WHERE PersonID = 1
AND state = 'QA'
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/98e4ee66-2343-43a9-8f17-5e8fa711c16f)



## UPDATE

Sintaxe:
```
UPDATE Person 
SET FirstName = 'João'
WHERE PersonID = 2
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/a40cf008-ef4a-4f8e-9fd5-43eb04c9f9d5)

Vamos explicar o esse comado faz: ATUALIZE Person Grave FirstName = João CONDIÇÃO cujo o PersonID seja = 2


## DELETE
Sintaxe:

```
DELETE Person
WHERE PersonID = 1
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/c2ef67d0-3a5a-4ced-a390-49a3db0cd758)

Agora temos apenas um registro na tabela Person.



## DELETE com condição:
Sintaxe:

```
--DELETE passando condiçao
DELETE Person
WHERE PersonID = 2
AND FirstName = 'João'
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/63753bfb-8ec1-4d02-84c2-0b44d63319ae)

Agora não temos mais nenhum registro na  tabela.



## SELECT PART 1
Selecionar os dois primeiros registros da tabela com condição WHERE.
Sintaxe:

```
--Selecionar os dois primeiros registros da tabela com condição where
SELECT TOP 2 * FROM Person --Usando condição
WHERE state = 'QA'
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/d7b03838-abb7-4575-808b-f787d78953b8)




## Selecionar os dois primeiros registros da tabela com ordenação decrescente.
Sintaxe:

```
--Selecionar os 2 primeiros registros da tabela com ordenação decrescente
SELECT TOP 2 * FROM Person ORDER BY 1 DESC
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/e4ca9d01-9a9f-4111-873a-18a66ab1a213)


## Selecionar os dois primeiros registros da tabela com ordenação crescente.

Sintaxe:
```
--Selecionar os 2 primeiros registros da tabela com ordenação crescente
SELECT TOP 2 * FROM Person ORDER BY 3 ASC
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/bc36e0ef-cda3-433d-927e-4fff4116cc3a)

Ordena pela 3 coluna.



## Selecionar os dois primeiros registros da tabela com ordenação crescente pelo nome da coluna.

Sintaxe:

```
--Selecionar os 2 primeiros registros da tabela com ordenação crescente pelo nome da coluna
SELECT TOP 2 * FROM Person ORDER BY PersonID ASC
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/4dc7db37-7a84-4607-99a1-aeab11719c33)

 


## Selecionar os dois registros por porcentagem.

Sintaxe:

```
--Seleciona os registros por porcentagem
SELECT TOP 50 PERCENT * FROM Person
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/eafea5a0-9438-4160-93b5-5f268229681a)

Retorna 50% das colunas.





## Seleciona os registros por porcentagem passando coluna especifica.

Sintaxe:

```
--Seleciona os registros por porcentagem passando coluna especifica
SELECT TOP 50 PERCENT LastName FROM Person
```

 ![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/01b34679-70df-4edf-b3dc-3cfa7ba23585)





## SELECT PART II
Criamos uma nova tabela para manipular.

Sintaxe:

```
CREATE TABLE Price(
	PriceID int IDENTITY(1, 1) PRIMARY KEY,
	PersonID int NOT NULL,
	PriceValue Float NOT NULL,
	Descriptions varchar(255),
	Status varchar(10),
	FOREIGN KEY(PersonID) REFERENCES Person(PersonID)
);
```

Populamos a tabela através do comando INSERT.
Inserindo dados através de INSERT

```
INSERT Price
VALUES (1, 25.32, 'Cerveja Premium 600ml  12 UNID', 'PAGO');

INSERT Price
VALUES (1, 13.30, 'Coca Cola  2L 1 UNID', 'PAGO');

INSERT Price
VALUES (1, 10.10, 'Carteira de couro', 'PENDENTE');
```

Executamos uma consulta na tabela através do comando SELECT.
SELECT * FROM Price

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/c6877bde-06fc-478a-aa4f-da4aa51eb51d)




## Seleciona o valor mínimo:

Sintaxe:

```
--Seleciona o valor mínimo
SELECT MIN(PriceValue) AS 'Valor Mínimo'
FROM Price
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/5da28779-b175-472b-9e80-b6eae55fd43f)








## Seleciona o valor máximo.

Sintaxe:

```
--Seleciona o valor máximo
SELECT MAX(PriceValue) AS 'Valor do Produto'--Alias
FROM Price
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/c3763c38-648c-40df-a585-a8489269e2fe)

 
## Soma os valores, onde o STATUS é PAGO.

Sintaxe:

```
--Soma o valor
SELECT SUM(PriceValue) AS 'Soma de todos os valores'
FROM Price
WHERE STATUS = 'PAGO'
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/193dc6e0-b6fc-4421-95a7-fce7d0855c1f)


## Conta o número de registros.

Sintaxe:

```
--Conta registros
SELECT COUNT(PersonID)
FROM Price
WHERE PersonID = 1
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/acfea7a7-5d68-4441-b808-521f277ac8fb)



## INNER-JOIN e LEFT-JOIN

 - Selecionar registros correspondentes em ambas as tabelas com INNER JOIN.

Sintaxe:

```
--Selecionar registros correspondentes em ambas as tabelas
SELECT Person.PersonID, Person.FirstName,
Price.PriceValue, Price.Descriptions, Price.Status
FROM Person 
INNER JOIN Price ON Person.PersonID = Price.PriceID
WHERE Person.PersonID =1
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/bf77ddda-444d-4715-9d7c-bcc9a9bf840f)


- INNER JOIN: Retornam registros que possuem valores correspondentes em ambas as tabelas.



Sintaxe:

```
SELECT Person.PersonID, Person.FirstName,
Price.PriceValue, Price.Descriptions, Price.Status
FROM Person 
LEFT JOIN Price ON Person.PersonID = Price.PriceID
WHERE Person.PersonID =1
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/0c49b1ad-5044-453b-a89b-fa072f8f2414)
 
- Retornam os todos os registros da tabela a esquerda e os registros correspondentes da tabela direita.













