CREATE TABLE IF NOT EXISTS pagamentos (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idComanda INT NOT NULL,
  valor DECIMAL(10, 2) NOT NULL,
  `data` DATETIME NOT NULL,
  metodoPagamento ENUM('Dinheiro', 'Cartão Crédito', 'Cartão Debito', 'Pix') NOT NULL,  -- Corrigido uso do ENUM
  FOREIGN KEY (idComanda) REFERENCES comandas(id)  -- Referência corrigida para a chave primária de comandas
);
