CREATE VIEW `v_LEGAL_CUSTOMERS` AS
    SELECT 
        c.Id AS 'Código Cliente',
        l.Id AS 'Código Pessoal',
        l.Legal_Name AS Nome,
        l.Email_Main AS 'e-mail',
        l.Phone_Main AS Fone,
        'Jurídica' AS Tipo
    FROM
        t_CUSTOMERS AS c
            INNER JOIN
        t_LEGAL_PERSON AS l on 
			c.Legal_Id = l.Id
	WHERE 
		c.ActiveP = TRUE
    ORDER BY l.Legal_Name;
        