# biblioteca-sgbu-sql
Scripts SQL do projeto da Biblioteca Universitária (SGBU).
# Sistema de Gestão da Biblioteca Universitária (SGBU) – Scripts SQL

Este repositório contém os scripts SQL do projeto de banco de dados da disciplina de Modelagem e Banco de Dados, baseado no minimundo de uma biblioteca universitária.

## 1. Tecnologias utilizadas

- Banco de Dados Relacional: MySQL (MySQL Workbench)  
  > Também pode ser adaptado para PostgreSQL com ajustes simples de sintaxe.
- Linguagem: SQL (DDL e DML)

## 2. Estrutura do repositório

- `sql/01_create_tables.sql`  
  Criação do banco de dados `biblioteca_sgbu` e das tabelas:
  `categoria`, `coordenador`, `bibliotecario`, `aluno`, `livro` e `emprestimo`, 
  já com chaves primárias e estrangeiras.

- `sql/02_insert_data.sql`  
  Comandos `INSERT` para povoar as tabelas principais com dados de exemplo coerentes com o minimundo.

- `sql/03_select_queries.sql`  
  Consultas de exemplo utilizando `SELECT` com `WHERE`, `ORDER BY`, `LIMIT`, `JOIN`, `GROUP BY` e funções de agregação.

- `sql/04_update_delete.sql`  
  Exemplos de comandos `UPDATE` e `DELETE` com condições, respeitando as chaves estrangeiras e a integridade referencial.

## 3. Como executar

1. Criar o banco e as tabelas  
   - Abra o MySQL Workbench ou o cliente SQL de sua preferência.  
   - Execute o script:  
     ```sql
     sql/01_create_tables.sql
     ```

2. Inserir dados de teste  
   - Execute:
     ```sql
     sql/02_insert_data.sql
     ```

3. Testar consultas  
   - Execute:
     ```sql
     sql/03_select_queries.sql
     ```

4. Testar atualizações e exclusões  
   - Execute:
     ```sql
     sql/04_update_delete.sql
     ```

## 4. Observações

- O modelo lógico utilizado segue as formas normais 1FN, 2FN e 3FN.  
- As chaves primárias e estrangeiras foram definidas com base no DER desenvolvido nas experiências práticas anteriores.  
- Os dados inseridos são fictícios e têm apenas finalidade acadêmica para teste do banco de dados.
