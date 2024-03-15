-- Sara Letícia Nascimento dos Santos - RA: 01241034 

create database sprint1;

--  EXERCÍCIO 01----------------------------------------------------------------

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

-- Inserir dados na tabela, procurando colocar mais de um atleta para
-- cada modalidade e pelo menos 5 atletas.
insert into atleta(idAtleta, nome, modalidade, qtdMedalha) 
values (1, 'GUILHERME', 'Natação', 2),
       (2, 'ISABELA', 'Natação', 1),
       (3, 'PAULO', 'Basquete', 4),
       (4, 'LUCAS', 'Basquete', 3),
       (5, 'BIANCA', 'Volei de Praia', 1),
       (6, 'ANA', 'Volei de Praia', 1),
       (7, 'AMANDA', 'Futebol', 2),
       (8, 'PEDRO', 'Futebol', 0);

-- Exibir todos os dados da tabela.
select * from atleta;

-- Atualizar a quantidade de medalhas do atleta com id=1;
update atleta set qtdMedalha = "4" where idAtleta= 1;

-- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;
update atleta set qtdMedalha = "2" where idAtleta= 2;
update atleta set qtdMedalha = "3" where idAtleta = 3;

-- Atualizar o nome do atleta com o id=4;
update atleta set nome = "João" where idAtleta = 4;

-- Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;
alter table atleta add column dtNasc date;

-- Atualizar a data de nascimento de todos os atletas;
update atleta set dtNasc = "2004-09-21" where idAtleta = 1;
update atleta set dtNasc = "2006-02-19" where idAtleta = 2;
update atleta set dtNasc = "2002-02-01" where idAtleta = 3;
update atleta set dtNasc = "2004-04-18" where idAtleta = 4;
update atleta set dtNasc = "2000-05-29" where idAtleta = 5;
update atleta set dtNasc = "2003-06-29" where idAtleta = 6;
update atleta set dtNasc = "2008-01-31" where idAtleta = 7;
update atleta set dtNasc = "2004-10-24" where idAtleta = 10;

-- Excluir o atleta com o id=5;
delete from atleta where idAtleta = 5;

-- Exibir os atletas onde a modalidade é diferente de natação;
select * from atleta where modalidade != 'natacao'; 

-- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;
select * from atleta where qtdMedalha >= 3;

-- Modificar o campo modalidade do tamanho 40 para o tamanho 60;
alter table atleta modify column modalidade VARCHAR(60); 

-- Descrever os campos da tabela mostrando a atualização do campo modalidade;
desc atleta;

-- Limpar os dados da tabela; 
drop table atleta;


--  EXERCÍCIO 02----------------------------------------------------------------
use sprint1;

-- Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista
-- (tamanho 40), genero (tamanho 40), sendo que idMusica é a chave primária da tabela. 
create table musica(
  idMusica INT PRIMARY KEY,
  titulo   VARCHAR(40),
  artista  VARCHAR(40),
  genero   VARCHAR(40)
);

-- Inserir dados na tabela, procurando colocar um gênero de música que tenha mais de uma
-- música, e um artista, que tenha mais de uma música cadastrada.
-- Procure inserir pelo menos umas 7 músicas.
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

-- Adicionar o campo curtidas do tipo int na tabela;
alter table musica add column curtidas int;

-- Atualizar o campo curtidas de todas as músicas inseridas;
update musica set curtidas = "9000000" where idMusica = 1;
update musica set curtidas = "1050000" where idMusica = 2;
update musica set curtidas = "45000000" where idMusica = 3;
update musica set curtidas = "7500000" where idMusica = 4;
update musica set curtidas=  "700000" where idMusica = 5;
update musica set curtidas =  "28094000" where idMusica = 6;
update musica set curtidas = "7030000" where idMusica = 7; 
update musica set curtidas = "20800000" where idMusica = 8;

-- Modificar o campo artista do tamanho 40 para o tamanho 80;
alter table musica modify column artista varchar(80);

-- Atualizar a quantidade de curtidas da música com id=1;
update musica set curtidas = "15000000" where idMusica = 1;

-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;
update musica set curtidas = "2070000" where idMusica = 2;
update musica set curtidas = "80700000" where idMusica = 3;

-- Atualizar o nome da música com o id=5;
update musica set titulo = "Medicine" where idMusica = 5; 

-- Excluir a música com o id=4;
delete from musica where idMusica = 4;

-- Exibir as músicas onde o gênero é diferente de funk;
select * from musica where genero != "funk";

-- Exibir os dados das músicas que tem curtidas maior ou igual a 20;
select * from musica where curtidas >= 20;

-- Descrever os campos da tabela mostrando a atualização do campo artista;
desc musica;

-- Limpar os dados da tabela; 
drop table musica;


--  EXERCÍCIO 03----------------------------------------------------------------
use sprint1;

-- Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero
-- (tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.
 create table filme(
idFilme  INT PRIMARY KEY,
titulo   VARCHAR(50),
genero   VARCHAR(40),
diretor  VARCHAR(40)
);

-- Inserir dados na tabela, procurando colocar um gênero de filme que tenha mais de um
-- filme, e um diretor, que tenha mais de um filme cadastrado. 
-- Procure inserir pelo menos uns 7 filmes.
insert into filme(idFilme, titulo, genero, diretor) 
values (1, 'Duna', 'Ficção cientifica', 'Denis Villeneuve'),
       (2, 'A chegada', 'Ficção cientifica', 'Denis Villeneuve'),
       (3, 'O irlandês', 'Crime', 'Martin Scorsese'),
       (4, 'Os infiltrados', 'Crime', 'Martin Scorsese'),
       (5, 'Os excentricos Tenenbaums', 'Comédia', 'Wes Anderson'),
       (6, 'A crônica francesa', 'Comédia', 'Wes Anderson'),
       (7, 'Soul', 'Animação', 'Pete Docter'),
       (8, 'Divertidamente', 'Animação', 'Pete Docter');

-- Exibir todos os dados da tabela.
select * from filme;

-- Adicionar o campo protagonista do tipo varchar(50) na tabela;
alter table filme add column protagonista varchar(50);

-- Atualizar o campo protagonista de todas os filmes inseridos;
update filme set protagonista = "Paul Atraides" where idFilme = 1;
update filme set protagonista = "Dr. Louise Banks" where idFilme = 2;
update filme set protagonista = "Frank Sheeran" where idFilme = 3;
update filme set protagonista = "Billy Costigan" where idFilme = 4;
update filme set protagonista = "Margot Tenenbaums" where idFilme = 5;
update filme set protagonista = "Zeffirelli" where idFilme = 6;
update filme set protagonista = "Joe Gardner" where idFilme = 7;
update filme set protagonista = "Riley Andersen" where idFilme = 8;

-- Modificar o campo diretor do tamanho 40 para o tamanho 150;
alter table filme modify column diretor varchar(150);

-- Atualizar o diretor do filme com id=5;
update filme set diretor = "Garth Jennings" where idFilme = 5;

-- Atualizar o diretor dos filmes com id=2 e com o id=7;
update filme set diretor = "Christopher Nolan" where idFilme = 2;
update filme set diretor = "Brad Bird" where idFilme = 7;

-- Atualizar o título do filme com o id=6;
update filme set titulo = "Moonrise Kingdom" where idFilme = 6;

-- Excluir o filme com o id=3;
delete from filme where idFilme = 3;

-- Exibir os filmes em que o gênero é diferente de drama;
select * from filme where genero != "drama";

-- Exibir os dados dos filmes que o gênero é igual ‘suspense’;
select * from filme where genero = "suspense";

-- Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor;
desc filme;

-- Limpar os dados da tabela;
drop table filme;


--  EXERCÍCIO 04----------------------------------------------------------------
-- Criar a tabela chamada Professor para conter os dados: idProfessor, nome (tamanho 50),
-- especialidade (tamanho 40), dtNasc (date), sendo que 
-- idProfessor é a chave primária da tabela.
use sprint1;

create table professor(
idProfessor   INT PRIMARY KEY,
nome           VARCHAR(50),
especialidade  VARCHAR(40),
dtNasc         date
);

-- Inserir dados na tabela, procurando colocar uma especialista para mais de um professor.
-- Procure inserir pelo menos uns 6 professores.
insert into professor(idProfessor, nome, especialidade, dtNasc)
values(1, 'Brandão', 'Tecnologia da informação', '1972-04-17'),
	  (2, 'Vera', 'Socioemocional', '1979-07-21'),
	  (3, 'Caio', 'Algoritimos', '1993-03-06'),
	  (4, 'Eduardo', 'Sistemas operacionais', '1986-06-18'),
      (5, 'Marise', 'Arquitetura computacional', '1973-07-28'),
      (6, 'Frizza', 'Pesquisa e inovação', '1969-09-21');
      
-- Exibir todos os dados da tabela.
select * from professor;

-- Adicionar o campo funcao do tipo varchar(50), onde a função só pode 
-- ser ‘monitor’, ‘assistente’ ou ‘titular’;
alter table professor add column monitor varchar(50);

-- Atualizar os professores inseridos e suas respectivas funções;
 update professor set monitor = "Victor" where idProfessor = 3;

 -- Inserir um novo professor;
 insert into professor (idProfessor, nome, especialidade, dtNasc)
values (7, "Alexsander", 'Análise de Sistemas', '2001-04-24');

-- Excluir o professor onde o idProfessor é igual a 5;
delete from professor where idProfessor = 5;

-- Exibir apenas os nomes dos professores titulares;
select * from professor where nome = nome;

-- Exibir apenas as especialidades e as datas de nascimento dos professores monitores;
select especialidade, dtNasc from professor where especialidade = 'monitor';

-- Atualizar a data de nascimento do idProfessor igual a 3;
update professor set dtNasc = "1989-01-08" where idProfessor = 3;

-- Limpar a tabela Professor;
drop table professor;

--  EXERCÍCIO 05----------------------------------------------------------------
-- Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50), sigla
-- (tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.

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

-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
select * from curso where nome like '%a';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma
-- determinada letra.
select * from curso where nome like '_e%';  

-- exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma
-- determinada letra.
select * from curso where nome like '%i_'; 

-- Elimine a tabela.
drop table curso;

--  EXERCÍCIO 06----------------------------------------------------------------
-- Você vai criar uma tabela para armazenar os dados de revistas (como por ex: Veja, Isto é,
-- Epoca, Quatro Rodas, Claudia, etc).

use sprint1;

-- Criar a tabela chamada Revista para conter os campos: idRevista (int e chave
-- primária da tabela), nome (varchar, tamanho 40), categoria (varchar, tamanho 30). Os
-- valores de idRevista devem iniciar com o valor 1 e ser incrementado automaticamente
-- pelo sistema.
create table revista(
idRevista   INT auto_increment PRIMARY KEY,
nome        VARCHAR(40),
categoria   VARCHAR(30)
);

-- Inserir 4 registros na tabela, mas sem informar a categoria.
insert into revista(nome) 
values('Forbes'),
      ('Vogue'),
      ('Times'),
      ('Caras');
      
-- Exibir todos os dados da tabela.
select * from revista;

-- Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela
-- novamente para verificar se atualizou corretamente.
update revista set categoria = "Celebridades" where idRevista = 1;
update revista set categoria = "Moda" where idRevista = 2;
update revista set categoria = "Noticias" where idRevista = 3;
update revista set categoria = "Fofocas" where idRevista = 4;
select * from revista;

-- Insira mais 3 registros completos.
insert into revista(nome, categoria)
values ('Glamour', 'Moda'),
       ('Exame', 'Negocios'),
       ('Rolling Stone', 'Musica');
       
--  Exibir novamente os dados da tabela.
select * from revista;

-- Exibir a descrição da estrutura da tabela.
desc revista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
alter table revista modify column categoria varchar(40);

-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o
-- tamanho da coluna categoria
desc revista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).
alter table revista add column periodicidade varchar(15);

-- Exibir os dados da tabela.
select * from revista;

-- Excluir a coluna periodicidade da tabela.
alter table revista drop column periodicidade;

--  EXERCÍCIO 07----------------------------------------------------------------
--  Criar a tabela chamada Serie para conter os campos: idSerie (int e chave primária da
-- tabela), nome (varchar, tamanho 40), qtdTemporadas (int), status (varchar, tamanho
-- 40). Onde o status só pode ser em andamento, finalizada ou não assistida. Os valores
-- de idSerie devem iniciar com o valor 100 e ser incrementado automaticamente pelo
-- sistema.

use sprint1;

create table serie (
  idSerie int auto_increment,
  nome    varchar(40),
  qtdTemporadas int, 
  status   varchar(40),
  primary key (idSerie)
) auto_increment = 100 ;

-- Inserir 4 registros na tabela.
insert into serie (nome, qtdTemporadas, status)
values("Atlanta", "4", "Em andamento"),
	  ("Breaking bad", "5", "Finalizada"),
      ("Succession", "4", "Não assistida"),
      ("What if...?", "2", "Em andamento");

-- Exibir todos os dados da tabela.
select * from serie;

--  EXERCÍCIO 08----------------------------------------------------------------
-- Criar a tabela chamada Carro para conter os dados: idCarro int, nome (tamanho 70), placa
-- (tamanho 7), marca (tamanho 20), sendo que idCarro é a chave primária da tabela.

use sprint1;

create table carro (
  idCarro int primary key,
  nome   varchar(70),
  placa  varchar(7),
  marca  varchar(20)
);

-- Inserir dados na tabela, procurando colocar uma marca de carro que tenha mais de um
-- carro. Procure inserir pelo menor 5 carros.
insert into carro (idCarro, nome, placa, marca)
values(1, "HB20", "ABC1234", "Hyundai"),
	   (2, "Polo", "XYZ5678", "Volkswagen"),
       (3, "Civic", "DEF9012", "Honda"),
       (4, "Fiesta", "MNO3456", "Ford"),
       (5, "Altima", "GHI7890", "Nissan");

-- O campo marca (tamanho 20) está muito pequeno. É necessário aumentar o número de
-- caracteres para 40.
alter table carro modify column marca varchar(40);

-- Exibir todos os campos da tabela.
select * from carro;

-- Exibir apenas os nomes e as placas dos carros.
select nome, placa from carro;

-- Exibir apenas os dados dos carros de uma determinada marca.
select * from carro where marca = "Nissan";

-- Exibir os dados da tabela ordenados pela marca do carro.
select * from carro order by marca;

-- Exibir os dados da tabela ordenados pelo nome em ordem decrescente.
select * from carro order by nome desc;

-- Exibir os dados da tabela, dos carros cujo nome termine com uma determinada letra.
select * from carro where nome like '%a';

-- Exibir os dados da tabela, dos carros cujo marca comece com uma determinada letra.
select * from carro where nome like "%c";

-- Exibir os dados da tabela, dos carros cuja placa tenha como segunda letra uma
-- determinada letra.
select * from carro where placa like "_B%";

-- Exibir os dados da tabela, dos carros cujo nome tenha como penúltima letra uma
-- determinada letra.
select * from carro where nome like "%i_";

-- Atualize uma placa de algum carro. Exiba novamente os dados da tabela após ao
update carro set placa = "GJU7056" where idCarro = 3;
select * from carro;

-- Exclua algum carro da tabela. Exiba novamente os dados da tabela após a exclusão.
delete from carro where idCarro = 4;
select * from carro;

-- Elimine a tabela
drop table carro;


--  EXERCÍCIO 09----------------------------------------------------------------
-- Criar a tabela chamada Restaurante para conter os dados: idRest, nome (tamanho 40), CEP
-- (tamanho 9), exemplo: '01515-999', tipo (tamanho 30), sendo que idRest tem um valor
-- numérico inteiro e é a chave primária da tabela. O tipo do restaurante é o tipo da comida que é
-- servida (churrascaria, italiana, japonesa, fast-food, etc)

use sprint1;

create table restaurante (
  idRest  int primary key,
  nome    varchar(40),
  cep     varchar(9),
  tipo    varchar(30)
);

-- Inserir dados na tabela, procurando colocar um tipo de restaurante que tenha mais de um
-- restaurante. Procure inserir pelo menos 5 restaurantes.
insert into restaurante (idRest, nome, cep, tipo)
values(1, "Madero", "12345-678", "Hamburgueria"),
	   (2, "Outback", "98765-432", "Australiana"),
       (3, "The Grill House", "45678-901", "Churrascaria"),
       (4, "Fasano", "54321-678", "Italiana"),
       (5, "Mocotó", "13579-246", "Nordestina"),
       (6, "Kan Suke", "5678-901", "Japonesa");

-- O campo tipo (tamanho 30) está muito pequeno. É necessário aumentar os caracteres para o
-- tamanho 50.
alter table restaurante modify column tipo varchar(50);

-- Exibir todos os dados da tabela.
select * from restaurante;

-- Exibir apenas os nomes e os tipos dos restaurantes.
select nome, tipo from restaurante;

-- Exibir apenas os dados dos restaurantes de um determinado tipo.
select * from restaurante where tipo = "Australiana";

-- Exibir apenas os dados dos restaurantes de um determinado CEP.
select * from restaurante where cep = "13579-246";

-- Exibir os dados da tabela ordenados pelo nome do restaurante.
select * from restaurante order by nome;

-- Exibir os dados da tabela ordenados pelo tipo em ordem decrescente.
select * from restaurante order by tipo desc;

-- Exibir os dados da tabela, dos restaurantes cujo nome comece com uma determinada letra.
select * from restaurante where nome like "m%";

-- Exibir os dados da tabela, dos restaurantes cujo CEP termine com um determinado número.
select * from restaurante where cep like "%8";

-- Exibir os dados da tabela, dos restaurantes cujo tipo tenha como segunda letra uma
-- determinada letra.
select * from restaurante where tipo like "_a%";

-- Exibir os dados da tabela, dos restaurantes cujo nome tenha como penúltima letra uma
-- determinada letra.
select * from restaurante where nome like "%s_";

-- Atualize o CEP de algum restaurante. Exiba novamente os dados da tabela após a
-- atualização.
update restaurante set cep = "75896-389" where idRest = 6;
select * from restaurante;

-- Exclua algum restaurante da tabela. Exiba novamente os dados da tabela após a
-- exclusão.
delete from restaurante where idRest = 4;
select * from restaurante;

-- Elimine a tabela.
drop table restaurante;

drop database sprint1;
-- ***************************** EXCLUIR O BANCO DE DADOS SPRINT1*****************************
