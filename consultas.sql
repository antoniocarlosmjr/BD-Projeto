
-- CONSULTAS

set search_path to hospital; 

-- Consulta 1:
-- Exibir o nome e id_registro de todos os médicos que possuem no hospital 
-- onde sua especialidade é de Clínico geral

SELECT id_registro, primeiro_nome, sobrenome
FROM medico
WHERE especialidade = 'Clínico Geral';

-- Consulta 2:
-- Listar o número de prontuário e nome de todos os pacientes que possuem um acompanhante
-- associado.

SELECT p.num_pront, p.primeiro_nome, p.sobrenome
FROM paciente as p INNER JOIN acompanhante as a 
	ON(p.id_acomp=a.id_acomp);


-- Consulta 3:
-- Listar os nomes, o id de registro e especialidade dos
-- médicos que possuem CRM (Conselho Regional de Medicina) ativo

SELECT m.id_registro, m.primeiro_nome, m.sobrenome, m.especialidade
FROM crm_validacao as crm_va  NATURAL JOIN medico AS m
WHERE crm_va.crmativo = true;

-- Consulta 4:
-- Listar o nome de todos pacientes cadastros que possuem letra inicial do primeiro
-- nome a vogal "A"

SELECT primeiro_nome
FROM paciente
WHERE primeiro_nome LIKE 'A%';

-- Consulta 5
-- Listar o valor máximo e mínimo dos salários dos médicos
-- que possuem crm ativo agrupados por especialidade

SELECT m.especialidade, max(salario) AS SalarioMaximo, min(salario) AS SalarioMinimo
FROM medico as m NATURAL JOIN CRM_Validacao as crm
WHERE crm.crmativo = true
GROUP BY m.especialidade

-- Consulta 6
-- Exiba o nome de todos os pacientes que tem consultas marcadas com o Clínico Geral 

SELECT COALESCE(P.primeiro_nome, 'SEM NOME') AS nomes
FROM (SELECT C.paciente FROM consulta AS C INNER JOIN medico AS M
			ON C.medico = M.id_registro AND M.especialidade = 'Clínico Geral'
     ) AS dados LEFT JOIN paciente P ON dados.paciente = P.num_pront;

-- Consulta 7 
-- Liste todos os medicamentos prescritos pelos médicos que realizaram exames
-- com diagnostico diferentes de nada a constar e mostre a descricao do diagnostico

SELECT med.nome, d.descricao
FROM (SELECT *
	FROM medicamento AS m NATURAL JOIN prescreve AS p) AS med
	JOIN medico AS me USING(id_registro)
	JOIN diagnostico AS d ON(d.medico=med.id_registro)
	JOIN exame AS ex ON(ex.medico=med.id_registro)
WHERE d.descricao <> 'Nada a constar';

-- Consulta 8
-- Liste a quantidade de médicos por especialidade, exceto os que possuem especialidade de Gastro.

SELECT especialidade, count(especialidade)
FROM medico 
GROUP BY especialidade
HAVING especialidade <> 'Gastro';

-- Consulta 9
-- Exiba numeros de prontuarios dos pacientes que não chegaram em 2015.

SELECT DISTINCT p.num_pront 
	FROM paciente as p
	WHERE p.id_login NOT IN(SELECT DISTINCT c.id_login 
	FROM cadastro as c
	WHERE c.data_cad BETWEEN '01-01-2015' AND '31-12-2015'); 

-- Consulta 10
-- Listar o nome e sobrenome e especialidade de todos os medicos que possuem salario superior ou igual a média
-- salarial dos medicos no hospital agrupados por especialidade ordenados por ordem crescente

SELECT m1.primeiro_nome, m1.sobrenome, m1.especialidade
FROM (SELECT especialidade AS esp, avg(salario) AS MEDIA
      FROM medico AS m
      GROUP BY especialidade) AS dados JOIN medico as m1 ON (dados.esp=m1.especialidade)
WHERE m1.salario >= dados.MEDIA
ORDER BY m1.salario ASC;

