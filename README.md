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
  
CREATE TABLE Empresa ( \
Nome VARCHAR(50),\
id_empresa VARCHAR(10) PRIMARY KEY, \
cnpj VARCHAR(20),\
telefone VARCHAR(20),\
email VARCHAR(50),\
id_endereco VARCHAR(10)\
);\
\
CREATE TABLE Endereco (\
CEP VARCHAR(20),\
cidade VARCHAR(50),\
bairro VARCHAR(50),\
endereco VARCHAR(50),\
id_endereco VARCHAR(10) PRIMARY KEY\
);\
\
CREATE TABLE Locador (\
id_locador VARCHAR(10) PRIMARY KEY,\
data_inicio DATETIME,\
data_devolucao DATETIME,\
id_empresa VARCHAR(10),\
id_automovel VARCHAR(10),\
id_residencia VARCHAR(10),\
FOREIGN KEY(id_empresa) REFERENCES Empresa (id_empresa)\
);\
\
CREATE TABLE Companhia_rodoviaria (\
id_cia_rodoviaria VARCHAR(10) PRIMARY KEY,\
valor_passagen DECIMAL(10,2),\
id_empresa VARCHAR(10),\
FOREIGN KEY(id_empresa) REFERENCES Empresa (id_empresa)\
);\
\
CREATE TABLE Companhia_Aerea (\
id_cia_aerea VARCHAR(10) PRIMARY KEY,\
valor_passagen DECIMAL(10,2),\
id_empresa VARCHAR(10),\
FOREIGN KEY(id_empresa) REFERENCES Empresa (id_empresa)\
);\

CREATE TABLE Passagen (\
destino VARCHAR(50),\
quantidade NUMERIC(10),\
data_ida DATETIME,\
data_volta DATETIME,\
id_passagen VARCHAR(10) PRIMARY KEY,\
origem VARCHAR(50),\
id_cia_rodoviaria VARCHAR(10),\
id_cia_aerea VARCHAR(10),\
FOREIGN KEY(id_cia_rodoviaria) REFERENCES Companhia_rodoviaria (id_cia_rodoviaria),\
FOREIGN KEY(id_cia_aerea) REFERENCES Companhia_Aerea (id_cia_aerea)\
);\
\
CREATE TABLE pacote (\
valor DECIMAL(10,2),\
quantidade NUMERIC(10),\
id_pacote VARCHAR(10) PRIMARY KEY,\
id_hospedagen VARCHAR(10),\
id_locador VARCHAR(10),\
id_passagen VARCHAR(10),\
FOREIGN KEY(id_locador) REFERENCES Locador (id_locador),\
FOREIGN KEY(id_passagen) REFERENCES Passagen (id_passagen)\
);\
\
CREATE TABLE Cliente (\
id_cliente VARCHAR(10) PRIMARY KEY,\
nome VARCHAR(50),\
cpf VARCHAR(20),\
rg VARCHAR(20),\
telefone VARCHAR(20),\
email VARCHAR(50),\
id_endereco VARCHAR(10),\
FOREIGN KEY(id_endereco) REFERENCES Endereco (id_endereco)\
);\
\
CREATE TABLE Venda (\
id_venda VARCHAR(10) PRIMARY KEY,\
data DATETIME,\
preco DECIMAL(10,2),\
id_cliente VARCHAR(10),\
id_locador VARCHAR(10),\
id_hospedagen VARCHAR(10),\
id_passagen VARCHAR(10),\
id_pacote VARCHAR(10),\
FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente),\
FOREIGN KEY(id_locador) REFERENCES Locador (id_locador),\
FOREIGN KEY(id_passagen) REFERENCES Passagen (id_passagen),\
FOREIGN KEY(id_pacote) REFERENCES pacote (id_pacote)\
);\
\
CREATE TABLE Imovel (\
Tipo VARCHAR(50),\
id_residencia VARCHAR(10) PRIMARY KEY,\
valor_diaria DECIMAL(10,2),\
capacidade_pessoa NUMERIC(10),\
id_endereco VARCHAR(10),\
descricao VARCHAR(100),\
FOREIGN KEY(id_endereco) REFERENCES Endereco (id_endereco)\
);\
\
CREATE TABLE Automovel (\
modelo VARCHAR(50),\
fabricante VARCHAR(50),\
pessoal NUMERIC(10),\
combustivel VARCHAR(50),\
portamala NUMERIC(10),\
ano NUMERIC(10),\
km NUMERIC(10),\
id_automovel VARCHAR(10) PRIMARY KEY,\
cor VARCHAR(10),\
descricao VARCHAR(100 ),\
valor_diaria NUMERIC(10,2 )\
);\
\
CREATE TABLE Hospedagen (\
id_hospedagen VARCHAR(10) PRIMARY KEY,\
data_entrada DATETIME,\
data_saida DATETIME,\
descricao VARCHAR(50),\
id_empresa VARCHAR(10),\
id_endereco VARCHAR(10),\
valor_diaria DECIMAL(10,2 ),\
FOREIGN KEY(id_empresa) REFERENCES Empresa (id_empresa),\
FOREIGN KEY(id_endereco) REFERENCES Endereco (id_endereco)\
);\
\
ALTER TABLE Empresa ADD FOREIGN KEY(id_endereco) REFERENCES Endereco (id_endereco);\
ALTER TABLE Locador ADD FOREIGN KEY(id_automovel) REFERENCES Automovel (id_automovel);\
ALTER TABLE Locador ADD FOREIGN KEY(id_residencia) REFERENCES Imovel (id_residencia);\
ALTER TABLE pacote ADD FOREIGN KEY(id_hospedagen) REFERENCES Hospedagen (id_hospedagen);\
ALTER TABLE Venda ADD FOREIGN KEY(id_hospedagen) REFERENCES Hospedagen (id_hospedagen); \


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

