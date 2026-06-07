INSERT INTO cliente 
(nome, cpf, data_nascimento, rua, numero, cidade, estado)
VALUES 
('João Teste', '12345678999', '2000-05-10', 'Rua Nova', '123', 'Franca', 'SP');

SELECT * FROM cliente;

UPDATE cliente
SET cidade = 'Ribeirão Preto'
WHERE id_cliente = 1;

DELETE FROM telefone_cliente
WHERE id_telefone = 1;

