create database biblioteca1; 

use biblioteca1;
create table Autores (
id_autor int primary key auto_increment,
nome varchar(100) not null,
nacionalidacre varchar(50) 
);

create table Livos (
id_livros int primary key auto_increment,
titulo varchar(100) not null,
ano_publicacao int,
genero varchar(50),
id_autor int,
foreign key (id_autor) references Autores (id_autor)
);

insert into Autores (nome, nacionalidacre) values
('Machado de Assis', 'brasileiro'), 
('Carlos Drummond de Andrade', 'Brasileiro'),
('Aghata Christie', 'Britânica'), 
('William Shakespeare', 'Inglês'),
('George Orwell', 'Britânico');

select * from Autores;

alter table Autores
add unique (nome);

insert into Livros
(titulo, ano_publicacao, genero, id_autor) values
('com Casmurro', '1899', 'Romance', 1),
('Sentimento do Mundo', '1940', 'Poesia', 2),
('E Nao Sobrou Nenhum', '1939', 'Crime', 3),
('Romeu e Julieta', '1597', 'Tragédia Romântica', 4),
('A Revolução dos Bichos', '1945', 'Fábula Política', 5);

select * from Livros

select * from Autores where nacionalidacre = 'brasileiro'