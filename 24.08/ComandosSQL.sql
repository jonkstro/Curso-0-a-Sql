create table paciente(
prontuario int not null primary key,
nome text not null,
cpf int not null,
convenio varchar(50),
data_consulta date,
especialidade varchar(50)
);