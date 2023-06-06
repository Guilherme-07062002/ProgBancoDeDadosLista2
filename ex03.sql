-- Implemente uma view que exiba todos os professores de um curso (nome e código do curso e nome, código e e-mail do professor.

CREATE OR REPLACE VIEW professor_curso
AS SELECT professores.nom_prof, professores.cod_prof, professores.email, cursos.nom_curso, cursos.cod_curso
FROM professores JOIN cursos
ON professores.cod_curso = cursos.cod_curso;

SELECT * FROM professor_curso
WHERE nom_curso ILIKE '%Tecnologia em Processamento de Dados%'
ORDER BY nom_prof;
