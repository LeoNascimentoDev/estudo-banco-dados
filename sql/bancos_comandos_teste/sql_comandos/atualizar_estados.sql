update estados 
set nome = 'Nova York', sigla = 'NY', regiao = 'Norte' 
where nome = 'Outro Estado'; -- atualiza o estado com nome 'Outro Estado' para 'Nova York', sigla 'NY' e regiao 'Norte'

update estados 
set nome = 'Nova York', sigla = 'NY', regiao = 'outra' -- é esperado um erro pois "outra" não faz parte das regiões determinadas nos contrains na criação da tabela 
-- erro esperado : WARN_DATA_TRUNCATED: Data truncated for column 'regiao' at row 1
where nome = 'Nova York'; -- atualiza o estado com nome 'Outro Estado' para 'Nova York', sigla 'NY' e regiao 'Norte'

SELECT populacao from estados where sigla = "PR"; -- seleciona a população do estado com sigla 'PR' (Paraná)

UPDATE estados 
set populacao = 11.32 
where sigla = "PR"; -- atualiza a população do estado com sigla 'PR' (Paraná) para 11.32

SELECT populacao, nome, id, sigla from estados where sigla = "PR"; -- seleciona a população do estado com sigla 'PR' (Paraná)
