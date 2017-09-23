-- Criação do esquema

CREATE SCHEMA hospital;

-- Criação da Tabela cadastro

CREATE TABLE hospital.cadastro(
	id_login SERIAL,
	data_cad DATE NOT NULL,
	CONSTRAINT pk_login PRIMARY KEY (id_login)
);

-- Criação da tabela Acompanhante

CREATE TABLE hospital.acompanhante (
	id_acomp SERIAL,
	primeiro_nome VARCHAR(45) NULL,
	sobrenome VARCHAR(45) NULL,
	PRIMARY KEY (id_acomp)
	);


ALTER TABLE hospital.acompanhante 
  ADD data_nasc VARCHAR(30) NULL,
  ADD tel_cel VARCHAR(20) NULL,
  ADD nome_pac VARCHAR(20) NOT NULL;

ALTER TABLE hospital.acompanhante
RENAME COLUMN nome_pac TO nome_pac_associado;

ALTER TABLE hospital.acompanhante
DROP COLUMN nome_pac_associado;
	

-- Criação da tabela Paciente

CREATE TABLE hospital.paciente(
	id SERIAL,
	primeiro_nome VARCHAR(45) NULL,
	sobrenome VARCHAR(45) NULL,
	data_nasc VARCHAR(30) NULL,
	tel_cel VARCHAR(20) NULL,
	num_pront INT NOT NULL,
	id_login INT NOT NULL,
	id_acomp INT NULL,
	PRIMARY KEY (num_pront),
	CONSTRAINT id_cadastro FOREIGN KEY (id_login) REFERENCES hospital.cadastro (id_login)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT id_acomp FOREIGN KEY (id_acomp) REFERENCES hospital.acompanhante (id_acomp)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
	);

ALTER TABLE hospital.paciente
ADD cartao_sus INT NULL;

ALTER TABLE hospital.paciente
DROP COLUMN id;

-- Criação da Tabela Consultas Marcadas

CREATE TABLE hospital.ConsultasMarcadas(
	consultas_marc INT NOT NULL CHECK (consultas_marc > 0) DEFAULT 0,
	idcadastro INT NOT NULL,
	PRIMARY KEY (consultas_marc,idcadastro),
	CONSTRAINT idcadastro
		FOREIGN KEY (idcadastro) REFERENCES hospital.cadastro (id_login)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
);

-- Criação da Tabela Medicamento

CREATE TABLE hospital.medicamento (
	id_medicamento INT NOT NULL,
	nome VARCHAR(45) NOT NULL,
	descricao VARCHAR(200) NOT NULL,
	posologia VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_medicamento)
);

-- Criação da Tabela Possui

CREATE TABLE hospital.possui (
	num_pront INT NOT NULL,
	id_medicamento INT NOT NULL,
	PRIMARY KEY (num_pront, id_medicamento),
	CONSTRAINT num_pront
		FOREIGN KEY (num_pront) REFERENCES hospital.paciente (num_pront)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT id_medicamento
		FOREIGN KEY (id_medicamento)
		REFERENCES hospital.medicamento (id_medicamento)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
	);
	
-- Criação da Tabela CRM_Validação

CREATE TABLE hospital.CRM_Validacao (
	crm INT NOT NULL,
	crmAtivo BOOLEAN NOT NULL,
	PRIMARY KEY (crm)
);

-- Criação da Tabela Médico

CREATE DOMAIN sal INT CHECK (VALUE > 2000 AND VALUE < 5000);

CREATE TABLE hospital.medico (
	id_registro INT NOT NULL UNIQUE,
	primeiro_nome VARCHAR(45) NOT NULL,
	sobrenome VARCHAR(45) NOT NULL,
	data_nasc VARCHAR(30) NOT NULL,
	tel_cel VARCHAR(20) NULL,
	crm INT NOT NULL,
	salario SAL,
	PRIMARY KEY (id_registro),
	CONSTRAINT crm 
		FOREIGN KEY (crm)
		REFERENCES hospital.CRM_Validacao (crm)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
	);

ALTER TABLE hospital.medico 
ADD especialidade VARCHAR(45) NOT NULL;

-- Criação da tabela Prescreve

CREATE TABLE hospital.prescreve (
	id_medicamento INT NOT NULL,
	id_registro INT NOT NULL,
	PRIMARY KEY (id_medicamento, id_registro),
	CONSTRAINT id_medicamento
		FOREIGN KEY (id_medicamento)
		REFERENCES hospital.medicamento (id_medicamento)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
	);
	
-- Criação da tabela Exame

CREATE DOMAIN TIPO_EXAME AS TEXT CHECK(
	VALUE ~ 'Pressão Arterial' OR
	VALUE ~ 'Hemograma' OR
	VALUE ~ 'Colesterol' OR
	VALUE ~ 'Biopsia' OR
	VALUE ~ 'Gastrite erosiva' OR
	VALUE ~ 'Endoscopia' OR
	VALUE ~ 'Urografia');

CREATE TABLE hospital.exame (
	id_exame SERIAL,
	resultado VARCHAR(45) NOT NULL,
	medico VARCHAR(45) NOT NULL,
	tipo TIPO_EXAME,
	nome VARCHAR(45) NOT NULL,
	paciente VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_exame)
	);


ALTER TABLE hospital.exame
  DROP COLUMN medico;

ALTER TABLE hospital.exame
	DROP COLUMN paciente;

ALTER TABLE hospital.exame
	ADD COLUMN medico INT NOT NULL;

ALTER TABLE hospital.exame
	ADD CONSTRAINT medico
	FOREIGN KEY (medico)
	REFERENCES hospital.medico(id_registro);

ALTER TABLE hospital.exame
	ADD COLUMN paciente INT NOT NULL;

ALTER TABLE hospital.exame
	ADD CONSTRAINT paciente
	FOREIGN KEY (paciente)
	REFERENCES hospital.paciente(num_pront);
 
-- Criação da tabela Consulta

CREATE TABLE hospital.consulta(
	id_consulta SERIAL,
	medico INT NOT NULL,
	paciente INT NOT NULL,
	PRIMARY KEY (id_consulta)
	);

ALTER TABLE hospital.consulta
	ADD CONSTRAINT medico
	FOREIGN KEY (medico)
	REFERENCES hospital.medico(id_registro);

ALTER TABLE hospital.consulta
	ADD CONSTRAINT paciente
	FOREIGN KEY (paciente)
	REFERENCES hospital.paciente(num_pront);

-- Criação da tabela Realiza

CREATE TABLE hospital.realiza (
	idRealizacao SERIAL,
	id_exame INT NULL,
	data_r DATE NOT NULL,
	id_consulta INT NOT NULL,
	id_registro INT NOT NULL,
	PRIMARY KEY (idRealizacao),
	CONSTRAINT id_exame
		FOREIGN KEY (id_exame)
		REFERENCES hospital.exame (id_exame)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT id_registro
		FOREIGN KEY (id_registro)
		REFERENCES hospital.medico (id_registro)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT id_consulta
		FOREIGN KEY (id_consulta)
		REFERENCES hospital.consulta (id_consulta)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
	);

ALTER TABLE hospital.realiza
DROP COLUMN data_r;

-- Criação da tabela Atendente

CREATE TABLE hospital.atendente (
	id SERIAL,
	primeiro_nome VARCHAR(45) NOT NULL,
	sobrenome VARCHAR(45) NOT NULL,
	data_nasc VARCHAR(45) NOT NULL,
	tel_cel VARCHAR(45) NOT NULL,
	salario INT NULL CHECK (salario > 0) DEFAULT 1500,
	PRIMARY KEY (id)
);

-- Criação da tabela Diagnóstico

CREATE TABLE IF NOT EXISTS hospital.diagnostico(
	id_diag SERIAL,
	paciente INT NOT NULL,
	medico INT NOT NULL,
	descricao VARCHAR(200) NOT NULL,
	PRIMARY KEY (id_diag),
	CONSTRAINT paciente
		FOREIGN KEY (paciente)
		REFERENCES hospital.paciente (num_pront),
	CONSTRAINT medico
		FOREIGN KEY(medico)
		REFERENCES hospital.medico (id_registro)
  );

-- Criação da tabea Gera

CREATE TABLE IF NOT EXISTS hospital.gera (
	id_consulta INT NOT NULL,
	id_diag INT NOT NULL,
	PRIMARY KEY (id_consulta, id_diag),
	CONSTRAINT id_diag
		FOREIGN KEY (id_diag)
		REFERENCES hospital.diagnostico (id_diag)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT id_consulta
		FOREIGN KEY (id_consulta)
		REFERENCES hospital.consulta (id_consulta)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);

-- Criação da tabela Agenda

CREATE TABLE hospital.agenda (
	  idAgenda SERIAL,
	  id_atendente INT NOT NULL UNIQUE,
	  PRIMARY KEY (idAgenda),
	  CONSTRAINT id_atendente
	    FOREIGN KEY (id_atendente)
	    REFERENCES hospital.atendente (id)
	    ON DELETE NO ACTION
	    ON UPDATE NO ACTION
	  );

-- Criação da tabela RAtende

CREATE TABLE hospital.RAtende (
	  id_RA SERIAL,
	  id_atendente INT NOT NULL,
	  id_consulta INT NOT NULL,
	  id_exame INT NULL,
	  PRIMARY KEY (id_RA),
	  CONSTRAINT id_atendente
	    FOREIGN KEY (id_atendente)
	    REFERENCES hospital.agenda (id_atendente)
	    ON DELETE NO ACTION
	    ON UPDATE NO ACTION,
	  CONSTRAINT id_consulta
	    FOREIGN KEY (id_consulta)
	    REFERENCES hospital.consulta (id_consulta)
	    ON DELETE NO ACTION
	    ON UPDATE NO ACTION,
	  CONSTRAINT id_exame
	    FOREIGN KEY (id_exame)
	    REFERENCES hospital.exame (id_exame)
	    ON DELETE NO ACTION
	    ON UPDATE NO ACTION
);


