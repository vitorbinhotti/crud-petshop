CREATE DATABASE db_petshop;
USE db_petshop;

CREATE TABLE cliente(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL, 
    cpf VARCHAR(11) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE pet(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,    
    especie VARCHAR(50) NOT NULL,
    porte ENUM('GRANDE', 'PEQUENO', 'MEDIO') NOT NULL,
    nascimento DATE NOT NULL,
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id) 
);

CREATE TABLE servico(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    duracao_min INT NOT NULL
);

CREATE TABLE agendamento(
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_hora DATETIME NOT NULL,
    status ENUM('Agendado', 'Em andamento', 'Cancelado') NOT NULL,
    observacoes TEXT, 
    pet_id INT,
    servico_id INT,
    FOREIGN KEY (pet_id) REFERENCES pet(id),
    FOREIGN KEY (servico_id) REFERENCES servico(id)
);