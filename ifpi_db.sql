create database ifpi;

use ifpi;

create table tbTurma(
nome_turma varchar(7),
codigo_turma int not null,
primary key(codigo_turma));

create table tbAluno(
nome_aluno varchar(200),
data_nascimento_aluno date,
matricula_aluno int not null,
matricula_aluno_representante int,
codigo_turma int,
primary key(matricula_aluno),
foreign key(codigo_turma) references tbTurma(codigo_turma),
foreign key(matricula_aluno_representante) references tbAluno(matricula_aluno_representante));

create table tbDisciplina(
codigo_disciplina int not null,
nome_disciplina varchar(100),
primary key(codigo_disciplina));

create table tbProfessorDisciplinaTurma(
ano int not null,
matricula_professor int not null,
codigo_disciplina int not null,
codigo_turma int not null,
primary key(ano, matricula_professor, codigo_disciplina, codigo_turma),
foreign key(matricula_professor) references tbProfessorDisciplinaTurma(matricula_professor),
foreign key(codigo_disciplina) references tbProfessorDisciplinaTurma(codigo_disciplina),
foreign key(codigo_turma) references tbProfessorDisciplinaTurma(codigo_turma));

create table tbEscola(
codigo_escola int not null,
nome_escola varchar(200),
cidade_escola varchar(100),
matricula_professor int not null,
primary key(codigo_escola),
foreign key(matricula_professor) references tbProfessorDisciplinaTurma(matricula_professor));

create table tbProfessor(
matricula_professor int not null,
nome_professor varchar(200),
cpf_professor varchar(11),
telefone_professor numeric(10),
codigo_escola int not null,
primary key(matricula_professor),
foreign key(codigo_escola) references tbEscola(codigo_escola));



