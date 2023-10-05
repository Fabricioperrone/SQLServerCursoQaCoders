# Manipulação de dados

## INSERT:

```
-Todos os campos da tabela.

INSERT INTO Person
VALUES (1, 'William','Alves', 'email@email.com.br', '11999999999', '321456789', 'QA');
 
```

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
Após a execução do comando o gerenciador de banco de dados irá exibir os dados da tabela selecionada. No exemplo temos dois registros inseridos na tabela Person.














## SELECT com condição:
Sintaxe:
```
--Selecionar com uma condição
SELECT * FROM Person
WHERE PersonID = 1;
```

 






## SELECT com passando dados específicos 

Sintaxe:
```
--Selecionar dados especificos
SELECT PersonID, FirstName, Phone FROM Person
```

 

## SELECT com dados específicos passando uma condição
```
--Selecionar dados especificos passando uma condição
SELECT PersonID, FirstName, Phone FROM Person
WHERE PersonID = 1
AND state = 'QA'
```
 



## SELECT com dados específicos passando uma condição, trazendo todos os campos. 

```
--Selecionar dados específicos passando uma condição trazendo todos os campos
SELECT PersonID, FirstName, Phone,  * FROM Person
WHERE PersonID = 1
AND state = 'QA'
```






## UPDATE

Sintaxe:
```
UPDATE Person 
SET FirstName = 'João'
WHERE PersonID = 2
```
Vamos explicar o esse comado faz: ATUALIZE Person Grave FirstName = João CONDIÇÃO cujo o PersonID seja = 2


## DELETE
Sintaxe:

```
DELETE Person
WHERE PersonID = 1
```

Agora temos apenas um registro na tabela Person.





## DELETE com condição:
Sintaxe:

```
--DELETE passando condiçao
DELETE Person
WHERE PersonID = 2
AND FirstName = 'João'
```
 
Agora não temos mais nenhum registro na  tabela.



## SELECT PART 1
Selecionar os dois primeiros registros da tabela com condição WHERE.
Sintaxe:

```
--Selecionar os dois primeiros registros da tabela com condição where
SELECT TOP 2 * FROM Person --Usando condição
WHERE state = 'QA'
```







## Selecionar os dois primeiros registros da tabela com ordenação decrescente.
Sintaxe:

```
--Selecionar os 2 primeiros registros da tabela com ordenação decrescente
SELECT TOP 2 * FROM Person ORDER BY 1 DESC
```

## Selecionar os dois primeiros registros da tabela com ordenação crescente.

Sintaxe:
```
--Selecionar os 2 primeiros registros da tabela com ordenação crescente
SELECT TOP 2 * FROM Person ORDER BY 3 ASC
```
 
Ordena pela 3 coluna.










## Selecionar os dois primeiros registros da tabela com ordenação crescente pelo nome da coluna.

Sintaxe:

```
--Selecionar os 2 primeiros registros da tabela com ordenação crescente pelo nome da coluna
SELECT TOP 2 * FROM Person ORDER BY PersonID ASC
```
 


## Selecionar os dois registros por porcentagem.

Sintaxe:

```
--Seleciona os registros por porcentagem
SELECT TOP 50 PERCENT * FROM Person
```

Retorna 50% das colunas.





## Seleciona os registros por porcentagem passando coluna especifica.

Sintaxe:

```
--Seleciona os registros por porcentagem passando coluna especifica
SELECT TOP 50 PERCENT LastName FROM Person
```

 




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
 



## Seleciona o valor mínimo:

Sintaxe:

```
--Seleciona o valor mínimo
SELECT MIN(PriceValue) AS 'Valor Mínimo'
FROM Price
```
 







## Seleciona o valor máximo.

Sintaxe:

```
--Seleciona o valor máximo
SELECT MAX(PriceValue) AS 'Valor do Produto'--Alias
FROM Price
```

 


## Soma os valores, onde o STATUS é PAGO.

Sintaxe:

```
--Soma o valor
SELECT SUM(PriceValue) AS 'Soma de todos os valores'
FROM Price
WHERE STATUS = 'PAGO'
```

 







## Conta o número de registros.

Sintaxe:

```
--Conta registros
SELECT COUNT(PersonID)
FROM Price
WHERE PersonID = 1
```
















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
 

- INNER JOIN: Retornam registros que possuem valores correspondentes em ambas as tabelas.































Sintaxe:

```
SELECT Person.PersonID, Person.FirstName,
Price.PriceValue, Price.Descriptions, Price.Status
FROM Person 
LEFT JOIN Price ON Person.PersonID = Price.PriceID
WHERE Person.PersonID =1
```

 
- Retornam os todos os registros da tabela a esquerda e os registros correspondentes da tabela direita.













