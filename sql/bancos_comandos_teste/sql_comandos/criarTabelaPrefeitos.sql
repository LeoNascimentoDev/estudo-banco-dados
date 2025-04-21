create table if not exists prefeitos (
id int unsigned not null auto_increment primary key,
nome varchar (255) not null,
cidade_id int unsigned,
unique key (cidade_id),
foreign key (cidade_id) REFERENCES cidades(id)
);