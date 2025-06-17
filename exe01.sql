CREATE DATABASE IF NOT EXISTS sistema_rh;
USE sistema_rh;

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    funcao VARCHAR(60) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    setor VARCHAR(50),
    data_contratacao DATE
);

INSERT INTO colaboradores (nome_completo, funcao, salario, setor, data_contratacao) VALUES
('Marcos Silva', 'Coordenador de RH', 5100.00, 'RH', '2021-07-10'),
('Bruna Ferreira', 'Recepcionista', 1700.00, 'Atendimento', '2022-09-05'),
('Ricardo Almeida', 'Analista de Dados', 3800.00, 'TI', '2023-02-01'),
('Juliana Castro', 'Auxiliar Financeiro', 1900.00, 'Financeiro', '2024-01-15'),
('Eduardo Lima', 'Técnico de Suporte', 2400.00, 'TI', '2023-06-20');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores
SET salario = 2000.00
WHERE id = 4;
