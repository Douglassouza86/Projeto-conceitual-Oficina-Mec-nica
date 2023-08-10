-- CREATE DATABASE oficina_mecânica;


-- Criação da tabela Cliente
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(45),
    Endereço VARCHAR(45)
);

-- Criação da tabela Veículo
CREATE TABLE Veículo (
    idVeículo INT PRIMARY KEY NOT NULL,
    Placa VARCHAR(45),
    Marca VARCHAR(45),
    Modelo VARCHAR(45),
    Cliente_idCliente INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

-- Criação da tabela Equipe de Mecânicos
CREATE TABLE `Equipe de Mecânicos` (
    idEquipe_de_Mecânicos INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(45),
    Endereço VARCHAR(45),
    Especialidade VARCHAR(45)
);

-- Criação da tabela Ordem de Serviço (OS)
CREATE TABLE `Ordem de Serviço (OS)` (
    idOrdem_de_Serviço INT PRIMARY KEY NOT NULL,
    `Data de Emissão` DATE,
    Valor DECIMAL(10,2),
    Status VARCHAR(45),
    `Data de Conclusão` VARCHAR(45),
    Cliente_idCliente INT,
    `Equipe de Mecânicos_idEquipe de Mecânicos` INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (`Equipe de Mecânicos_idEquipe de Mecânicos`) REFERENCES `Equipe de Mecânicos`(idEquipe_de_Mecânicos)
);

-- Criação da tabela Serviço
CREATE TABLE Serviço (
    idServiço INT PRIMARY KEY NOT NULL,
    Descrição VARCHAR(45),
    Valor DECIMAL(10,2),
    `Ordem de Serviço (OS)_id` INT,
    FOREIGN KEY (`Ordem de Serviço (OS)_id`) REFERENCES `Ordem de Serviço (OS)`(idOrdem_de_Serviço)
);


-- Criação da tabela Peça
CREATE TABLE Peça (
    idPeça INT PRIMARY KEY NOT NULL,
    Descrição VARCHAR(45),
    Valor DECIMAL(10,2),
    `Ordem de Serviço (OS)_idOrdem de Serviço (OS)` INT,
    FOREIGN KEY (`Ordem de Serviço (OS)_idOrdem de Serviço (OS)`) REFERENCES `Ordem de Serviço (OS)`(idOrdem_de_Serviço)
);
