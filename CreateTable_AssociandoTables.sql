CREATE TABLE Person (
	PersonID int Primary Key,
	FirstName varchar(255),
	LastName varchar(255),
	Mail varchar(255),
	Phone varchar(255)
);
--Associação de tabelas
CREATE TABLE Address (
	AddressID int Primary Key,
	PersonID int, -- Assciação com a tabela Person
	City varchar(255),
	Logradouro varchar(255),
	Number varchar(255),
	Complement varchar(255),
	ZipCode varchar(255)
	FOREIGN KEY (PersonID) REFERENCES Person(PersonID) -- Assciando PersonID, com tabela Address
);