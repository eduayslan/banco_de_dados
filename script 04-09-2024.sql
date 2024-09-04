create database redesocial;
use redesocial;
create table usuario(
id int not null primary key auto_increment,
nome varchar(100) not null,
email varchar (100) not null unique,
data_de_criacao int,
senha varchar(45) not null
);

create table postagem(
id int primary key not null auto_increment,
texto varchar(100),
data_criacao int not null,
imagem varchar(100),
usuario_id int not null
);

create table comentario(
id int primary key not null auto_increment,
texto varchar(255),
usuario_id int not null,
postagem_idpostagem int not null
);


create table curtida_postagem(
usuario_id int not null,
postagem_idpostagem int not null,
primary key (usuario_id, postagem_idpostagem),
foreign key (usuario_id) references usuario (id),
foreign key (postagem_idpostagem) references postagem (id) 
);

select * from usuario;

insert into usuario (nome, email, data_de_criacao, senha)
values ('jeferson', 'jeffboa@cria.rj', '12/02/2010', '1632323');

insert into usuario (nome, email, data_de_criacao, senha)
values ('enrico', 'enrico@leao.anglo', '17/12/2014', '1634343603');

insert into usuario (nome, email, data_de_criacao, senha)
values ('beatrix', 'biaia@coin.rj', '02/06/2011', '109301231');

insert into usuario (nome, email, data_de_criacao, senha)
values ('ana clara', 'ana@gallo.bh', '22/02/2016', '667778786');

insert into usuario (nome, email, data_de_criacao, senha)
values ('joao gabriel', 'joaogbr@boiy.pr', '19/07/2015', '1092645452');