CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(50),
    estoque INT
);
INSERT INTO produtos (nome, descricao, preco, categoria, estoque) VALUES
('Violão Yamaha', 'Violão acústico de 6 cordas', 899.90, 'Instrumentos de Corda', 10),
('Teclado Casio', 'Teclado com 61 teclas', 1200.00, 'Teclados', 5),
('Guitarra Fender', 'Guitarra elétrica preta', 2499.99, 'Instrumentos de Corda', 3),
('Bateria Eletrônica', 'Kit compacto para iniciantes', 1850.00, 'Percussão', 2),
('Cabo P10', 'Cabo para instrumentos de 3 metros', 49.90, 'Acessórios', 30),
('Palheta Dunlop', 'Palheta média 1.0mm', 3.50, 'Acessórios', 100),
('Fone de Ouvido AKG', 'Fone profissional de estúdio', 499.00, 'Acessórios', 15),
('Microfone Shure', 'Microfone condensador para voz', 999.99, 'Áudio', 7);

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 950.00 WHERE nome = 'Microfone Shure';
