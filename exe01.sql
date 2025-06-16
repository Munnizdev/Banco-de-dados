CREATE DATABASE rh_empresa;
USE rh_empresa;

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    departamento VARCHAR(50),
    data_admissao DATE
);

INSERT INTO colaboradores (nome, cargo, salario, departamento, data_admissao) VALUES
('Ana Souza', 'Analista de RH', 3200.00, 'Recursos Humanos', '2021-03-15'),
('Carlos Lima', 'Assistente Administrativo', 1800.00, 'Administrativo', '2022-06-01'),
('Fernanda Costa', 'Desenvolvedora', 4500.00, 'Tecnologia', '2023-01-20'),
('João Silva', 'Estagiário', 1200.00, 'Marketing', '2024-02-10'),
('Mariana Oliveira', 'Gerente de Projetos', 6000.00, 'Tecnologia', '2020-08-05');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 2100.00 WHERE nome = 'Carlos Lima';
