select 
    regiao as 'Regiãooo',
    sum(populacao) as Total -- necessária esta substituição para o order by funcionar 
from estados 
GROUP BY regiao
order by Total desc;