/*Esta trigger calcula o subtotal no pedidoProdutos
recebendo a multiplicação do preço do produto pela quantidade*/
DELIMITER $$
CREATE TRIGGER subtotalTrigger
BEFORE INSERT ON pedidosProdutos
FOR EACH ROW
BEGIN
  DECLARE produtoPreco DECIMAL(10, 2);

  -- Busca o preço do produto na tabela produtos
  SELECT preco INTO produtoPreco
  FROM produtos
  WHERE id = NEW.idProduto;

  -- Calcula o subtotal
  SET NEW.subtotal = produtoPreco * NEW.quantidade;
END $$
DELIMITER ;
