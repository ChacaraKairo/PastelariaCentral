CREATE TABLE IF NOT EXISTS mesas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  localizacao VARCHAR(255) NOT NULL,
  qtdDeLugares INT NOT NULL,
  disponibilidade BOOLEAN NOT NULL DEFAULT TRUE
 -- Nome corrigido para "disponibilidade"
);
