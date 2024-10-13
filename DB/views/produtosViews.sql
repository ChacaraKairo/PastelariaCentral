-- view de ista de produtos por fornecedores
CREATE VIEW produtos_por_fornecedores AS
SELECT nome, preco, categoria, nomeFornecedor
FROM produtos
JOIN fornecedores ON produtos.idFornecedor = fornecedores.idFornecedor
ORDER BY nome;

--view de produtos por categoria
CREATE VIEW produtos_por_categoria AS
SELECT nome, preco, categoria
FROM produtos
ORDER BY categoria, preco DESC;