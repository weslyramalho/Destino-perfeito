![logo](https://github.com/weslyramalho/Destino-perfeito/blob/main/logo%20e%20paleta%20de%20cores/DestinoPerfeito.png)

# Destino-perfeito

Este projeto refere-se a uma agência de viagens, estruturando tanto a interface quanto o planejamento do banco de dados. O objetivo é criar uma base sólida para o projeto, alinhando às melhores práticas de desenvolvimento web.

## Requisitos

**1. Introdução** \
Este documento tem como objetivo descrever os requisitos funcionais e não funcionais para o desenvolvimento de uma página web para a agência de viagens Destino Perfeito. A página deve ser intuitiva, responsiva e oferecer uma experiência de usuário excepcional, permitindo que os clientes pesquisem, reservem e gerenciem suas viagens de forma eficiente. 

**2. Objetivos** 
- Fornecer uma plataforma online para que os clientes possam pesquisar e reservar viagens, hotéis, pacotes turísticos e outros serviços relacionados.
- Oferecer uma interface amigável e responsiva que funcione em diversos dispositivos (desktops, tablets, smartphones).
- Facilitar a gestão de reservas e informações pelos clientes.
- Integrar com sistemas de pagamento e fornecedores de serviços turísticos.
- Garantir a segurança e privacidade dos dados dos usuários.

**3. Requisitos Funcionais** \
**3.1. Página Inicial**
-	Apresentar uma interface limpa e atrativa com destaque para promoções e ofertas especiais.
-	Incluir uma barra de pesquisa para destinos, datas, e tipos de viagem (voos, hotéis, pacotes).
-	Links rápidos para seções populares (viagem, hospedagem, pacotes, aluguel de carros, etc.).
-	Informações de contato e links para redes sociais. 


**3.2. Pesquisa e Reserva**
-	Voos: Permitir pesquisa por origem, destino, datas, número de passageiros e classe. Exibir resultados com filtros por preço, companhia aérea, horários, etc.
-	Hotéis: Permitir pesquisa por destino, datas, número de hóspedes e tipo de quarto. Exibir resultados com filtros por preço, classificação, comodidades, etc.
-	Pacotes Turísticos: Oferecer pacotes combinados de voos + hotéis + atividades. Permitir pesquisa por destino e datas.
-	Aluguel de Carros: Permitir pesquisa por local de retirada, datas, tipo de veículo. Exibir resultados com filtros por preço, categoria, etc. 


**3.3. Detalhes do Produto** 
-	Exibir informações detalhadas sobre voos, hotéis, pacotes e aluguel de carros.
-	Incluir fotos, descrições, políticas de cancelamento, etc.
  

**3.4. Reserva e Pagamento**
-	Permitir que o usuário selecione os serviços desejados e prossiga para a reserva.
-	Coletar informações do cliente (nome, contato, documentos, etc.).
-	Integrar com gateways de pagamento (cartão de crédito, PayPal, etc.).
-	Enviar confirmação de reserva por e-mail.



**3.5. Área do Cliente**
-	Permitir que os clientes criem uma conta para gerenciar suas reservas.
-	Visualizar histórico de reservas, itinerários, e recibos.
-	Opção de cancelar ou modificar reservas (de acordo com as políticas).
-	Salvar informações de pagamento e preferências de viagem.

**3.6. Conteúdo e Blog**
-	Incluir uma seção de blog com dicas de viagem, destinos populares, guias, etc.
-	Permitir comentários e compartilhamento nas redes sociais.

  
**3.7. Administração**
-	Painel de administração para gestão de conteúdo, promoções, e ofertas.
-	Gerenciamento de reservas, clientes, e relatórios.
-	Integração com fornecedores de serviços turísticos para atualização de disponibilidade e preços.


**4. Requisitos Não Funcionais** \
**4.1. Desempenho**
-	Tempo de carregamento da página inferior a 3 segundos.
-	Capacidade de suportar até 10.000 usuários simultâneos.


**4.2. Segurança**
-	Utilização de HTTPS para todas as transações.
-	Proteção contra ataques de SQL Injection, XSS, e outros.
-	Armazenamento seguro de dados dos clientes em conformidade com a LGPD (Lei Geral de Proteção de Dados).

**4.3. Usabilidade**
-	Interface intuitiva e fácil de navegar.
-	Design responsivo que funcione em diversos dispositivos e tamanhos de tela.


**4.4. Escalabilidade**
-	Arquitetura que permita a adição de novos recursos e integrações no futuro.
-	Capacidade de aumentar a capacidade de processamento conforme o crescimento do negócio.


**4.5. Disponibilidade**
-	Garantia de uptime de 99,9%.
-	Sistema de backup e recuperação de desastres.


**5. Tecnologias e Integrações** \
**5.1. Tecnologias**
-	Front-end: HTML5, CSS3, Bootstrap, JavaScript (React.js ou Angular).
-	Back-end: Node.js, Python (Django) ou  Java(spring-boot).
-	Banco de Dados: MySQL .
-	Hospedagem: AWS, Google Cloud, ou Azure.

**5.2. Integrações**
-	Gateways de pagamento: PayPal, Stripe, Mercado Pago.
-	Redes sociais: Facebook, Instagram, Twitter.
-	Ferramentas de análise: Google Analytics, Hotjar.


**6. Cronograma e Entregas** \
**6.1. Fase 1: Planejamento e Design**
-	Definição de escopo e requisitos.
-	Criação de wireframes e protótipos.
-	Aprovação do design.


**6.2. Fase 2: Desenvolvimento**
-	Desenvolvimento do front-end e banco de Dados.
-	Testes iniciais.


**6.3. Fase 3: Testes e Ajustes**
-	Testes de usabilidade e desempenho.
-	Correção de bugs e ajustes finais.


**6.4. Fase 4: Lançamento**
-	Lançamento da página web.
-	Monitoramento e suporte pós-lançamento.


**7. Conclusão** \
Este documento de requisitos serve como base para o desenvolvimento da página web da agência de viagens Destino Perfeito. Ele deve ser revisado e ajustado conforme necessário durante o projeto para garantir que todas as necessidades do cliente e dos usuários finais sejam atendidas.




## Modelagem de Banco de Dados
- Desenvolva os diagramas do banco de dados para a agência de viagens: 

- Conceitual: Representação das entidades e seus relacionamentos. 
  ![modelo conceitual](https://github.com/weslyramalho/Destino-perfeito/blob/main/Banco%20de%20dados/Modelo_conceitual.jpg)
- Lógico: Estrutura detalhada com atributos e relacionamentos.
![modelo logico](https://github.com/weslyramalho/Destino-perfeito/blob/main/Banco%20de%20dados/Modelo_logico.jpg)

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
- Utilizei o BRModelo para modelagem. 

- Gerei o script SQL para criação das tabelas no banco de dados a partir do diagrama físico. 



