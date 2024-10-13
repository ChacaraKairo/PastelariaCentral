/*Esta trigger atualiza o valor total da comanda
recebendo a soma total de pedidos referentes aquela comanda*/

DELIMITER $$
CREATE TRIGGER atualizaTotalComanda AFTER INSERT ON pedidos
FOR EACH ROW
BEGIN
  UPDATE comandas
  SET valorTotal = (SELECT SUM(valorTotal) FROM pedidos WHERE idComanda = NEW.idComanda)
  WHERE id = NEW.idComanda;  -- Verifique se o nome da coluna está correto
END $$
DELIMITER ;
/*Atualiza o total da comanda ao deletar um pedido*/
DELIMITER $$
CREATE TRIGGER atualizaTotalComandaAoRemover AFTER DELETE ON pedidos
FOR EACH ROW
BEGIN
  UPDATE comandas
  SET valorTotal = (SELECT SUM(valorTotal) FROM pedidos WHERE idComanda = OLD.idComanda)
  WHERE id = OLD.idComanda;
END $$
DELIMITER ;

/*Atualiza o saldo da comanda ao atualizar o pedido*/
DELIMITER $$
CREATE TRIGGER atualizaTotalComandaAoAtualizarPedido AFTER UPDATE ON pedidos
FOR EACH ROW
BEGIN
  UPDATE comandas
  SET valorTotal = (SELECT SUM(valorTotal) FROM pedidos WHERE idComanda = NEW.idComanda)
  WHERE id = NEW.idComanda;
END $$
DELIMITER ;
