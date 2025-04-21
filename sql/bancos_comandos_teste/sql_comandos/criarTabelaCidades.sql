CREATE TABLE IF NOT EXISTS Cidades (
    id int unsigned PRIMARY KEY auto_increment,
    nome varchar(100) not NULL,
    estado_id int unsigned not null,
    foreign key (estado_id) references estados(id),
    area decimal (10,2),
    populacao_cidade decimal (5,2) not null
)