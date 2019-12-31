CREATE VIEW `v_CUSTOMERS` AS
    SELECT 
        c.Id AS 'Código Cliente',
        n.Id AS 'Código Pessoal',
        n.Full_Name AS Nome,
        n.Email_Main AS 'e-mail',
        n.Phone_Main AS Fone,
        'Física' AS Tipo
    FROM
        t_CUSTOMERS AS c
            INNER JOIN
        t_NATURAL_PERSON AS n on 
			c.Natural_Id = n.Id
    ORDER BY n.Full_Name;
        