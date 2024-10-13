-- Database baseado no MySQL
-- Herança de usuários
CREATE TABLE IF NOT EXISTS users (
  id CHAR(11) PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  telefone CHAR(11) NOT NULL,
  cep CHAR(9) NOT NULL,
  estado CHAR(2) NOT NULL,
  cidade VARCHAR(255) NOT NULL,
  bairro VARCHAR(255) NOT NULL,
  rua VARCHAR(255) NOT NULL,
  numero SMALLINT NOT NULL  -- Alterado de TINYINT para SMALLINT
);

CREATE TABLE IF NOT EXISTS funcionarios (
  id CHAR(11) PRIMARY KEY REFERENCES users(id),
  cpf CHAR(11) NOT NULL UNIQUE,
  cargo VARCHAR(255) NOT NULL,
  setor VARCHAR(255) NOT NULL,
  dataAdmissao DATE NOT NULL,
  dataDemissao DATE,
  salario DECIMAL(10, 2) DEFAULT 0.00, -- Valor padrão de salário
  senha VARCHAR(255) -- Lembrar de utilizar hashing
);

CREATE TABLE IF NOT EXISTS administrativos (
  idAdministrador CHAR(11) PRIMARY KEY REFERENCES funcionarios(id), -- Corrigido
  chaveAcesso CHAR(11)
);

CREATE TABLE IF NOT EXISTS fornecedores (
  idEmpresa CHAR(11) PRIMARY KEY REFERENCES users(id),
  cnpj CHAR(14) NOT NULL UNIQUE,
  razaoSocial VARCHAR(255) NOT NULL,
  representante VARCHAR(255) NOT NULL -- Removida vírgula extra
);
