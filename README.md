# SQLServerCursoQaCoders
 ## Comando SYS
```
	select * from sys.schemas
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/39a8f311-d495-41e1-8d71-7d2d48e84f9e)


Retorna todos os usuários do banco de dados.
```
	select * from sys.all_objects
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/8e7c8e00-bff6-4cf8-8d50-b0c1bfd6ce24)

Retorna todos os objetos de banco de dados e tipos de objetos


```
	select * from sys.databases
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/c7078400-dfa8-4fd7-9ef6-aeabd87781ba)


 
Retorna todas as tabelas do banco de dados ID e tipo de usuário que acessa.
```
	select * from sys.all_views
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/4a37939c-eafd-45f7-a60d-393831b5eb6f)

 
Retorna todas as tabelas que são de visualização dentro do banco de dados.









## Comando CREATE DATABASE
```
CREATE DATABASE jobCampSQL;
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/07d5a91e-f887-40e3-98f7-272b9691a862)


Após o comando executado com sucesso, na aba mensagens surgirá uma mensagem como esta acima.


## Comando DROP DATABASE
```
	DROP DATABASE jobCampSQL;
 ```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/1295b5cc-384a-4d74-ab09-7381bd4cc510)

Após o comando executado com sucesso, o banco de dados selecionado será excluído.



## BACKUP e BACKUP WITH DIFFERENTIAL

```
--Backup total do banco de dados
BACKUP DATABASE jobCampSQL
TO DISK = 'D:\QA.coders\Banco de dados\Backup banco de dados\jobCampSQL.bak'
```

No comando acima fazemos um backup do banco de dados, através do comando ‘BACKUP DATABASE	 nome_do_banco’. Em seguida escolhemos no diretório onde vamos salvar o backup do banco de dados, através do comando: TO DISK = ‘caminho_da_pasta/nome_do_banco.bak’

 ![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/999a5cf7-5848-4e45-8330-dbd909eec5fa)


Se tudo deu certo você verá essa tela acima.







Segunda forma de fazer backup da base de dados:
2.	BACKUP DATABASE jobCampSQL
TO DISK = 'D:\QA.coders\Banco de dados\Backup banco de dados\jobCampSQL.bak'
WITH DIFFERENTIAL;

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/56e72b2c-0d8b-45d3-aeee-f3ffbdb9c8d0)

 
O comando ‘with differencial’ irá fazer backup de tudo que foi modificado na base de dados.













Comando USE
```
	USE jobCampSQL;
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/b4b36964-ab2f-4446-a43a-cc960a3d863c)

Comando ‘USE nome_banco_de_dados’ seleciona um banco de dados.











Comando CREATE TABLE

Sintaxe:
```
CREATE TABLE Person (
	PersonID int Primary Key,
	FirstName varchar(255),
	LastName varchar(255),
	Mail varchar(255),
	Phone varchar(255)
);
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/5fc09f7b-2b91-40f0-873f-f116d7231cfc)

 
Tabela criada com sucesso.

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/9bc4e6d2-e9dc-4411-9c9f-cf5441a75cbe)

 ```
--Associação de tabelas
CREATE TABLE Address (
	AddressID int Primary Key,
	PersonID int, -- Assciação com a tabela Person
	City varchar(255),
	Logradouro varchar(255),
	Number varchar(255),
	Complement varchar(255),
	ZipCode varchar(255)
	FOREIGN KEY (PersonID) REFERENCES Person(PersonID) -- Associando PersonID, com tabela Address
);
 ```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/7da27407-f34a-4c8e-8cad-706d507092b3)


Após o comando executado, deve ficar assim suas tabelas:

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/96b20ee2-c0f7-4dd4-85ec-ad3ce4bd670e)

## DROP e TRUNCATE

Vamos criar uma tabela de teste para excluir:

Sintaxe:

```
CREATE TABLE TabelaTeste(
	TesteID int,
	Nome varchar(255),
	SobreNome varchar(255)
);
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/21a5069c-dd18-4893-a2dc-ccaf352a3122)

Sucesso!

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/1293254b-ca56-4e9a-a307-168674b2ab23)


##  Comando DROP TBALE:

```
--Vamos deletar a tabela
DROP TABLE TabelaTeste
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/c069fbc9-1bed-47ee-83f9-052868fbc497)


## TRUNCATE:
```
--Para deletar apenas os registros da tabela
TRUNCATE TABLE TabelaTeste	
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/8563b26c-67f7-4c23-9014-af719186c5d3)


## SP_HELP

Sintaxe:
```
--Lista as características de uma tabela
EXEC sp_help 'Person'; --Tabela Person
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/d4291334-987f-4a9f-86c6-162655db18a0)

No item destacado em vermelho, nos mostra a associação (relacionamento) entre as tabelas ‘Person’ e ‘Address’.

## ALTER TABLE

Sintaxe:
```
--Alterar as caracteristicas de uma tabela
ALTER TABLE Person
ADD COD INT;
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/80bc697a-7a15-499b-8b79-d6edb1df42f7)


## ALTER TABLE:

```
--Remover uma coluna da tabela
ALTER TABLE Person
DROP COLUMN cod;
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/230d06d7-1472-4de2-b4c0-893ccbadd9e6)


## ALTER TABLE, alterar uma coluna de uma tabela, sintaxe:

```
--Alterar a característica de uma coluna
ALTER TABLE Person
ALTER COLUMN State char(2);
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/1ff0f9f2-e0ae-41a1-9c26-dd5ba2f59232)


##  NOT NULL

Sintaxe:

```
CREATE TABLE Vehicle(
	VehicleID int NOT NULL,
	Model varchar(20) NOT NULL,
	YearVeicle Date NOT NULL,
	FOREIGN KEY (VehicleID) REFERENCES Person(PersonID)
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/d8e5f3e8-e312-4af1-a9b1-97df3ac449e3)

A tabela não irá receber valores nulos, para verificar usamos o comando: EXEC sp_help 'Vehicle'  




## UNIQUE
Sintaxe:

```
CREATE TABLE Mail(
	MailID int NOT NULL,
	PersonID int NOT NULL,
	Mail varchar(255),
	UNIQUE (MailID) -- Significa que o campo MailID não pode ser duplicado
);
```


![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/dd1392d8-4de1-403d-93d6-684d734b5f38)

Unique significa que os campos “MailID” , “PhoneID” e “PersonID” não podem ser duplicados, eles são únicos na tabela.




## PRIMARY
Sintaxe:

```
--DEFINIR CHAVE PRIMARIA
CREATE TABLE Pet(
	PetID int NOT NULL PRIMARY KEY,
	NamePet varchar(30) NOT NULL,
	NamePerson varchar(150) NOT NULL,
	Age int 
);
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/2b5b4a38-13ac-4070-8110-37627a3dec56)

No exemplo acima após uma consulta com o comando “EXEC sp_help”, podemos ver que a primary key da tabela Pet é PetID.



## IDENTITY

Como definir o incremento automático no SQLServer?
O SQL usa a palavra-chave IDENTITY para executar um recurso de incremento automático. 
Sintaxe:

```
CREATE TABLE Orders(
	OrderID int IDENTITY(1,1) PRIMARY KEY, -- Auto incremento
	PersonID int NOT NULL,
	DescripitionOrder varchar(255),
	ValueOrder float
);
```
![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/ef95460d-37a8-4987-86cb-9cfb813d5fbd)


No exemplo acima, o valor inicial é de 1 e será incrementado 1  para cada novo registro. 

- Dica: Para especificar que a coluna “PaymentID” deve começar no valor 1 e aumentar em 5, altera-a para IDENTITY(1, 5).

```
CREATE TABLE Payment(
	PaymentID int IDENTITY(1,5) PRIMARY KEY, -- Auto incremento
	OrderID int NOT NULL,
	PersonID int NOT NULL,
	DescripitionOrder varchar(255),
	ValueOrder float
);
```

![image](https://github.com/Fabricioperrone/SQLServerCursoQaCoders/assets/69866913/81b6f059-b2ff-4610-baa3-ab92771fa362)

Resultado.
