-- Categorias de produtos
CREATE TABLE IF NOT EXISTS categorias (
  id int PRIMARY KEY,
  nome VARCHAR(255) NOT NULL UNIQUE  -- Evita categorias duplicadas
);
