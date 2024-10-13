/*Esta trigger calcula o valor total de um pedido
baseado na soma de todos os itens referentes a um pedido na tabela pedidosProdutos e é acionado quanto o subtotal sofre um update*/
DELIMITER $$
CREATE TRIGGER somaPedido AFTER UPDATE ON pedidosProdutos
FOR EACH ROW
BEGIN
  UPDATE pedidos 
  SET valorTotal = (SELECT SUM(subtotal) FROM pedidosProdutos WHERE idPedido = NEW.idPedido)
  WHERE id = NEW.idPedido;
END $$
DELIMITER ;
