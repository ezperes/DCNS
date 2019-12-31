CREATE VIEW `EVERYBODY` AS
SELECT 	nat.Id, 
		nat.Full_Name AS Nome,
        'Física' AS Tipo,
        nat.CPF AS 'CPF/CNPJ'
	FROM t_NATURAL_PERSON AS nat
UNION
SELECT 	jur.Id,
		jur.Legal_Name,
        'Jurídica',
        jur.CNPJ
	FROM t_Legal_Person as jur
ORDER BY
		Tipo,
        Nome;