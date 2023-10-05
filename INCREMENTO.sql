CREATE TABLE Orders(
	OrderID int IDENTITY(1,1) PRIMARY KEY, -- Define auto incremento - incremento unitário
	PersonID int NOT NULL,
	DescripitionOrder varchar(255),
	ValueOrder float
);


CREATE TABLE Payment(
	PaymentID int IDENTITY(1,5) PRIMARY KEY, -- Define auto incremento - incremento de um valor especifico
	OrderID int NOT NULL,
	PersonID int NOT NULL,
	DescripitionOrder varchar(255),
	ValueOrder float
);

EXEC sp_help 'Payment'

