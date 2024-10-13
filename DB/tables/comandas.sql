CREATE TABLE IF NOT EXISTS comandas (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  idMesa INT NOT NULL,
  idFuncionario CHAR(11) NOT NULL,
  dataAbertura DATETIME NOT NULL,
  dataFechamento DATETIME,
  situacao BOOLEAN NOT NULL DEFAULT TRUE,  -- Renomeado para evitar conflito com palavra reservada
  valorTotal DECIMAL(10, 2) NOT NULL DEFAULT 0.00,  -- Adicionado valor padrão
  FOREIGN KEY (idFuncionario) REFERENCES funcionarios(id),
  FOREIGN KEY (idMesa) REFERENCES mesas(id)
);
