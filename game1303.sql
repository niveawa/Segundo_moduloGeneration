CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (
id_classe VARCHAR ( 200 ),
habilidade VARCHAR ( 200 ),
poder INT,
PRIMARY KEY (id_classe)
);

INSERT INTO tb_classe (id_classe, habilidade, poder) VALUES ("bruxa", "criar esqueletos", "2025");
INSERT INTO tb_classe (id_classe, habilidade, poder) VALUES ("druida", "se conectar com a natureza", "1235");
INSERT INTO tb_classe (id_classe, habilidade, poder) VALUES ("fada", "magia", "2000");
INSERT INTO tb_classe (id_classe, habilidade, poder) VALUES ("mago", "invoca fogo", "2268");
INSERT INTO tb_classe (id_classe, habilidade, poder) VALUES ("goblin", "fala com os animais", "2647");

CREATE TABLE tb_personagem (
id INT AUTO_INCREMENT,
nome VARCHAR (200),
defesa INT,
ataque INT,
alcanse INT,
classse VARCHAR(200),

PRIMARY KEY (id)
FOREIGN KEY(classe) references tb_classe (id_classe),
);

INSERT INTO tb_personagem (nome, defesa, ataque, alcanse, classe) VALUES("Leina",5000,2225,3679,"bruxa");
INSERT INTO tb_personagem (nome, defesa, ataque, alcanse, classe) VALUES("Narita",3000,6514,753,"druida");
INSERT INTO tb_personagem (nome, defesa, ataque, alcanse, classe) VALUES("Joe",4000,1987,3890,"mago");
INSERT INTO tb_personagem (nome, defesa, ataque, alcanse, classe) VALUES("Ogata",1000,2266,2999,"mago");
INSERT INTO tb_personagem (nome, defesa, ataque, alcanse, classe) VALUES("Tiemi",3000,2569,4079,"fada");
INSERT INTO tb_personagem (nome, defesa, ataque, alcanse, classe) VALUES("Shogun",5000,999,2067,"globin");

SELECT  * FROM tb_personagem;
SELECT  * FROM tb_personagem WHERE ataque > 2000 ;
SELECT  * FROM tb_personagem WHERE defesa > 1000  & defesa < 2000 ;
SELECT  * FROM tb_personagem WHERE nome LIKE  " % c% " ;
SELECT  * FROM tb_personagem 
INNER JOIN tb_classe on  tb_classe . id_classe  =  tb_personagem . classe ;
SELECT  * FROM tb_personagem 
INNER JOIN tb_classe on tb_classe . id_classe  =  tb_personagem . classe 


