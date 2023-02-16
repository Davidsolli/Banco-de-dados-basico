drop database Escola;
create database Escola;
use Escola;

create table aluno(
	aluno_id int auto_increment,
    aluno_dataNascimento date not null,
    aluno_nome varchar(80) not null,
    aluno_matricula varchar(20) not null,
    primary key(aluno_id)
);

create table professor(
	prof_id int auto_increment,
    prof_dataNascimento date not null,
    prof_nome varchar(100) not null,
    prof_especialidade varchar(100) not null,
    primary key(prof_id)
);

create table diciplina(
	dicipli_id int auto_increment,
	dicipli_nome varchar(100) not null,
    dicipli_cargaHoraria int not null,
    prof_id int not null, 
    foreign key(prof_id) references professor(prof_id),
    primary key(dicipli_id)
);

create table jogos(
	jogo_id int not null auto_increment,
	jogo_nome varchar(100) not null,
    jogo_finish int not null,
    jogo_anoLancamento int not null,
    primary key(jogo_id)
);

insert into jogos(jogo_nome, jogo_finish, jogo_anoLancamento) values("Sekiro", 40, 2019);
insert into jogos(jogo_nome, jogo_finish, jogo_anoLancamento) values("Resident Evil 2", 12, 2019);
insert into jogos(jogo_nome, jogo_finish, jogo_anoLancamento) values("Red Dead Redenption 2", 50, 2018);
insert into jogos(jogo_nome, jogo_finish, jogo_anoLancamento) values("God of War", 30, 2018);
insert into jogos(jogo_nome, jogo_finish, jogo_anoLancamento) values("The Witcher 3", 50, 2015);
insert into jogos(jogo_nome, jogo_finish, jogo_anoLancamento) values("Grand theft Auto 5", 27, 2013);
insert into jogos(jogo_nome, jogo_finish, jogo_anoLancamento) values("The Last of Us", 25, 2013);
select * from jogos;

insert into aluno(aluno_nome, aluno_dataNascimento, aluno_matricula) values("David", '2003/05/27', 202120851);
insert into aluno(aluno_nome, aluno_dataNascimento, aluno_matricula) values("Marcin", '2000/06/07', 201950841);
insert into aluno(aluno_nome, aluno_dataNascimento, aluno_matricula) values("Alerquininha", '2005/01/15', 202230159);
insert into aluno(aluno_nome, aluno_dataNascimento, aluno_matricula) values("Joaninha", '2003/10/20', 202120123);
select * from aluno;

insert into professor(prof_nome, prof_dataNascimento, prof_especialidade) values("Romario", '1980/03/12', "Matematica");
insert into professor(prof_nome, prof_dataNascimento, prof_especialidade) values("Ronaldo", '1985/03/11', "Portugues");
insert into professor(prof_nome, prof_dataNascimento, prof_especialidade) values("Pele", '1970/05/05', "Ciencias");
insert into professor(prof_nome, prof_dataNascimento, prof_especialidade) values("Neymar", '1990/07/20', "Historia");
select * from professor;

insert into diciplina(dicipli_cargaHoraria, dicipli_nome, prof_id) values(80, "Matematica", 1);
select * from diciplina;

select aluno_nome, aluno_id from aluno order by aluno_matricula desc;
select aluno_id, aluno_nome from aluno where aluno_matricula = '202120851';
select jogo_nome, jogo_finish, jogo_anoLancamento from jogos where jogo_anoLancamento between 2016 and 2019 order by jogo_anoLancamento;
select jogo_nome, jogo_finish, jogo_anoLancamento from jogos where jogo_anoLancamento in (2013, 2015, 2019) order by jogo_anoLancamento;
select jogo_nome, jogo_finish, jogo_anoLancamento from jogos where jogo_anoLancamento > 2014 and jogo_finish < 30 order by jogo_anoLancamento;
select jogo_nome, jogo_finish, jogo_anoLancamento from jogos where jogo_finish = 30 or jogo_finish = 40 order by jogo_anoLancamento;

desc aluno;