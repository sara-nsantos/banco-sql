-- Sara Letícia Nascimento dos Santos - RA: 01241034 

-- EXERCÍCIO 1
-- No MySQL Workbench, utilizando o banco de dados ‘sprint1’:

create database sprint1;

use sprint1;

-- Criar a tabela chamada Atleta para conter os dados: idAtleta (int e chave primária da 
-- tabela), nome (varchar, tamanho 40), modalidade (varchar, tamanho 40), qtdMedalha 
-- (int, representando a quantidade de medalhas que o atleta possui)
CREATE TABLE atleta (
    idAtleta INT PRIMARY KEY,
    nome VARCHAR(40),
    modalidade VARCHAR(40),
    qtdMedalha INT
);

-- Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade
insert into atleta(idAtleta, nome, modalidade, qtdMedalha) 
values (1, 'GIOVANNA', 'volei', 1); 

insert into atleta(idAtleta, nome, modalidade, qtdMedalha) 
values (2, 'ISABELA', 'Volei', 1); 

insert into atleta(idAtleta, nome, modalidade, qtdMedalha) 
values (3, 'GUILHERME', 'Natação', 2),
       (4, 'PAULO', 'Basquete', 1),
       (5, 'LUCAS', 'Basquete', 3),
       (6, 'GUSTAVO', 'Basquete', 0),
       (7, 'BIANCA', 'Volei de Praia', 1),
       (8, 'ANA', 'Volei de Praia', 1),
       (9, 'AMANDA', 'Volei', 2),
       (10, 'PEDRO', 'Futebol', 0);

-- Exibir todos os dados da tabela.
select * from atleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
select nome, qtdMedalha from atleta;

-- Exibir apenas os dados dos atletas de uma determinada modalidade.
select * from atleta where modalidade = 'volei';

-- Exibir os dados da tabela ordenados pela modalidade.
select * from atleta order by  modalidade;

-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
select * from atleta order by  qtdMedalha desc;

-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
select * from atleta where nome like '%s%';

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
select * from atleta where nome like 'a%';

-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
select * from atleta where nome like '%a';

-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
select * from atleta where nome like '%r_';

-- Eliminar a tabela.
drop table atleta;


-- ______________________________________________________________________________________________________________________
-- EXERCÍCIO 2
-- Criar a tabela chamada Musica para conter os dados: idMusica,
-- titulo (tamanho 40), artista (tamanho 40), genero (tamanho 40), 
-- sendo que idMusica é a chave primária da tabela. 

use sprint1;

create table musica(
  idMusica INT PRIMARY KEY,
  titulo   VARCHAR(40),
  artista  VARCHAR(40),
  genero   VARCHAR(40)
);

-- Inserir dados na tabela, procurando colocar um gênero de música que 
-- tenha mais de uma música, e um artista, que tenha mais de uma música
-- cadastrada. Procure inserir pelo menos umas 7 músicas.

use sprint1;

insert into musica(idMusica, titulo, artista, genero) 
values (1, 'COZY', 'Beyonce', 'Pop'),
       (2, 'ENERGY', 'Beyonce', 'Pop'),
       (3, 'OVER', 'Drake', 'Rap'),
       (4, 'IDGAF', 'Drake', 'Rap'),
       (5, 'SOMETHING', 'Dayglow', 'Indie'),
       (6, 'BALCONY', 'Dayglow', 'Indie'),
       (7, 'SOS', 'SZA', 'R&B'),
       (8, 'LOW', 'SZA', 'R&B');

-- Exibir todos os dados da tabela.
select * from musica;

-- Exibir apenas os títulos e os artistas das músicas.
select titulo, artista from musica;

-- Exibir apenas os dados das músicas de um determinado gênero.
select * from musica where genero = 'Pop'; 

-- Exibir apenas os dados das músicas de um determinado artista.
Select * from musica where artista = 'Dayglow';

-- Exibir os dados da tabela ordenados pelo título da música.
select * from musica order by titulo;

-- Exibir os dados da tabela ordenados pelo artista em ordem decrescente. 
select * from musica order by artista desc;

-- Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
select * from musica where titulo like 's%';

-- Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra. 
select * from musica where artista like '%e'; 

-- Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra. 
select * from musica where genero like '_a%';

-- Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra. 
select * from musica where titulo like '%n_';

-- Elimine a tabela.
drop table musica;


-- __________________________________________________________________________________________________________________________
-- EXERCÍCIO 3
-- Criar a tabela chamada Filme para conter os dados: idFilme, 
-- título (tamanho 50), genero (tamanho 40), diretor (tamanho 40), 
-- sendo que idFilme é a chave primária da tabela.

use sprint1;

 create table filme(
idFilme  INT PRIMARY KEY,
titulo   VARCHAR(50),
genero   VARCHAR(40),
diretor  VARCHAR(40)
);

-- Inserir dados na tabela, procurando colocar um gênero de filme que tenha
-- mais de um filme, e um diretor, que tenha mais de um filme cadastrado.
-- Procure inserir pelo menos uns 7 filmes.
insert into filme(idFilme, titulo, genero, diretor) 
values (1, 'Duna', 'Ficcao cientifica', 'Denis Villeneuve'),
       (2, 'A chegada', 'Ficcao cientifica', 'Denis Villeneuve'),
       (3, 'O irlandes', 'Crime', 'Martin Scorsese'),
       (4, 'Os infiltrados', 'Crime', 'Martin Scorsese'),
       (5, 'Os excentricos Tenenbaums', 'Comedia', 'Wes Anderson'),
       (6, 'A cronica francesa', 'Comedia', 'Wes Anderson'),
       (7, 'Soul', 'Animacao', 'Pete Docter'),
       (8, 'Divertidamente', 'Animacao', 'Pete Docter');

-- Exibir apenas os títulos e os diretores dos filmes. 
select titulo, diretor from filme;

-- Exibir apenas os dados dos filmes de um determinado gênero. 
select * from filme where genero = 'Animacao'; 

-- Exibir apenas os dados dos filmes de um determinado diretor.
select * from filme where diretor = 'Wes Anderson'; 

-- Exibir os dados da tabela ordenados pelo título do filme. 
select * from filme order by titulo;

-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente. 
select * from filme order by diretor desc;

-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra. 
select * from filme where titulo like 'o%';

-- Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra. 
select * from filme where diretor like '%e';

-- Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra. 
select * from filme where genero like '_a%'; 

-- Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra. 
select * from filme where titulo like '%o_';

-- Elimine a tabela.
drop table filme;


-- _______________________________________________________________________________________________________________________________
-- EXERCÍCIO 4
-- Criar a tabela chamada Professor para conter os dados: idProfessor, 
-- nome (tamanho 50), especialidade (tamanho 40), dtNasc (date), 
-- sendo que idProfessor é a chave primária da tabela.

use sprint1;

create table professor(
 idProfessor   INT PRIMARY KEY,
nome           VARCHAR(50),
especialidade  VARCHAR(40),
dtNasc         date
);

-- Inserir dados na tabela, procurando colocar uma especialista para  
-- mais de um professor. Procure inserir pelo menos uns 6 professores.
insert into professor(idProfessor, nome, especialidade, dtNasc)
values(1, 'Brandao', 'Tecnologia da informacao', '1972-04-17'),
	  (2, 'Vera', 'Socioemocional', '1979-07-21'),
	  (3, 'Caio', 'Algoritimos', '1993-03-06'),
	  (4, 'Eduardo', 'Sistemas operacionais', '1986-06-18'),
      (5, 'Marise', 'Arquitetura computacional', '1973-07-28'),
      (6, 'Frizza', 'Pesquisa e inovacao', '1969-09-21');

-- Exibir todos os dados da tabela. 
select * from professor; 

-- Exibir apenas as especialidades dos professores.
select especialidade from professor; 

-- Exibir apenas os dados dos professores de uma determinada especialidade.
select * from professor where especialidade = 'pesquisa e inovacao'; 
 
-- Exibir os dados da tabela ordenados pelo nome do professor. 
select * from professor order by nome; 

-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente. 
select * from professor order by dtNasc desc; 

-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
select * from professor where nome like 'b%';

-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra. 
select * from professor where nome like '%o';

-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra. 
select * from professor where nome like '_a%';

-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra
select * from professor where nome like '%i_';

-- Elimine a tabela.
drop table professor;


-- ____________________________________________________________________________________________________________________________
-- EXERCÍCIO 5
-- Criar a tabela chamada Curso para conter os dados: idCurso,
-- nome (tamanho 50), sigla(tamanho 3), coordenador, sendo 
-- que idCurso é a chave primária da tabela.

use sprint1;

create table curso(
idCurso      INT PRIMARY KEY,
nome         VARCHAR(50),
sigla        VARCHAR(3), 
coordenador  VARCHAR(40)
);

-- Inserir dados na tabela, procure inserir pelo menos 3 cursos.
insert into curso(idCurso, nome, sigla, coordenador)
values(1, 'Psicologia', 'PSI', 'Sarinda'),
      (2, 'Filosofia', 'FIL', 'Marineide'),
      (3, 'Arquitetura', 'ARQ', 'Rosnim'),
      (4, 'Fisica', 'FIS', 'Alexsander'),
      (5, 'Letras', 'LET', 'Josefina');
      
-- Exibir todos os dados da tabela. 
select * from curso; 

-- Exibir apenas os coordenadores dos cursos. 
select coordenador from curso; 

-- Exibir apenas os dados dos cursos de uma determinada sigla. 
select * from curso where sigla = 'FIL'; 

-- Exibir os dados da tabela ordenados pelo nome do curso. 
select * from curso order by nome; 

-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente. 
select * from curso order by coordenador desc; 

-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra. 
select * from curso where nome like 'f%'; 

-- g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra
select * from curso where nome like '%a';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra. 
select * from curso where nome like '_e%';  

-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
select * from curso where nome like '%i_'; 

-- Elimine a tabela
drop table curso;


-- ___________________________________________________________________________________________________________________________
-- EXERCÍCIO 6
-- Você vai criar uma tabela para armazenar os dados de revistas
-- (como por ex: Veja, Isto é, Epoca, Quatro Rodas, Claudia, etc).

use sprint1;

-- Criar a tabela chamada Revista para conter os campos: idRevista (int e chave primária 
-- da tabela), nome (varchar, tamanho 40), categoria (varchar, tamanho 30).
-- Os valores de idRevista devem iniciar com o valor 1 e ser incrementado 
-- automaticamente pelo sistema.

create table revista(
idRevista   INT auto_increment PRIMARY KEY,
nome        VARCHAR(40),
categoria   VARCHAR(30)
);

-- Inserir 4 registros na tabela, mas sem informar a categoria.
insert into revista(idRevista, nome, categoria) 
values('Forbes'),
      ('Vogue'),
      ('Times'),
      ('Caras');
      
-- Exibir todos os dados da tabela
select * from revista;

-- Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela
-- novamente para verificar se atualizou corretamente.
update revista set categoria = 'Noticias' where idRevista IN (1,2,3);

select * from revista;

-- Insira mais 3 registros completos.
insert into revista(idRevista, nome, categoria)
values ('Glamour', 'Moda'),
       ('Exame', 'Negocios'),
       ('Rolling Stone', 'Musica');

-- Exibir novamente os dados da tabela.
select * from revista;

-- Exibir a descrição da estrutura da tabela.
describe revista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
alter table revista modify column categoria varchar(40);

-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o
-- tamanho da coluna categoria
describe revista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).
alter table revista add column periodicidade varchar(15);

-- Exibir os dados da tabela.
select * from revista;

-- Excluir a coluna periodicidade da tabela
alter table revista drop column periodicidade;

-- EXCLUIR O BANCO DE DADOS SPRINT1
drop database sprint1;