CREATE DATABASE IF NOT EXISTS db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(100) NOT NULL
);

CREATE TABLE tb_cursos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(70) NOT NULL,
  duracao_horas INT NOT NULL,
  preco DECIMAL(8,2) NOT NULL,
  instrutor VARCHAR(50) NOT NULL,
  categoria_id INT NOT NULL,
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias VALUES
(NULL,'Programação','Cursos sobre linguagens e desenvolvimento'),
(NULL,'Design','Cursos de design gráfico e UI/UX'),
(NULL,'Marketing','Cursos de marketing digital'),
(NULL,'Segurança','Cursos de segurança da informação'),
(NULL,'Java','Cursos específicos de Java');

INSERT INTO tb_cursos VALUES
(NULL,'Java Básico',40,550,'Carlos Silva',5),
(NULL,'React para Iniciantes',30,600,'Ana Paula',1),
(NULL,'Photoshop Avançado',25,700,'Marcos Lima',2),
(NULL,'Marketing Digital',35,800,'Beatriz Souza',3),
(NULL,'Segurança Cibernética',45,900,'João Pedro',4),
(NULL,'Java Avançado',50,950,'Carlos Silva',5),
(NULL,'UX/UI Design',20,450,'Maria Clara',2),
(NULL,'Node.js Completo',40,650,'Felipe Santos',1);

SELECT * FROM tb_cursos WHERE preco > 500;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT c.nome, c.preco, cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.categoria_id = cat.id;

SELECT c.nome, c.preco, cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.categoria_id = cat.id
WHERE cat.nome = 'Java';
