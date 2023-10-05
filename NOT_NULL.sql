CREATE TABLE Vehicle(
	VehicleID int NOT NULL,
	Model varchar(20) NOT NULL,
	YearVeicle Date NOT NULL,
	FOREIGN KEY (VehicleID) REFERENCES Person(PersonID)
);

EXEC sp_help 'Vehicle'