/*Esta trigger bloqueia a alteração da situação da comanda para TRUE se for definida como FALSE*/
DELIMITER $$
CREATE TRIGGER bloqueiaSituacaoComanda BEFORE UPDATE ON comandas
FOR EACH ROW
BEGIN
  IF OLD.situacao = FALSE AND NEW.situacao = TRUE THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A situação não pode ser alterada para TRUE após ser definida como FALSE.';
  END IF;
END $$
DELIMITER ;
