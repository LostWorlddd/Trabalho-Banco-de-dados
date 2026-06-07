INSERT INTO cliente (nome, cpf, data_nascimento, rua, numero, cidade, estado)
SELECT 
    'Cliente ' || i,
    LPAD(i::TEXT, 11, '0'),
    DATE '1990-01-01' + (i * INTERVAL '100 days'),
    'Rua ' || i,
    i::TEXT,
    'Franca',
    'SP'
FROM generate_series(1, 50) AS i;

INSERT INTO conta (email, senha, data_criacao, id_cliente)
SELECT
    'cliente' || i || '@email.com',
    'senha' || i,
    CURRENT_DATE,
    i
FROM generate_series(1, 50) AS i;

INSERT INTO telefone_cliente (telefone, id_cliente)
SELECT
    '(16) 99999-' || LPAD(i::TEXT, 4, '0'),
    i
FROM generate_series(1, 50) AS i;

INSERT INTO categoria (nome, descricao)
SELECT
    'Categoria ' || i,
    'Descrição da categoria ' || i
FROM generate_series(1, 50) AS i;

INSERT INTO produto (nome, preco, estoque, id_categoria)
SELECT
    'Livro ' || i,
    20 + i,
    10 + i,
    i
FROM generate_series(1, 50) AS i;

INSERT INTO pedido (data_pedido, status, id_cliente)
SELECT
    CURRENT_DATE - (i || ' days')::INTERVAL,
    CASE 
        WHEN i % 3 = 0 THEN 'Entregue'
        WHEN i % 3 = 1 THEN 'Em andamento'
        ELSE 'Cancelado'
    END,
    i
FROM generate_series(1, 50) AS i;

INSERT INTO item_pedido (quantidade, preco_unitario, id_pedido, id_produto)
SELECT
    1 + (i % 5),
    20 + i,
    i,
    i
FROM generate_series(1, 50) AS i;