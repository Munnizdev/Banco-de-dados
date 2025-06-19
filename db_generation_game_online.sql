CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  descricao VARCHAR(100)
);

CREATE TABLE tb_personagens (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  nivel INT,
  poder_ataque INT,
  poder_defesa INT,
  classe_id INT,
  FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo'),
('Mago', 'Usuário de magias poderosas'),
('Arqueiro', 'Atirador de longa distância'),
('Assassino', 'Especialista em ataques rápidos'),
('Tanque', 'Alta defesa e resistência');

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
('Thor', 30, 2500, 1500, 1),
('Merlin', 25, 3000, 1000, 2),
('Legolas', 28, 2200, 1200, 3),
('Ezio', 27, 1800, 1100, 4),
('Hulk', 35, 2600, 2000, 5),
('Diana', 20, 1900, 1300, 3),
('Gandalf', 40, 3200, 1400, 2),
('Kratos', 33, 2800, 1800, 1);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%' OR nome LIKE '%c%';
SELECT p.id, p.nome, c.nome FROM tb_personagens p INNER JOIN tb_classes c ON p.classe_id = c.id;
SELECT p.id, p.nome, c.nome FROM tb_personagens p INNER JOIN tb_classes c ON p.classe_id = c.id WHERE c.nome = 'Arqueiro';
