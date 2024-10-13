-- Inserir dados na tabela users
INSERT INTO users (id, nome, email, telefone, cep, estado, cidade, bairro, rua, numero) VALUES
('12345678901', 'João Silva', 'joao.silva@email.com', '11987654321', '01234567', 'SP', 'São Paulo', 'Centro', 'Rua A', 100),
('12345678902', 'Maria Oliveira', 'maria.oliveira@email.com', '11976543210', '07654321', 'SP', 'São Paulo', 'Jardins', 'Rua B', 200),
('12345678903', 'Carlos Pereira', 'carlos.pereira@email.com', '11965432109', '09876543', 'RJ', 'Rio de Janeiro', 'Copacabana', 'Rua C', 300);

-- Inserir dados na tabela funcionarios
INSERT INTO funcionarios (id, cpf, cargo, setor, dataAdmissao, dataDemissao, salario, senha) VALUES
('12345678901', '12345678901', 'Gerente', 'Administração', '2023-01-10', NULL, 5000.00, 'senhaHash1'),
('12345678902', '23456789012', 'Caixa', 'Financeiro', '2023-03-15', NULL, 2500.00, 'senhaHash2'),
('12345678903', '34567890123', 'Atendente', 'Vendas', '2023-05-20', NULL, 2000.00, 'senhaHash3');

-- Inserir dados na tabela administrativos
INSERT INTO administrativos (idAdministrador, chaveAcesso) VALUES
('12345678901', 'chave123'),
('12345678902', 'chave456');

-- Inserir dados na tabela fornecedores
INSERT INTO fornecedores (idEmpresa, cnpj, razaoSocial, representante) VALUES
('12345678904', '12345678000195', 'Fornecedor A', 'Fernando Santos'),
('12345678905', '23456789000196', 'Fornecedor B', 'Lucia Almeida'),
('12345678906', '34567890000197', 'Fornecedor C', 'Ricardo Lima');
-- Inserir dados adicionais na tabela users
INSERT INTO users (id, nome, email, telefone, cep, estado, cidade, bairro, rua, numero) VALUES
('12345678907', 'Ana Costa', 'ana.costa@email.com', '11954321678', '01598765', 'SP', 'São Paulo', 'Vila Mariana', 'Rua D', 400),
('12345678908', 'Pedro Martins', 'pedro.martins@email.com', '11943210987', '02098765', 'SP', 'São Paulo', 'Bela Vista', 'Rua E', 500),
('12345678909', 'Juliana Santos', 'juliana.santos@email.com', '11932109876', '03098765', 'RJ', 'Rio de Janeiro', 'Botafogo', 'Rua F', 600);

-- Inserir dados adicionais na tabela funcionarios
INSERT INTO funcionarios (id, cpf, cargo, setor, dataAdmissao, dataDemissao, salario, senha) VALUES
('12345678904', '45678901234', 'Gerente de Vendas', 'Vendas', '2023-06-01', NULL, 6000.00, 'senhaHash4'),
('12345678905', '56789012345', 'Auxiliar de Cozinha', 'Cozinha', '2023-07-15', NULL, 1800.00, 'senhaHash5'),
('12345678906', '67890123456', 'Supervisor', 'Administração', '2023-08-20', NULL, 4500.00, 'senhaHash6');

-- Inserir dados adicionais na tabela administrativos
INSERT INTO administrativos (idAdministrador, chaveAcesso) VALUES
('12345678903', 'chave789'),
('12345678904', 'chave012');

-- Inserir dados adicionais na tabela fornecedores
INSERT INTO fornecedores (idEmpresa, cnpj, razaoSocial, representante) VALUES
('12345678907', '45678912000198', 'Fornecedor D', 'Mariana Rocha'),
('12345678908', '56789013000199', 'Fornecedor E', 'Luiz Fernando'),
('12345678909', '67890124000200', 'Fornecedor F', 'Fernanda Lima');
