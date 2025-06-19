CREATE DATABASE IF NOT EXISTS db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(100) NOT NULL
);

CREATE TABLE tb_pizzas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  ingredientes VARCHAR(200) NOT NULL,
  preco DECIMAL(6,2) NOT NULL,
  tamanho VARCHAR(20) NOT NULL,
  categoria_id INT NOT NULL,
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgada', 'Pizzas com ingredientes salgados'),
('Doce', 'Pizzas com sabores doces'),
('Vegana', 'Pizzas sem ingredientes animais'),
('Especial', 'Pizzas com ingredientes especiais'),
('Tradicional', 'Pizzas clássicas da casa');

INSERT INTO tb_pizzas (nome, ingredientes, preco, tamanho, categoria_id) VALUES
('Margherita', 'Tomate, mussarela, manjericão', 40.00, 'Média', 5),
('Calabresa', 'Calabresa, cebola, mussarela', 50.00, 'Grande', 1),
('Chocolate', 'Chocolate ao leite, morango', 55.00, 'Pequena', 2),
('Portuguesa', 'Presunto, ovo, cebola, ervilha', 60.00, 'Grande', 1),
('Frango com Catupiry', 'Frango desfiado, catupiry', 48.00, 'Média', 4),
('Palmito Vegano', 'Palmito, tomate, azeitona', 45.00, 'Média', 3),
('Romeu e Julieta', 'Queijo e goiabada', 47.00, 'Pequena', 2),
('Quatro Queijos', 'Mussarela, provolone, gorgonzola, parmesão', 70.00, 'Grande', 5);

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT p.nome, p.preco, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, p.preco, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Doce';
