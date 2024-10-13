CREATE TABLE IF NOT EXISTS pedidos (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idFuncionario CHAR(11) NOT NULL,
  idComanda INT NOT NULL,
  `data` DATETIME NOT NULL,
  valorTotal DECIMAL(10, 2) DEFAULT NULL,  -- Permitido valor nulo inicialmente
  observacoes TEXT DEFAULT NULL,  -- Permitido nulo para observações opcionais
  FOREIGN KEY (idFuncionario) REFERENCES funcionarios(id),
  FOREIGN KEY (idComanda) REFERENCES comandas(id)
);

CREATE TABLE IF NOT EXISTS pedidosProdutos (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idPedido INT NOT NULL,
  idProduto INT NOT NULL,
  quantidade INT NOT NULL,
  subtotal DECIMAL(10, 2) NOT NULL,
  cozinha BOOLEAN NOT NULL,  -- Controle de envio à cozinha
  FOREIGN KEY (idPedido) REFERENCES pedidos(id),
  FOREIGN KEY (idProduto) REFERENCES produtos(id)
);
