Projeto de Banco de Dados - Livraria Aurora
 Cenário

A Livraria Aurora é uma loja virtual de livros físicos. O sistema controla clientes, contas de acesso, telefones, categorias, produtos, pedidos e itens dos pedidos.

Cada cliente possui uma conta de acesso, podendo realizar vários pedidos. Cada pedido pode conter vários produtos, e cada produto pode aparecer em vários pedidos.

Modelagem Conceitual

O DER foi criado com as seguintes entidades:

- Cliente
- Conta
- Telefone Cliente
- Categoria
- Produto
- Pedido
- Item Pedido

Relacionamentos:

- Cliente 1:1 Conta
- Cliente 1:N Pedido
- Cliente 1:N Telefone
- Categoria 1:N Produto
- Pedido N:N Produto, resolvido pela tabela ItemPedido

Modelagem Lógica

Foram criadas tabelas com chaves primárias e estrangeiras, respeitando os relacionamentos definidos no DER.

Modelagem Física

O banco foi implementado no Supabase utilizando SQL/PostgreSQL.

Os scripts estão organizados na pasta `/sql`.

CRUD

Foram demonstradas operações de:

- Create: inserção de cliente
- Read: consulta de clientes
- Update: atualização de dados
- Delete: exclusão de telefone

Prints das operações foram adicionados na pasta `/prints`.

Relatórios

Foram criadas 10 consultas SQL utilizando:

- SELECT
- WHERE
- ORDER BY
- JOIN
- GROUP BY

As consultas evidenciam os relacionamentos entre as tabelas.
