-- Povoamento das tabelas criadas

-- Inserções de 60 cadastros de pacientes

INSERT INTO hospital.cadastro(data_cad) VALUES ('01/01/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('02/01/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/01/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('02/02/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('18/02/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/03/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('17/04/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/05/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('08/06/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/06/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('23/07/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/09/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('11/09/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('21/09/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('22/09/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/12/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/12/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/12/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/12/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/12/2015');
INSERT INTO hospital.cadastro(data_cad) VALUES ('01/01/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('02/01/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('11/01/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('03/02/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('15/02/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('09/03/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('17/04/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('28/05/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('08/06/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/06/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('24/07/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/09/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('11/09/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('12/09/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('13/09/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('08/12/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('08/12/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('08/12/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/12/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/12/2016');
INSERT INTO hospital.cadastro(data_cad) VALUES ('02/01/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('02/01/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('15/01/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('18/02/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('18/02/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('16/03/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('17/04/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/05/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('08/06/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('08/06/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('23/07/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/09/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/09/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/09/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('10/09/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('15/12/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('15/12/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('15/12/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('15/12/2017');
INSERT INTO hospital.cadastro(data_cad) VALUES ('15/12/2017');

-- Inserções de 20 acompanhantes

INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc,tel_cel)
	VALUES  ('Junior','Silva','23/06/1995','7999047146');
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_ceL)
	VALUES ('Carol','Velanes','10/07/1994','795512355');
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc,tel_cel)
	VALUES  ('Luciana','Silva','10/06/1988','791111111');
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('Ruan','Silva','18/11/1974',NULL);
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('Victor','Pinto','21/07/1994',NULL);
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES (NULL,NULL,NULL,NULL);
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('André','Britto','10/07/1990','123456789');
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('Hector','Jesus','11/02/1984','0214531289');
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('Cristiano','Nascimento','10/07/1980','7894561230');
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('Rosemeire','Castelo','01/05/1974','123456786');
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('José','Santos','05/04/1960',NULL);
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('Maria','Silva','10/07/1968',NULL);
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('William','Santos','10/07/1950',NULL);
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('Caroline','Feitosa','22/06/1947',NULL);
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('Antonio','Martins','23/06/1995',NULL);
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('Jaqueline','Nascimento','02/02/1950',NULL);
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('Alan','Santos','10/07/1976',NULL);
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('André','Britto','10/07/1978','1234785698');
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('Luciano','Romero','18/04/1994',NULL);
INSERT INTO hospital.acompanhante(primeiro_nome, sobrenome, data_nasc, tel_cel)
	VALUES ('Kaique','Silva','16/08/1970',NULL);
	
-- Inserções de 60 Pacientes

INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Antonio','da Silva','23/06/1995',NULL,12,1,1,11111);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Raquel','da Silva','13/08/1990','799990484136',13,2,2,22222);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Luan','Santos','13/07/1971',NULL,14,3,3,33333);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Denise','Nascimento','12/09/1980','799990524136',15,4,4,44444);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Robson','da Silva','23/01/1989','799990524136',16,5,5,55555);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Allan','da Silva','22/02/1988',NULL,17,6,6,66666);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Taylor','Swift','21/05/1974',NULL,18,7,7,77777);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Katy','Perry','06/09/1978',NULL,19,8,8,88888);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Bill','Gates','06/06/1948','2569785412',20,9,9,99999);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Steven','Jobs','23/04/1940','799990489136',21,10,10,10001);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Admir','Ribamar','10/03/1950',NULL,22,11,11,11110);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Hendrik','Silva','12/07/1955',NULL,23,12,12,11100);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Beatriz','Carvalho','13/08/1948',NULL,24,13,13,11000);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Aline','Ribeiro','29/10/1992',NULL,25,14,NULL,10000);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Cassia','Souza','19/12/1966',NULL,26,15,15,22220);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Camila','Souza','23/12/1960','5631216465',27,16,16,22200);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Maria','Santos','23/12/1961',NULL,28,17,17,22000);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Mario','Coelho','23/06/1961','45896312457',29,18,18,20000);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Luana','Nascimento','04/11/1963',NULL,30,19,19,33330);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Paula','Santana','06/08/1995',NULL,31,20,20,33300);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Ythanna','Gomes','01/02/1915',NULL,32,21,14,33000);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Wagner','Pinto','09/11/1955',NULL,33,22,NULL,30000);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Laiane','Ribeiro','08/12/1994','78232464659',34,23,NULL,44440);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Luciana','da Silva','22/08/1992',NULL,35,24,NULL,44400);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Kelly','Santos','23/09/1991',NULL,36,25,NULL,44000);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Danielo','Gomes','14/01/1992','45364879136',37,26,NULL,40000);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Yuri','Coelho','15/02/1978',NULL,38,27,NULL,55550);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Romário','Santana','10/06/1974','79946454445',39,28,NULL,55500);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Luandson','Silva','15/06/1975',NULL,40,29,NULL,55000);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Phelipe','Santos','25/08/1976','7999123453',41,30,NULL,50000);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES ('Paulo','Coelho','05/10/1979',NULL,42,31,NULL,66661);

-- Pacientes que vieram sem nenhuma informação (chegaram urgentemente e só foi dado um numero de prontuário assim que chegou)

INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,43,32,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,44,33,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,45,34,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,46,35,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,47,36,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,48,37,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,49,38,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,50,39,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,51,40,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,52,41,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,53,42,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,54,43,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,55,44,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,56,45,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,57,46,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,58,47,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,59,48,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,60,49,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,61,50,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,62,51,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,63,52,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,64,53,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,65,54,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,66,55,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,67,56,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,68,57,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,69,58,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,70,59,NULL,NULL);
INSERT INTO hospital.paciente (primeiro_nome,sobrenome, data_nasc,tel_cel,num_pront,id_login,id_acomp,cartao_sus)
	VALUES (NULL,NULL,NULL,NULL,71,60,NULL,NULL);


-- Inserção de Consultas marcadas para cada cadastro

INSERT INTO hospital.ConsultasMarcadas 
	values(3,1);
INSERT INTO hospital.ConsultasMarcadas 
	values(1,5);
INSERT INTO hospital.ConsultasMarcadas 
	values(2,11);
INSERT INTO hospital.ConsultasMarcadas 
	values(1,12);
INSERT INTO hospital.ConsultasMarcadas 
	values(1,25);
INSERT INTO hospital.ConsultasMarcadas 
	values(2,15);
INSERT INTO hospital.ConsultasMarcadas 
	values(1,9);
INSERT INTO hospital.ConsultasMarcadas 
	values(1,31);
INSERT INTO hospital.ConsultasMarcadas 
	values(2,24);
INSERT INTO hospital.ConsultasMarcadas 
	values(1,47);
INSERT INTO hospital.ConsultasMarcadas 
	values(1,18);
INSERT INTO hospital.ConsultasMarcadas 
	values(1,36);
INSERT INTO hospital.ConsultasMarcadas 
	values(1,22);
INSERT INTO hospital.ConsultasMarcadas 
	values(1,59);
INSERT INTO hospital.ConsultasMarcadas 
	values(1,50);

-- Inserção de 10 Medicamentos 

INSERT INTO hospital.medicamento
	VALUES (1,'Carbamazepina',
		'Indicado para Epilepsia: grande mal, psicomotora, temporal e Síndrome de abstinência alcoólica',
		'1 a 2 vezes ao dia');
INSERT INTO hospital.medicamento
	VALUES (2,'Dipirona',
		'Indicado para aliviar a dor e para abaixar a febre',
		'4 vezes ao dia');
INSERT INTO hospital.medicamento
	VALUES (3,'Buscopan',
		'Indicado para lívio de dores abdominais',
		'3 a 5 vezes ao dia');
INSERT INTO hospital.medicamento
	VALUES (4,'Benegrip',
		'Indicado para alívio de sintomas da gripe e resfriado',
		'3 a 4 vezes ao dia');
INSERT INTO hospital.medicamento
	VALUES (5,'Estomazil',
		'Indicado para aliviar azia, mal estar e sensação de queimação',
		'1 ou 2 vezes ao dia após a refeição');
INSERT INTO hospital.medicamento
	VALUES (6,'Dorflex',
		'Indicado para alívio de dores de cabeça',
		'3 a 4 vezes ao dia');
INSERT INTO hospital.medicamento
	VALUES (7,'Tylenol',
		'Indicado para redução da febre e dor de cabeça',
		'4 em 4 horas');
INSERT INTO hospital.medicamento
	VALUES (8,'Valium',
		'Indicado para alívio de ansiedade, tensão e outras queixas',
		'Todos os dias durante 2 a 3 meses');
INSERT INTO hospital.medicamento
	VALUES (9,'Alprazolam',
		'Indicado para dormir e controlar a insônia',
		'Todos os dias');
INSERT INTO hospital.medicamento
	VALUES (10,'Omeprazol',
		'Indicado para problemas de acidez no estômago',
		'todos os dias 4 semanas de tratamento');
		
		
-- Inserção de 15 pacientes que possuem medicamentos

INSERT INTO hospital.possui
	VALUES(12,1);
INSERT INTO hospital.possui
	VALUES(15,9);
INSERT INTO hospital.possui
	VALUES(22,5);
INSERT INTO hospital.possui
	VALUES(19,10);
INSERT INTO hospital.possui
	VALUES(70,10);
INSERT INTO hospital.possui
	VALUES(18,1);
INSERT INTO hospital.possui
	VALUES(22,2);
INSERT INTO hospital.possui
	VALUES(60,7);
INSERT INTO hospital.possui
	VALUES(51,6);
INSERT INTO hospital.possui
	VALUES(13,4);
INSERT INTO hospital.possui
	VALUES(45,7);
INSERT INTO hospital.possui
	VALUES(19,3);
INSERT INTO hospital.possui
	VALUES(20,8);
INSERT INTO hospital.possui
	VALUES(45,2);
INSERT INTO hospital.possui
	VALUES(50,6);
INSERT INTO hospital.possui
	VALUES(50,4);
INSERT INTO hospital.possui
	VALUES(12,2);

-- Inserção das CRMs e validações válidas ou não

INSERT INTO hospital.CRM_Validacao 
	VALUES(151515,false);
INSERT INTO hospital.CRM_Validacao 
	VALUES(161616,true);
INSERT INTO hospital.CRM_Validacao 
	VALUES(171717,true);
INSERT INTO hospital.CRM_Validacao 
	VALUES(181818,true);
INSERT INTO hospital.CRM_Validacao 
	VALUES(191919,false);
INSERT INTO hospital.CRM_Validacao 
	VALUES(252525,true);
INSERT INTO hospital.CRM_Validacao 
	VALUES(202020,true);

-- Inserção de 7 Médicos

INSERT INTO hospital.medico
	VALUES(1010,'João','Costa','23/05/1970','799456789',161616,2500,'Clínico Geral');
INSERT INTO hospital.medico
	VALUES(1111,'Marcos','Silva','12/06/1960','739456789',151515,2500,'Clínico Geral');
INSERT INTO hospital.medico
	VALUES(1212,'José','Junior','10/01/1971','799426789',171717,2500,'Clínico Geral');
INSERT INTO hospital.medico
	VALUES(1313,'Joelio','Brito','01/03/1955','779456789',252525,2700,'Gastrointest.');
INSERT INTO hospital.medico
	VALUES(1414,'Otávio','Martins','05/04/1960','789456789',202020,2500,'Clínico Geral');
INSERT INTO hospital.medico
	VALUES(1515,'Júlio','Silva','13/05/1969','899456789',181818,2700,'Neurologista');
INSERT INTO hospital.medico
	VALUES(1616,'Santos','Hemílio','09/09/1965','999456789',191919,2500,'Clínico Geral');
INSERT INTO hospital.medico
	VALUES(1717,'Carlos','José','12/11/1988','499456789',202020,2500,'Clínico Geral');

-- Inserção de 5 prescrições na tabela prescreve

INSERT INTO hospital.prescreve
	VALUES(2,1616);
INSERT INTO hospital.prescreve
	VALUES(10,2020);
INSERT INTO hospital.prescreve
	VALUES(1,1414);
INSERT INTO hospital.prescreve
	VALUES(5,1212);
INSERT INTO hospital.prescreve
	VALUES(7,1010);

-- Inserção de 8 exames que foram realizados

INSERT INTO hospital.exame
	VALUES(1,'Negativo','Hemograma','Colesterol',1212,12);
INSERT INTO hospital.exame
	values(2,'Negativo','Hemograma','HIV',1616,13);
INSERT INTO hospital.exame
	VALUES(3,'Positivo','Gastrite erosiva','Gastrite',1313,70);
INSERT INTO hospital.exame
	VALUES(4,'Negativo','Gastrite erosiva','Gastrite',1313,15);
INSERT INTO hospital.exame
	VALUES(5,'Negativo','Hemograma','HIV',1313,19);
INSERT INTO hospital.exame
	VALUES(6,'Negativo','Hemograma','HPV',1313,19);
INSERT INTO hospital.exame
	VALUES(7,'Negativo','Hemograma','Câncer',1616,26);
INSERT INTO hospital.exame
	VALUES(8,'Positivo','Hemograma','Gravidez',1414,19);

-- Inserção de 15 consultas na tabela consulta

INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1212,12);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1616,13);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1313,70);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1313,15);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1313,19);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1111,26);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1414,19);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1616,25);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1616,60);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1414,44);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1717,52);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1616,18);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1616,67);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1010,40);
INSERT INTO hospital.consulta(medico,paciente)
	VALUES(1717,55);
	
-- inserção de 15 realizacoes 

INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(1,1,1212);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(2,2,1616);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(3,3,1313);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(4,4,1313);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(5,5,1313);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(6,6,1111);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(7,7,1414);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(8,8,1616);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(NULL,9,1616);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(NULL,10,1414);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(NULL,11,1717);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(NULL,12,1616);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(NULL,13,1616);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(NULL,14,1010);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(NULL,15,1717);
INSERT INTO hospital.realiza(id_exame,id_consulta,id_registro)
	VALUES(NULL,13,1717);

-- Inserção de 3 Atendentes

INSERT INTO hospital.atendente
	VALUES(1,'Júlia','Nascimento','23/10/1978','12345678');
INSERT INTO hospital.atendente
	VALUES(2,'Adriana','Silva','14/11/1995','23456789',1600);
INSERT INTO hospital.atendente
	VALUES(3,'Jaqueline','Santos','15/10/1990','34567890',1574);

-- Inserção de 8 diagnósticos

INSERT INTO hospital.diagnostico (paciente,medico,descricao)
	VALUES(12,1212,'Nada a constar');
INSERT INTO hospital.diagnostico (paciente,medico,descricao)
	VALUES(13,1616,'Nada a constar');
INSERT INTO hospital.diagnostico (paciente,medico,descricao)
	VALUES(70,1313,'Paciente em tratamento');
INSERT INTO hospital.diagnostico (paciente,medico,descricao)
	VALUES(15,1313,'Nada a constar');
INSERT INTO hospital.diagnostico (paciente,medico,descricao)
	VALUES(19,1313,'Nada a constar');
INSERT INTO hospital.diagnostico (paciente,medico,descricao)
	VALUES(19,1313,'Nada a constar');
INSERT INTO hospital.diagnostico (paciente,medico,descricao)
	VALUES(26,1616,'Nada a constar');	
INSERT INTO hospital.diagnostico (paciente,medico,descricao)
	VALUES(19,1414,'Paciente grávida');

-- Inserção na geração de consultas que geraram diagnóstico 

INSERT INTO hospital.gera
	VALUES(1,1);
INSERT INTO hospital.gera
	VALUES(2,2);
INSERT INTO hospital.gera
	VALUES(3,3);
INSERT INTO hospital.gera
	VALUES(4,4);
INSERT INTO hospital.gera
	VALUES(5,5);
INSERT INTO hospital.gera
	VALUES(6,6);
INSERT INTO hospital.gera
	VALUES(7,7);
INSERT INTO hospital.gera
	VALUES(8,8);
	
-- Inserção de 3 agendamentos na tabela agenda

INSERT INTO hospital.agenda
	VALUES(71,1);
INSERT INTO hospital.agenda
	VALUES(72,3);
INSERT INTO hospital.agenda
	VALUES(73,2);

-- Inserção de 15 realizações de atendimento

INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(2,9,1);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(3,10,2);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(1,11,3);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(1,12,4);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(3,13,5);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(2,14,6);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(3,15,7);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(1,9,8);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(1,9,NULL);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(1,14,NULL);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(2,15,NULL);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(3,11,NULL);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(2,2,NULL);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(3,8,NULL);
INSERT INTO hospital.RAtende(id_atendente,id_consulta,id_exame)
	VALUES(3,10,NULL);