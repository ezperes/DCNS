CREATE VIEW `v_CUSTOMERS` AS
    SELECT 
        c.Id AS 'Código Cliente',
        e.Id AS 'Código Pessoal',
        e.Nome,
        #e.Email_Main AS 'e-mail',
        e.Tipo
    FROM
        t_CUSTOMERS AS c
            LEFT JOIN
        everybody AS e on 
			c.Legal_Id = e.Id OR e.Natural_Id = e.Id
    ORDER BY e.Nome;
        