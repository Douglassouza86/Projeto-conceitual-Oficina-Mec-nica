-- Inserção de dados na tabela Cliente
INSERT INTO Cliente (idCliente, Nome, Endereço)
VALUES
    (1, 'João Silva', 'Rua A, 123'),
    (2, 'Maria Santos', 'Avenida B, 456');

-- Inserção de dados na tabela Veículo
INSERT INTO Veículo (idVeículo, Placa, Marca, Modelo, Cliente_idCliente)
VALUES
    (1, 'ABC1234', 'Toyota', 'Corolla', 1),
    (2, 'XYZ5678', 'Ford', 'Fiesta', 2);

-- Inserção de dados na tabela `Equipe de Mecânicos`
INSERT INTO `Equipe de Mecânicos` (idEquipe_de_Mecânicos, Nome, Endereço, Especialidade)
VALUES
    (1, 'Equipe A', 'Rua X, 789', 'Motor'),
    (2, 'Equipe B', 'Avenida Y, 101', 'Suspensão');

-- Inserção de dados na tabela `Ordem de Serviço (OS)`
INSERT INTO `Ordem de Serviço (OS)` (idOrdem_de_Serviço, `Data de Emissão`, Valor, Status, `Data de Conclusão`, Cliente_idCliente, `Equipe de Mecânicos_idEquipe de Mecânicos`)
VALUES
    (1, '2023-08-09', 250.00, 'Em andamento', NULL, 1, 1),
    (2, '2023-08-10', 150.00, 'Concluído', '2023-08-12', 2, 2);

-- Inserção de dados na tabela Serviço
INSERT INTO Serviço (idServiço, Descrição, Valor, `Ordem de Serviço (OS)_id`)
VALUES
    (1, 'Troca de óleo', 50.00, 1),
    (2, 'Alinhamento', 80.00, 2);

-- Inserção de dados na tabela Peça
-- Inserção de dados na tabela Peça
INSERT INTO Peça (idPeça, Descrição, Valor, `Ordem de Serviço (OS)_idOrdem de Serviço (OS)`)
VALUES
    (1, 'Filtro de óleo', 10.00, 1),
    (2, 'Amortecedor', 100.00, 2);

