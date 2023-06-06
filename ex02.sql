-- Implemente uma view que exiba o nome da disciplina e nome do professor responsáveL.

CREATE OR REPLACE VIEW disciplina_professor
AS SELECT disciplinas.nom_disc, professores.nom_prof as prof_responsavel
FROM disciplinas JOIN curriculos
ON disciplinas.cod_disc = curriculos.cod_disc
JOIN professores
ON professores.cod_curso = curriculos.cod_curso
ORDER BY disciplinas.nom_disc;

SELECT * FROM disciplina_professor
WHERE prof_responsavel ilike '%NILDETE%';