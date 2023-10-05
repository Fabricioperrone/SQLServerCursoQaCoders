CREATE TABLE Mail(
	MailID int NOT NULL,
	PersonID int NOT NULL,
	Mail varchar(255),
	UNIQUE (MailID) -- Significa que o campo MailID não pode ser duplicado
);

CREATE TABLE Phone(
	PhoneID int NOT NULL,
	PersonID int NOT NULL,
	Phone varchar(16),
	UNIQUE (PhoneID, PersonID) -- Significa que o campo PhoneID, PersonID não pode ser duplicado
);




EXEC sp_help 'Phone'

