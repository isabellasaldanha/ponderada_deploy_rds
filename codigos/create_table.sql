CREATE TABLE TB_UNIDADE (
    id_unidade INT PRIMARY KEY,
    nome_unidade VARCHAR(50),
    tipo VARCHAR(50),
    endereco VARCHAR(100)
);

CREATE TABLE TB_PACIENTE (
    id_paciente INT PRIMARY KEY,
    nome_paciente VARCHAR(50),
    data_nascimento DATE,
    genero VARCHAR(50),
    rg VARCHAR(50),
    cpf VARCHAR(50),
    endereco VARCHAR(100),
    telefone VARCHAR(50),
    laudo TEXT,
	id_unidade INT REFERENCES TB_UNIDADE(id_unidade)
);

CREATE TABLE TB_VEICULO (
	id_veiculo INT PRIMARY KEY,
	nome_veiculo VARCHAR(50),
	tipo TEXT
);

CREATE TABLE TB_SERVICO (
	id_servico INT PRIMARY KEY,
	nome_servico TEXT,
	tipo TEXT, 
	quantidade INT, 
	id_unidade INT REFERENCES TB_UNIDADE(id_unidade)
);

CREATE TABLE TB_VEICULO_PACIENTE (
	id_veiculo INT REFERENCES TB_VEICULO(id_veiculo), 
	id_paciente INT REFERENCES TB_PACIENTE(id_paciente), 
	data_ocorrido DATE, 
	status TEXT, 
	PRIMARY KEY (id_veiculo,id_paciente)
);

CREATE TABLE TB_VEICULO_SERVICO (
	id_veiculo INT REFERENCES TB_VEICULO(id_veiculo), 
	id_servico INT REFERENCES TB_SERVICO(id_servico),  
	data_ocorrido DATE,  
	status TEXT ,  
	PRIMARY KEY (id_veiculo,id_servico)
); 

CREATE TABLE TB_ROTA (
  id_rota INT PRIMARY KEY,
  id_veiculo INT REFERENCES TB_VEICULO(id_veiculo),
  origem TEXT,
  destino TEXT
);
