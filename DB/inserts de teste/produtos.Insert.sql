-- Inserir dados na tabela produtos
INSERT INTO produtos (id, nome, preco, urlImagem, idCategoria) VALUES
(1, 'Coxinha', 5.50, 'url_imagem_coxinha.jpg', 1),  -- Salgado
(2, 'Empada', 6.00, 'url_imagem_empada.jpg', 1),  -- Salgado
(3, 'Pastel de Carne', 7.00, 'url_imagem_pastelcarne.jpg', 1),  -- Salgado
(4, 'Pão de Queijo', 4.00, 'url_imagem_paoquijo.jpg', 1),  -- Salgado
(5, 'Brownie', 8.00, 'url_imagem_brownie.jpg', 2),  -- Doce
(6, 'Torta de Limão', 9.00, 'url_imagem_tortalimao.jpg', 2),  -- Doce
(7, 'Gelato', 10.00, 'url_imagem_gelato.jpg', 3),  -- Bebida
(8, 'Suco Natural', 5.00, 'url_imagem_suconatural.jpg', 3),  -- Bebida
(9, 'Refrigerante', 4.50, 'url_imagem_refrigerante.jpg', 3);  -- Bebida

-- Inserir dados na tabela salgados
INSERT INTO salgados (idSalgado, recheio) VALUES
(1, 'Frango Desfiado'),
(2, 'Carne Seca'),
(3, 'Carne Moída'),
(4, 'Queijo');

-- Inserir dados na tabela pasteis
INSERT INTO pasteis (id, tamanho) VALUES
(3, 'Médio'),  -- Referenciando o pastel de carne
(4, 'Grande');  -- Referenciando o pão de queijo

-- Inserir dados na tabela revendas
INSERT INTO revendas (id, idFornecedor, codigoBarras) VALUES
(1, 12345678907, '7891234567890'),  -- Coxinha
(2, 12345678908, '7891234567891'),  -- Empada
(3, 12345678909, '7891234567892'),  -- Pastel de Carne
(4, 12345678907, '7891234567893'),  -- Pão de Queijo
(5, 12345678908, '7891234567894'),  -- Brownie
(6, 12345678909, '7891234567895');  -- Torta de Limão
-- Inserir mais dados na tabela produtos
INSERT INTO produtos (id, nome, preco, urlImagem, idCategoria) VALUES
(10, 'Torta de Frutas', 11.00, 'url_imagem_tortafruitas.jpg', 2),  -- Doce
(11, 'Pudim', 7.50, 'url_imagem_pudim.jpg', 2),  -- Doce
(12, 'Chá Gelado', 3.00, 'url_imagem_chagelado.jpg', 3),  -- Bebida
(13, 'Água Mineral', 2.00, 'url_imagem_aguamineral.jpg', 3),  -- Bebida
(14, 'Canelone', 8.50, 'url_imagem_canelone.jpg', 1),  -- Salgado
(15, 'Brigadeiro', 1.50, 'url_imagem_brigadeiro.jpg', 2);  -- Doce

-- Inserir mais dados na tabela salgados
INSERT INTO salgados (idSalgado, recheio) VALUES
(5, 'Queijo e Presunto'),
(6, 'Frango com Catupiry'),
(7, 'Legumes Assados');

-- Inserir mais dados na tabela pasteis
INSERT INTO pasteis (id, tamanho) VALUES
(5, 'Pequeno'),  -- Referenciando o canelone
(6, 'Médio');    -- Referenciando o brigadeiro

-- Inserir mais dados na tabela revendas
INSERT INTO revendas (id, idFornecedor, codigoBarras) VALUES
(7, 12345678910, '7891234567896'),  -- Torta de Frutas
(8, 12345678911, '7891234567897'),  -- Pudim
(9, 12345678912, '7891234567898'),  -- Chá Gelado
(10, 12345678913, '7891234567899'),  -- Água Mineral
(11, 12345678910, '7891234567900'),  -- Canelone
(12, 12345678911, '7891234567901');  -- Brigadeiro
*