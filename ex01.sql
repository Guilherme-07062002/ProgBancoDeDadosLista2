-- Implemente uma VIEW Boletim, composta por dados das tabelas Alunos e Historicos_Escolares, exibindo os campos matrícula, nome, código da disciplina,semestre, média, faltas e situação.

CREATE OR REPLACE VIEW boletim
AS SELECT a.mat_alu, a.nom_alu, h.cod_disc, h.semestre, h.media, h.faltas, h.situacao
FROM alunos a JOIN historicos_escolares h
ON a.mat_alu = h.mat_alu;

-- Exemplo de consulta na view boletim

SELECT * FROM boletim
WHERE nom_alu ilike '%Joanne%'
ORDER BY semestre;