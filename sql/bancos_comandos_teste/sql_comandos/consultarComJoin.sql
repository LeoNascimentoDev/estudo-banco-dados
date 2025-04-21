select * from estados e, cidades c -- it not work for column with the same name. e and c are alias from estado and cidades how helps on calls. 
where e.id =c.estado_id;

select 
c.nome as Cidade,
e.nome as Estado,
regiao as Região
from estados e 
inner JOIN cidades c on e.id = c.estado_id;