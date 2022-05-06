create database dbdemo;

use dbdemo;

DROP TABLE produtos;
DROP TABLE registro_compras;

-- Tabela Produtos
CREATE TABLE produtos (
    id int not null PRIMARY KEY auto_increment,
    nome varchar(35) not null,
    preco double not null,
    quantidade int not null,
    url_imagem varchar(200) not null
);

-- Tabela Compras
CREATE TABLE registro_compras (
    id int not null PRIMARY KEY auto_increment,
    nome varchar(30) not null
);

select * from produtos;

INSERT INTO produtos (nome, preco, quantidade, url_imagem) VALUES ("Batata Pringles Churrasco 120g", "12.92", "99", "https://imgs.extra.com.br/1505927039/1xg.jpg"); 

DELETE FROM produtos WHERE id="1";