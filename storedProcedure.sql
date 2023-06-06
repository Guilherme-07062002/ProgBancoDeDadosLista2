-- Criação do procedure
CREATE OR REPLACE PROCEDURE cadastrar_aluno(mat_alu INTEGER, cod_curso INTEGER, dat_nasc TIMESTAMP, tot_cred INTEGER, mgp FLOAT, nom_alu VARCHAR(40), email VARCHAR(40))
AS $$
	INSERT INTO alunos (mat_alu, cod_curso, dat_nasc, tot_cred, mgp, nom_alu, email)
	VALUES(mat_alu, cod_curso, dat_nasc, tot_cred, mgp, nom_alu, email)
$$ LANGUAGE SQL;

-- Chamada da procedure
CALL cadastrar_aluno(15, 10, '2005-04-06', 30, 7.5, 'Fulano', 'fulano@email');

-- Exibindo aluno cadastrado
SELECT *
FROM alunos 
WHERE nom_alu = 'Fulano';