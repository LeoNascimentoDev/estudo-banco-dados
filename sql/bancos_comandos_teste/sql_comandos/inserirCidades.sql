insert into cidades (nome, estado_id, area, populacao_cidade) values
('São Paulo', 49, 1521.11, 12.33);
    -- ('Rio de Janeiro', 2, 1182.99, 6.74),
    -- ('Belo Horizonte', 3, 331.40, 2.52),
    -- ('Salvador', 4, 706.77, 3.45),
    -- ('Fortaleza', 5, 313.15, 2.67),
    -- ('Brasília', 6, 580.61, 3.06),
    -- ('Curitiba', 7, 432.96, 1.85),
    -- ('Manaus', 8, 1570.77, 2.09),
    -- ('Recife', 9, 218.43, 1.60),
    -- ('Porto Alegre', 10, 496.82, 1.48);

    select * from estados where nome = "São Paulo"

    select * from cidades
    select * from estados

    insert into cidades (nome, estado_id, area, populacao_cidade) values
    ('Rio de Janeiro', (SELECT id from estados where nome = 'Rio de Janeiro'), 1182.99, 6.74);
