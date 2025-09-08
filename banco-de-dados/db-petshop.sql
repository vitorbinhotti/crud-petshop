create database db_petshop;
use db_petshop;

create table cliente(
    id int auto_increment primary key,
    nome varchar(100) not null,
    cpf varchar(11) not null,
    telefone varchar(15) not null,
    email varchar(100) not null
);

create table pet(
    id int auto_increment primary key,
    nome varchar(100) not null,
    especie varchar(50) not null,
    porte varchar(20) not null,
    nascimento date not null,
    cliente_id int,
    foreign key (cliente_id) references cliente(id)
);

create table servico(
    id int auto_increment primary key,
    nome varchar(100) not null,
    preco decimal(10,2) not null,
    duracao_min int not null
);

create table agendamento(
    id int auto_increment primary key,
    data_hora datetime not null,
    status varchar(20) not null,
    observacoes text,
    pet_id int,
    servico_id int,
    foreign key (pet_id) references pet(id),
    foreign key (servico_id) references servico(id)
);