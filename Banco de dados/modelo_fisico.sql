-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Empresa (
Nome VARCHAR(50),
id_empresa VARCHAR(10) PRIMARY KEY,
cnpj VARCHAR(20),
telefone VARCHAR(20),
email VARCHAR(50),
id_endereco VARCHAR(10)
)

CREATE TABLE Endereco (
CEP VARCHAR(20),
cidade VARCHAR(50),
bairro VARCHAR(50),
endereco VARCHAR(50),
id_endereco VARCHAR(10) PRIMARY KEY
)

CREATE TABLE Locador (
id_locador VARCHAR(10) PRIMARY KEY,
data_inicio DATETIME,
data_devolucao DATETIME,
id_empresa VARCHAR(10),
id_automovel VARCHAR(10),
id_residencia VARCHAR(10),
FOREIGN KEY(id_empresa) REFERENCES Empresa (id_empresa)
)

CREATE TABLE Companhia_rodoviaria (
id_cia_rodoviaria VARCHAR(10) PRIMARY KEY,
valor_passagen DECIMAL(10,2),
id_empresa VARCHAR(10),
FOREIGN KEY(id_empresa) REFERENCES Empresa (id_empresa)
)

CREATE TABLE Companhia_Aerea (
id_cia_aerea VARCHAR(10) PRIMARY KEY,
valor_passagen DECIMAL(10,2),
id_empresa VARCHAR(10),
FOREIGN KEY(id_empresa) REFERENCES Empresa (id_empresa)
)

CREATE TABLE Passagen (
destino VARCHAR(50),
quantidade NUMERIC(10),
data_ida DATETIME,
data_volta DATETIME,
id_passagen VARCHAR(10) PRIMARY KEY,
origem VARCHAR(50),
id_cia_rodoviaria VARCHAR(10),
id_cia_aerea VARCHAR(10),
FOREIGN KEY(id_cia_rodoviaria) REFERENCES Companhia_rodoviaria (id_cia_rodoviaria),
FOREIGN KEY(id_cia_aerea) REFERENCES Companhia_Aerea (id_cia_aerea)
)

CREATE TABLE pacote (
valor DECIMAL(10,2),
quantidade NUMERIC(10),
id_pacote VARCHAR(10) PRIMARY KEY,
id_hospedagen VARCHAR(10),
id_locador VARCHAR(10),
id_passagen VARCHAR(10),
FOREIGN KEY(id_locador) REFERENCES Locador (id_locador),
FOREIGN KEY(id_passagen) REFERENCES Passagen (id_passagen)
)

CREATE TABLE Cliente (
id_cliente VARCHAR(10) PRIMARY KEY,
nome VARCHAR(50),
cpf VARCHAR(20),
rg VARCHAR(20),
telefone VARCHAR(20),
email VARCHAR(50),
id_endereco VARCHAR(10),
FOREIGN KEY(id_endereco) REFERENCES Endereco (id_endereco)
)

CREATE TABLE Venda (
id_venda VARCHAR(10) PRIMARY KEY,
data DATETIME,
preco DECIMAL(10,2),
id_cliente VARCHAR(10),
id_locador VARCHAR(10),
id_hospedagen VARCHAR(10),
id_passagen VARCHAR(10),
id_pacote VARCHAR(10),
FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente),
FOREIGN KEY(id_locador) REFERENCES Locador (id_locador),
FOREIGN KEY(id_passagen) REFERENCES Passagen (id_passagen),
FOREIGN KEY(id_pacote) REFERENCES pacote (id_pacote)
)

CREATE TABLE Imovel (
Tipo VARCHAR(50),
id_residencia VARCHAR(10) PRIMARY KEY,
valor_diaria DECIMAL(10,2),
capacidade_pessoa NUMERIC(10),
id_endereco VARCHAR(10),
descricao VARCHAR(100),
FOREIGN KEY(id_endereco) REFERENCES Endereco (id_endereco)
)

CREATE TABLE Automovel (
modelo VARCHAR(50),
fabricante VARCHAR(50),
pessoal NUMERIC(10),
combustivel VARCHAR(50),
portamala NUMERIC(10),
ano NUMERIC(10),
km NUMERIC(10),
id_automovel VARCHAR(10) PRIMARY KEY,
cor VARCHAR(10),
descricao VARCHAR(100 ),
valor_diaria NUMERIC(10,2 )
)

CREATE TABLE Hospedagen (
id_hospedagen VARCHAR(10) PRIMARY KEY,
data_entrada DATETIME,
data_saida DATETIME,
descricao VARCHAR(50),
id_empresa VARCHAR(10),
id_endereco VARCHAR(10),
valor_diaria DECIMAL(10,2 ),
FOREIGN KEY(id_empresa) REFERENCES Empresa (id_empresa),
FOREIGN KEY(id_endereco) REFERENCES Endereco (id_endereco)
)

ALTER TABLE Empresa ADD FOREIGN KEY(id_endereco) REFERENCES Endereco (id_endereco)
ALTER TABLE Locador ADD FOREIGN KEY(id_automovel) REFERENCES Automovel (id_automovel)
ALTER TABLE Locador ADD FOREIGN KEY(id_residencia) REFERENCES Imovel (id_residencia)
ALTER TABLE pacote ADD FOREIGN KEY(id_hospedagen) REFERENCES Hospedagen (id_hospedagen)
ALTER TABLE Venda ADD FOREIGN KEY(id_hospedagen) REFERENCES Hospedagen (id_hospedagen)
