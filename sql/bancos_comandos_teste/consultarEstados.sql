select * from estados -- o * determina a seleção de todas as colunas da tabela 

SELECT * from estados where regiao = "sudeste";

select nome, sigla from estados where regiao = "norte";

SELECT * from estados where ID = 24;

SELECT * from estados where regiao = "sudeste" 
order by nome asc; -- ordena os resultados em ordem alfabética crescente

SELECT * from estados where regiao = "sudeste" 
order by populacao desc; -- ordena os resultados em ordem decrescente de população