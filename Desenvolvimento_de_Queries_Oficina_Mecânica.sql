-- Recuperar todos os clientes e seus endereços:
SELECT Nome, Endereço FROM Cliente;

-- Recuperar todos os veículos de um cliente específico:
SELECT idVeículo, Placa, Marca, Modelo FROM Veículo WHERE Cliente_idCliente = 1;

-- Calcular o valor total de todas as ordens de serviço concluídas:
SELECT SUM(Valor) AS ValorTotal FROM `Ordem de Serviço (OS)` WHERE Status = 'Concluído';

-- Listar os veículos em ordem alfabética por marca:
SELECT idVeículo, Placa, Marca, Modelo FROM Veículo ORDER BY Marca;

-- Encontrar equipes de mecânicos com mais de 2 membros:
SELECT `Equipe de Mecânicos_idEquipe de Mecânicos`, COUNT(*) AS TotalMembros
FROM `Ordem de Serviço (OS)`
GROUP BY `Equipe de Mecânicos_idEquipe de Mecânicos`
HAVING TotalMembros > 2;

-- Recuperar todas as ordens de serviço, incluindo informações de cliente e equipe de mecânicos:
SELECT os.idOrdem_de_Serviço, os.`Data de Emissão`, os.Valor, os.Status, os.`Data de Conclusão`,
       c.Nome AS NomeCliente, em.Nome AS NomeEquipeMecanicos
FROM `Ordem de Serviço (OS)` os
JOIN Cliente c ON os.Cliente_idCliente = c.idCliente
JOIN `Equipe de Mecânicos` em ON os.`Equipe de Mecânicos_idEquipe de Mecânicos` = em.idEquipe_de_Mecânicos;








