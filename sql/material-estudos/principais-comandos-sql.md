# Boas Práticas
## Estilo de nomenclatura

**Snake Case**: também como “underscore case”
Utilizamos underline no lugar do espaço para separar as palavras. Quando o snake case está em caixa alta, ele é chamado de “screaming snake case”:

    ```
    Exemplos em Snake Case: tamanho_cidade data_de_criacao numero_de_habitantes
    ```

Para comentários utiliza-se -- e comente

O sql é 'case incentive' ou seja, não importa qual seja a utilização de letras maiúsculas ou minúsculas, os comandos vão funcionar  

# Referências

## Documentação 
https://learn.microsoft.com/pt-br/sql/?view=sql-server-ver16

## Coinstrains 
https://www.w3schools.com/sql/sql_constraints.asp

## Collate 
https://learn.microsoft.com/pt-br/sql/t-sql/statements/collations?view=sql-server-ver16

## UTF8mb4

https://pt.stackoverflow.com/questions/124831/quais-as-diferen%C3%A7as-entre-utf8-e-utf8mb4

https://cursos.alura.com.br/forum/topico-uma-dica-sobre-o-character-set-e-o-collate-153307

## Tipos
https://learn.microsoft.com/pt-br/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16

# Principais Comandos SQL

## Comando para criação de banco de dados 
````sql
create database cadastro_cidades
default character set utf8mb4
default collate utf8mb4_general_ci;
````
- **DROP TABLE**: Remove um banco de dados.
    ```sql
    DROP database banco_de_dados;
    ```


## Comandos de Definição de Dados (DDL)

- **USE nome_do_banco**: "abre" o banco de dados requerido.
    ```sql
    USE nome_do_banco;
    ```

- **CREATE TABLE**: Cria uma nova tabela.
    ```sql
    CREATE TABLE tabela (
            coluna1 tipo_dado,
            coluna2 tipo_dado
    );
    ```

- **ALTER TABLE**: Altera a estrutura de uma tabela.
    ```sql
    ALTER TABLE tabela ADD coluna tipo_dado;
    ```

- **DROP TABLE**: Remove uma tabela do banco de dados.
    ```sql
    DROP TABLE tabela;
    ```

- **TRUNCATE TABLE**: Remove todos os registros de uma tabela, mas mantém sua estrutura.
    ```sql
    TRUNCATE TABLE tabela;
    ```

## Principais Atributos na Criação de Bancos de Dados (SQL)

### 🔑 1. `PRIMARY KEY`
- Define a coluna como **chave primária**
- Não permite valores repetidos ou nulos
- Identifica unicamente cada linha da tabela

---

### 🔁 2. `AUTO_INCREMENT`
- Usado com colunas numéricas
- Faz com que o valor seja incrementado automaticamente a cada novo registro
- Muito usado em IDs

---

### 🚫 3. `NOT NULL`
- A coluna **não pode ter valor nulo**
- O dado é obrigatório

---

### ✅ 4. `UNIQUE`
- Garante que os valores da coluna **não se repitam**
- Exemplo: CPF, e-mail, número de matrícula

---

### 🎯 5. `DEFAULT`
- Define um **valor padrão** para a coluna se nada for informado

```sql
status VARCHAR(20) DEFAULT 'ativo'
```

## Comandos de Manipulação de Dados (DML)
**SELECT**: Usado para consultar dados em uma tabela.
    ```sql
    SELECT coluna1, coluna2 FROM tabela WHERE condição;
    ```

- **INSERT**: Insere novos registros em uma tabela.
    ```sql
    INSERT INTO tabela (coluna1, coluna2) VALUES (valor1, valor2);
    ```

- **UPDATE**: Atualiza registros existentes em uma tabela.
    ```sql
    UPDATE tabela SET coluna1 = valor1 WHERE condição;
    ```

- **DELETE**: Remove registros de uma tabela.
    ```sql
    DELETE FROM tabela WHERE condição;
    ```



## Comandos de Controle de Transação (TCL)
- **COMMIT**: Salva as alterações realizadas.
    ```sql
    COMMIT;
    ```

- **ROLLBACK**: Reverte alterações não confirmadas.
    ```sql
    ROLLBACK;
    ```

- **SAVEPOINT**: Define um ponto de salvamento dentro de uma transação.
    ```sql
    SAVEPOINT nome_ponto;
    ```

## Comandos de Controle de Dados (DCL)
- **GRANT**: Concede permissões a usuários.
    ```sql
    GRANT permissão ON objeto TO usuário;
    ```

- **REVOKE**: Revoga permissões de usuários.
    ```sql
    REVOKE permissão ON objeto FROM usuário;
    ```

## Comandos de Consulta Avançada
- **JOIN**: Combina registros de duas ou mais tabelas.
    ```sql
    SELECT * FROM tabela1
    INNER JOIN tabela2 ON tabela1.coluna = tabela2.coluna;
    ```

- **GROUP BY**: Agrupa registros com base em uma ou mais colunas.
    ```sql
    SELECT coluna, COUNT(*) FROM tabela GROUP BY coluna;
    ```

- **HAVING**: Filtra grupos de registros.
    ```sql
    SELECT coluna, COUNT(*) FROM tabela GROUP BY coluna HAVING COUNT(*) > 1;
    ```

- **ORDER BY**: Ordena os resultados de uma consulta.
    ```sql
    SELECT * FROM tabela ORDER BY coluna ASC;
    ```

- **LIMIT**: Restringe o número de registros retornados.
    ```sql
    SELECT * FROM tabela LIMIT 10;
    ```