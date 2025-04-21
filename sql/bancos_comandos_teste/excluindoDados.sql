insert into estados ( nome, sigla, regiao, populacao) 
values ('NOVO', 'NV', 'NORTE', 0.555);

DELETE  FROM estados
where sigla = 'NV';

SELECT * FROM estados;