![logo](https://github.com/weslyramalho/Destino-perfeito/blob/main/logo%20e%20paleta%20de%20cores/DestinoPerfeito.png)

# Destino-perfeito

Este projeto refere-se a uma agência de viagens, estruturando tanto a interface quanto o planejamento do banco de dados. O objetivo é criar uma base sólida para o projeto, alinhando às melhores práticas de desenvolvimento web.

## Requisitos

**1. Interface Visual Desenvolva uma página inicial da destino perfeito, incluindo:**
  - HTML para estruturar o conteúdo. 

- CSS para estilização e personalização do design. 

- Bootstrap (opcional) para criar um design responsivo e moderno.
  
**2. Versionamento de Código**


**3. Modelagem de Banco de Dados**
- Desenvolva os diagramas do banco de dados para a agência de viagens: 

- Conceitual: Representação das entidades e seus relacionamentos. 
  ![modelo conceitual](https://github.com/weslyramalho/Destino-perfeito/blob/main/Banco%20de%20dados/Diagrama_conceitual.png)
- Lógico: Estrutura detalhada com atributos e relacionamentos.
![modelo logico](https://github.com/weslyramalho/Destino-perfeito/blob/main/Banco%20de%20dados/Diagrama_Logico.png)

- Físico: Representação final, pronta para implementação.
```  
CREATE DATABASE dbdestinoperfeito;

USE dbdestinoperfeito;


CREATE TABLE Endereco (
id_endereco INTEGER PRIMARY KEY AUTO_INCREMENT,
cidade VARCHAR(50) NOT NULL,
uf VARCHAR(2) NOT NULL,
logradouro VARCHAR(100) NOT NULL,
cep VARCHAR(15) NOT NULL,
bairro VARCHAR(50) NOT NULL
);

CREATE TABLE Contato (
telefone VARCHAR(15) NOT NULL,
email VARCHAR(100) NOT NULL,
id_contato INTEGER PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Pagamento (
id_pagamento INTEGER PRIMARY KEY AUTO_INCREMENT,
metodo_pagamento  VARCHAR(100) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
status VARCHAR(100),
data_pagamento  DATETIME
);

CREATE TABLE Usuario (
nome VARCHAR(100) NOT NULL,
cpf VARCHAR(15) PRIMARY KEY,
data_cadastro DATETIME,
data_nascimnento DATETIME,
id_endereco INTEGER,
id_contato INTEGER,
FOREIGN KEY(id_endereco) REFERENCES Endereco (id_endereco),
FOREIGN KEY(id_contato) REFERENCES Contato (id_contato)
);

CREATE TABLE Reserva (
id_reserva INTEGER PRIMARY KEY AUTO_INCREMENT,
data_reserva  DATETIME NOT NULL,
status VARCHAR(100),
valor_total  DECIMAL(10,2) NOT NULL,
cpf VARCHAR(15),
id_hotel INTEGER,
id_pagamento INTEGER,
numero_voo VARCHAR(50),
id_viagem INTEGER,
id_pacote INTEGER,
id_aluguel_carro INTEGER,
FOREIGN KEY(cpf) REFERENCES Usuario (cpf),
FOREIGN KEY(id_pagamento) REFERENCES Pagamento (id_pagamento)
);

CREATE TABLE Hotel (
id_hotel INTEGER PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
classsificacao INTEGER NOT NULL,
comodidades VARCHAR(200) NOT NULL,
quartos_disponiveis INTEGER NOT NULL,
preco_por_noite DECIMAL(10,2) NOT NULL,
id_contato INTEGER,
id_endereco INTEGER,
FOREIGN KEY(id_contato) REFERENCES Contato (id_contato),
FOREIGN KEY(id_endereco) REFERENCES Endereco (id_endereco)
);

CREATE TABLE Aluguel_carro (
id_aluguel_carro INTEGER PRIMARY KEY AUTO_INCREMENT,
local_retirada VARCHAR(100) NOT NULL,
local_devolucao VARCHAR(100) NOT NULL,
data_retirada  DATETIME NOT NULL,
data_devolucao  DATETIME NOT NULL,
tipo_veiculo  VARCHAR(50) NOT NULL,
preco_diaria  DECIMAL(10,2) NOT NULL
);

CREATE TABLE Voo (
companhia_aerea VARCHAR(100) NOT NULL,
numero_voo VARCHAR(50) PRIMARY KEY,
origem VARCHAR(100) NOT NULL,
destino VARCHAR(100) NOT NULL,
data_partida DATETIME NOT NULL,
data_chegada DATETIME NOT NULL,
preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE Viagem (
id_viagem INTEGER PRIMARY KEY AUTO_INCREMENT,
destino VARCHAR(100) NOT NULL,
tipo_viagem VARCHAR(50) NOT NULL,
data_retorno DATETIME NOT NULL,
preco DECIMAL(10,2) NOT NULL,
status VARCHAR(50) ,
data_ida DATETIME NOT NULL,
origem VARCHAR(100) NOT NULL
);

CREATE TABLE Pacote_turistico (
id_pacote INTEGER PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(200) NOT NULL,
destino  VARCHAR(100) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
duracao INTEGER NOT NULL,
inclusoes VARCHAR(200) NOT NULL,
id_hotel INTEGER,
numero_voo VARCHAR(50),
id_viagem INTEGER,
id_aluguel_carro INTEGER,
FOREIGN KEY(id_hotel) REFERENCES Hotel (id_hotel),
FOREIGN KEY(numero_voo) REFERENCES Voo (numero_voo),
FOREIGN KEY(id_viagem) REFERENCES Viagem (id_viagem),
FOREIGN KEY(id_aluguel_carro) REFERENCES Aluguel_carro (id_aluguel_carro)
);

ALTER TABLE Reserva ADD FOREIGN KEY(id_hotel) REFERENCES Hotel (id_hotel);
ALTER TABLE Reserva ADD FOREIGN KEY(numero_voo) REFERENCES Voo (numero_voo);
ALTER TABLE Reserva ADD FOREIGN KEY(id_viagem) REFERENCES Viagem (id_viagem);
ALTER TABLE Reserva ADD FOREIGN KEY(id_pacote) REFERENCES Pacote_turistico (id_pacote);
ALTER TABLE Reserva ADD FOREIGN KEY(id_aluguel_carro) REFERENCES Aluguel_carro (id_aluguel_carro);


```
- Utilize o BRModelo ou ferramenta equivalente. 

- Gere o script SQL para criação das tabelas no banco de dados a partir do diagrama físico. 

*Nota: A integração com a interface não é necessária nesta etapa.* 

**4. Apresentação do Projeto (Vídeo)**
- Grave um vídeo de até 2 minutos explicando o trabalho desenvolvido. No vídeo, mostre: 

- A interface criada (design e conteúdo). 

- Trechos do código (HTML, CSS e Bootstrap, se utilizado). 

- Os diagramas do banco de dados e o script SQL gerado. 

- Comente brevemente sobre o planejamento documentado.
  
!modelo coceitual(URL da imagem)

