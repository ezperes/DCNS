SELECT 
    colab.Id 'Código',
    nat.Full_Name AS Nome,
    nat.Email_Main AS 'e-mail',
    colab.Admission_Date AS Admissão
FROM
    t_COLLABORATORS colab
        INNER JOIN
    t_Natural_Person nat USING (Id)
ORDER BY nat.Full_Name;
        