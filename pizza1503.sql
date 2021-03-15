CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    tipo varchar ( 200 ) not null ,
    disponivel varchar ( 200 ) not null ,
    primary key (id)
);

INSERT INTO tb_categoria (tipo, disponivel) values ("vegana", true);
INSERT INTO tb_categoria (tipo, disponivel) values ("vegetariana", true);
INSERT INTO tb_categoria (tipo, disponivel) values ("doce", true);
INSERT INTO tb_categoria (tipo, disponivel) values ("salgada", true);
INSERT INTO tb_categoria (tipo, disponivel) values ("suprema", true);

CREATE TABLE tb_pizza(
	id bigint auto_increment,
    nome varchar ( 50 ) not null ,
    preco float not null ,
    tamanho varchar ( 20 ) not null ,
    categoria_id bigint ,
    primary key (id),
    foreign KEY (categoria_id) references tb_categoria 
);

INSERT INTO tb_pizza (nome, preco, tamanho, categoria_id) values ( " Brocolis " , 29.00 , " grande " , 1 );
INSERT INTO tb_pizza (nome, preco, tamanho, categoria_id) values ( " Milho " , 29.00 , " grande " , 1 );
INSERT INTO tb_pizza (nome, preco, tamanho, categoria_id) values ( " Alho " , 29.00 , " grande " , 1 );
INSERT INTO tb_pizza (nome, preco, tamanho, categoria_id) values ( " Mussarela " , 29.00 , " grande " , 1 );
INSERT INTO tb_pizza (nome, preco, tamanho, categoria_id) values ( " Sardinha " , 29.00 , " grande " , 1 );
INSERT INTO tb_pizza (nome, preco, tamanho, categoria_id) values ( " Frango " , 29.00 , " grande " , 1 );

select  *  from tb_categoria;
select  *  from tb_pizza;

select  *  from tb_pizza where preco > 50.00 ;
select  *  from tb_pizza where preco > 20.00  & preco < 70.00 ;
select  *  from tb_pizza where nome like  ' % C% ' ;
select  *  from tb_pizza inner join tb_categoria on  tb_categoria . id  =  tb_pizza . categoria_id ;
select  *  from tb_categoria inner join tb_pizza on  tb_categoria . id  =  tb_pizza . categoria_id  where categoria_id =  1