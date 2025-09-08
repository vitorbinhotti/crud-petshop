use petshop;

INSERT INTO cliente (nome, cpf, telefone, email) VALUES
('Carlos Silva', '12345678901', '11987654321', 'carlos.silva@email.com'),
('Mariana Souza', '98765432100', '11911223344', 'mariana.souza@email.com'),
('João Oliveira', '11122233344', '21999887766', 'joao.oliveira@email.com'),
('Fernanda Lima', '55566677788', '31988776655', 'fernanda.lima@email.com'),
('Roberto Santos', '99988877766', '41977889900', 'roberto.santos@email.com');

INSERT INTO pet (nome, especie, porte, nascimento, cliente_id) VALUES
('Rex', 'Cachorro', 'GRANDE', '2019-05-12', 1),
('Luna', 'Gato', 'PEQUENO', '2021-03-25', 2),
('Thor', 'Cachorro', 'MEDIO', '2020-07-08', 3),
('Belinha', 'Cachorro', 'PEQUENO', '2022-01-15', 2),
('Milo', 'Coelho', 'PEQUENO', '2021-11-20', 4),
('Max', 'Cachorro', 'GRANDE', '2018-09-05', 5);

INSERT INTO servico (nome, preco, duracao_min) VALUES
('Banho', 50.00, 60),
('Tosa', 70.00, 90),
('Consulta Veterinária', 120.00, 45),
('Vacinação', 90.00, 30),
('Hotelzinho (diária)', 150.00, 1440);

INSERT INTO agendamento (data_hora, status, observacoes, pet_id, servico_id) VALUES
('2025-09-10 10:00:00', 'Agendado', 'Banho completo com hidratação', 1, 1),
('2025-09-11 14:00:00', 'Agendado', 'Tosa padrão', 2, 2),
('2025-09-12 09:30:00', 'Em andamento', 'Consulta de rotina', 3, 3),
('2025-09-12 16:00:00', 'Cancelado', 'Cliente desmarcou', 4, 2),
('2025-09-13 08:00:00', 'Agendado', 'Vacinação anual', 5, 4),
('2025-09-14 18:00:00', 'Agendado', 'Diária de hotelzinho', 6, 5);
