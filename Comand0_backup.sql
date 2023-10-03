	--CREATE DATABASE jobCampSQL;
	--DROP DATABASE jobCampSQL;

--Backup total do banco de dados
BACKUP DATABASE jobCampSQL
TO DISK = 'D:\QA.coders\Banco de dados\Backup banco de dados\jobCampSQL.bak'

--Segunda forma de fazer backup
BACKUP DATABASE jobCampSQL
TO DISK = 'D:\QA.coders\Banco de dados\Backup banco de dados\jobCampSQL.bak'
WITH DIFFERENTIAL; -- Faz backup de todas às alterações no banco de dados.