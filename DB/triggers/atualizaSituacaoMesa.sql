/*Este gatilho faz com que a disponibilidade de uma mesa seja alterada quando uma comanda for fechada*/
DELIMITER $$
CREATE TRIGGER atualizaDisponibilidadeMesa AFTER UPDATE ON comandas
FOR EACH ROW
BEGIN
  IF OLD.situacao = TRUE AND NEW.situacao = FALSE THEN
    UPDATE mesas
    SET disponibilidade = TRUE
    WHERE id = NEW.idMesa;
  END IF;
END $$
DELIMITER ;

/*Esta trigger faz ccom que a disponibilidade da mesa passe para false quando uma comanda abrir sendo refertenciada na mesa em questao*/

DELIMITER $$
CREATE TRIGGER atualizaDisponibilidadeMesa2 AFTER INSERT ON comandas
FOR EACH ROW
BEGIN
  UPDATE mesas
  SET disponibilidade = FALSE
  WHERE id = NEW.idMesa;
END $$
DELIMITER ;
