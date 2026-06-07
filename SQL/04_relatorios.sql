-- 1. Listar clientes ordenados por nome
SELECT * FROM cliente
ORDER BY nome;

-- 2. Listar produtos com preço maior que 50
SELECT * FROM produto
WHERE preco > 50
ORDER BY preco DESC;

-- 3. Listar pedidos com nome do cliente
SELECT p.id_pedido, c.nome, p.data_pedido, p.status
FROM pedido p
JOIN cliente c ON p.id_cliente = c.id_cliente
ORDER BY p.data_pedido DESC;

-- 4. Listar produtos com suas categorias
SELECT pr.nome AS produto, ca.nome AS categoria, pr.preco
FROM produto pr
JOIN categoria ca ON pr.id_categoria = ca.id_categoria
ORDER BY ca.nome;

-- 5. Listar itens dos pedidos
SELECT pe.id_pedido, pr.nome, ip.quantidade, ip.preco_unitario
FROM item_pedido ip
JOIN pedido pe ON ip.id_pedido = pe.id_pedido
JOIN produto pr ON ip.id_produto = pr.id_produto
ORDER BY pe.id_pedido;

-- 6. Calcular total de cada pedido
SELECT 
    pe.id_pedido,
    c.nome,
    SUM(ip.quantidade * ip.preco_unitario) AS total_pedido
FROM pedido pe
JOIN cliente c ON pe.id_cliente = c.id_cliente
JOIN item_pedido ip ON pe.id_pedido = ip.id_pedido
GROUP BY pe.id_pedido, c.nome
ORDER BY total_pedido DESC;

-- 7. Clientes com pedidos entregues
SELECT c.nome, pe.status
FROM cliente c
JOIN pedido pe ON c.id_cliente = pe.id_cliente
WHERE pe.status = 'Entregue'
ORDER BY c.nome;

-- 8. Produtos com estoque menor que 30
SELECT nome, estoque
FROM produto
WHERE estoque < 30
ORDER BY estoque ASC;

-- 9. Contas dos clientes
SELECT c.nome, co.email, co.data_criacao
FROM cliente c
JOIN conta co ON c.id_cliente = co.id_cliente
ORDER BY co.data_criacao DESC;

-- 10. Telefones dos clientes
SELECT c.nome, t.telefone
FROM cliente c
JOIN telefone_cliente t ON c.id_cliente = t.id_cliente
ORDER BY c.nome;