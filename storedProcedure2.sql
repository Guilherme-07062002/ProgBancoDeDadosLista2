CREATE OR REPLACE PROCEDURE renomear_aluno(mat integer, nome varchar(40))
AS $$
DECLARE
	aluno VARCHAR(40);
BEGIN
    
    -- Realizando busca na tabela por um registro de aluno com a matricula informada no parâmetro
	SELECT nom_alu INTO aluno FROM alunos WHERE mat_alu = mat;
	
    -- Caso não encontre, é disparada uma exceção
    IF NOT FOUND THEN
        RAISE EXCEPTION 'Aluno não encontrado, matricula inválida.';
    -- E caso encontre, o nome do aluno que corresponde a matricula informada é alterado
	ELSE
		UPDATE alunos 
		SET nom_alu = nome
		WHERE mat_alu = mat;
	END IF;
END;
$$ LANGUAGE PLPGSQL;


CALL renomear_aluno(15, 'Beltrano');