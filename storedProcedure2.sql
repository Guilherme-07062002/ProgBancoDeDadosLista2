CREATE OR REPLACE PROCEDURE renomear_aluno(mat integer, nome varchar(40))
AS $$
BEGIN
    UPDATE alunos 
    SET nom_alu = nome
    WHERE mat_alu = mat;
END
$$ LANGUAGE PLPGSQL;

CALL renomear_aluno(15, 'Beltrano');