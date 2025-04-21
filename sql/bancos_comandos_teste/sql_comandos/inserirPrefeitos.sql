insert into prefeitos (nome, cidade_id)
VALUES
('Albert', 1),
('Bento', 2),
('Carlos', null);

select * from cidades c
INNER join prefeitos on prefeitos.cidade_id = c.id; 

select 
c.nome as Cidade,
p.nome as Prefeito
from cidades c
INNER join prefeitos p on p.cidade_id = c.id; 

select * from prefeitos;

select * from cidades c left outer join prefeitos p on c.id=p.cidade_id;
