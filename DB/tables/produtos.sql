-- Tabela de produtos
-- Herança de produtos
CREATE TABLE IF NOT EXISTS produtos (
  id int PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL,
  urlImagem VARCHAR(255) NOT NULL,
  idCategoria int NOT NULL REFERENCES categorias(id)
);

CREATE TABLE IF NOT EXISTS salgados (
  idSalgado int PRIMARY KEY REFERENCES produtos(id),
  recheio VARCHAR(255) NOT NULL  -- Removida vírgula extra
);

CREATE TABLE IF NOT EXISTS pasteis (
  id int PRIMARY KEY REFERENCES salgados(idSalgado),
  tamanho VARCHAR(255) NOT NULL  -- Removida vírgula extra
);

CREATE TABLE IF NOT EXISTS revendas (
  id int PRIMARY KEY REFERENCES produtos(id),
  idFornecedor int NOT NULL REFERENCES fornecedores(id),
  codigoBarras VARCHAR(255) NOT NULL
)