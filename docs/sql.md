# Bem vindo ao território de SQL do Mestre dos Códigos

## Escudeiro

Torne-se um escudeiro superando todos os desafios a seguir ;)

1. Crie um modelo de dados no formato de DER contendo pelo menos 10 tabelas, sendo que pelo menos uma tabela deve conter chave composta; Criar ligações entre as tabelas com relacionamentos MxN e 1xN.

2. Com base base no modelo criado no exercicio 1 crie os códigos DDL para criação das tabelas e os cuidados tomados com normalização e com a criação de indices;

3. Extrair um relatório do modelo de dados criado no item 1, utilizando 3 funções de agregação diferentes, e filtrando por pelo menos uma função agregadora;

4. Criar uma query hierarquica, ordenando os registros por uma coluna específica;

6. Realize 5 consultas no modelo de dados criado no item 1, realizando pelo menos uma das seguintes operações: Union, Intersect, Minus, e utilizando pelo menos 3 tipos diferentes de joins;

6. O que são os comandos DML?

 - [ ] Linguagem de Manipulação de Dados: esses comandos indicam uma ação para o SGBD executar. Utilizados para recuperar, inserir e modificar um registro no banco de dados. Seus comandos são: INSERT, DELETE, UPDATE, SELECT e LOCK;
 - [ ] Linguagem de Definição de Dados:comandos DDL são responsáveis pela criação, alteração e exclusão dos objetos no banco de dados. São eles: CREATE TABLE, CREATE INDEX, ALTER TABLE, DROP TABLE, DROP VIEW e DROP INDEX;
 - [ ] Linguagem de Controle de Dados:responsável pelo controle de acesso dos usuários, controlando as sessões e transações do SGBD. Alguns de seus comandos são: COMMIT, ROLLBACK, GRANT e REVOKE.

7. O que são os comandos DDL?

 - [ ] Linguagem de Manipulação de Dados: esses comandos indicam uma ação para o SGBD executar. Utilizados para recuperar, inserir e modificar um registro no banco de dados. Seus comandos são: INSERT, DELETE, UPDATE, SELECT e LOCK;
 - [ ] Linguagem de Definição de Dados:comandos DDL são responsáveis pela criação, alteração e exclusão dos objetos no banco de dados. São eles: CREATE TABLE, CREATE INDEX, ALTER TABLE, DROP TABLE, DROP VIEW e DROP INDEX;
 - [ ] Linguagem de Controle de Dados:responsável pelo controle de acesso dos usuários, controlando as sessões e transações do SGBD. Alguns de seus comandos são: COMMIT, ROLLBACK, GRANT e REVOKE.

8. O que são os comandos DCL?

 - [ ] Linguagem de Manipulação de Dados: esses comandos indicam uma ação para o SGBD executar. Utilizados para recuperar, inserir e modificar um registro no banco de dados. Seus comandos são: INSERT, DELETE, UPDATE, SELECT e LOCK;
 - [ ] Linguagem de Definição de Dados:comandos DDL são responsáveis pela criação, alteração e exclusão dos objetos no banco de dados. São eles: CREATE TABLE, CREATE INDEX, ALTER TABLE, DROP TABLE, DROP VIEW e DROP INDEX;
 - [ ] Linguagem de Controle de Dados:responsável pelo controle de acesso dos usuários, controlando as sessões e transações do SGBD. Alguns de seus comandos são: COMMIT, ROLLBACK, GRANT e REVOKE.

9. Temos 2 tabelas a "serviceorder" e "client". Análise os códigos abaixos e aponte qual é o correto para criação de uma chave estrangeira na tabela "serviceorder" referenciando a tabel "client".

 - [ ] Opção 1:
        alter table serviceorder add constraint fk_serviceorder_client
        foreign key(id_client)
          references client (id_serviceorder)
            on delete no action
            on update no action;
 - [ ] Opção 2:
        alter table serviceorder add constraint fk_serviceorder_client
        foreign key(id_client)
          references id_client (client)
            on delete no action
            on update no action;
 - [ ] Opção 3:
        alter table client add constraint fk_serviceorder_client
        foreign key(id_serviceorder)
          references client (id_client)
            on delete no action
            on update no action;

10. Dado a tabela abaixo, criamos um comando de "INSERT", no entando ele esta apresentando um erro. Reescreva o código corrigindo o:

        insert into cliente(
          id,
          nome_cliente,
          razao_social,
          dt_cadastro,
          cnpj,
          telefone,
          cidade,
          estado)
        values (
          1,
          '0001',
          'AARONSON',
          'AARONSON FURNITURE LTDA',
          '2015-02-17',
          '17.807.928/0001-85',
          '(21) 8167-6584',
          'MARINGA',
          'PR'
        );

11. Reescreva o código abaixo corrigindo o comando:

        update client set name = 'FULANO DE TAL'; cnpj = '17807928000185'
        where id = 3234;

12. Você precisa montar um relatório para buscar os vendedores agrupados por nome, cliente e mostrando o total que cada um realizou de vendas por cliente. Para isso considere as seguintes tabelas:

        "CREATE TABLE vendedor (
            id        INT NOT NULL,
            nome      varchar(100) NOT NULL,
            cpf       varchar(30)  NOT NULL,
            telefone  varchar(40)  NULL,
            dtcriacao date,
            email     varchar(60)  NULL,
            PRIMARY KEY (id));"

        "CREATE TABLE cliente (
            id        INT NOT NULL,
            nome      varchar(100) NOT NULL,
            cpf       varchar(30)  NOT NULL,
            telefone  varchar(40)  NULL,
            dtcriacao date,
            email     varchar(60)  NULL,
            PRIMARY KEY (id));"

        "CREATE TABLE vendas (
            id         int NOT NULL PRIMARY KEY,
            code       int NOT NULL,
            totalvenda float,
            dt_venda   date
            clienteID  int FOREIGN KEY REFERENCES cliente(id),
            vendedorID  int FOREIGN KEY REFERENCES vendedor(id));"

13. Utilizamos a função "GROUP BY" para agrupar informações iguais de determidas colunas. Com base nos seus conhecimento a respeito da função "GROUP BY" assinale o código correto:

 - [ ] Opção 1:
              SELECT c.nome, sum(v.total_venda)
              FROM cliente c
        INNER JOIN vendas v on v.id_cliente = c.id
              WHERE v.dt_venda > '01/01/2019'
          GROUP BY c.nome
          ORDER BY 1
 - [ ] Opção 2:
              SELECT c.nome, sum(v.total_venda)
              FROM cliente c
        INNER JOIN vendas v on v.id_cliente = c.id
              WHERE v.dt_venda > '01/01/2019'
          ORDER BY c.nome
          GROUP BY c.nome, c.telefone`
 - [ ] Opção 3:
              SELECT c.nome, sum(v.total_venda)
              FROM cliente
        INNER JOIN vendas v on v.id_cliente = c.id
              WHERE v.dt_venda > '01/01/2019'
          GROUP BY c.nome
          ORDER BY nome

14. Muitas vezes queremos buscar um registro no banco de dados mas não sabemos o termo completo que queremos consultar. Ex: Você foi instruído para consultar o nome de todos clientes que possuem o nome "Souza" no nome. Para isso você recebeu o comando abaixo incorreto. Análise a consulta e reescreva a da maneira correta.

          sql> " SELECT nome
                FROM cliente
                WHERE nome = '>Souza' "

15. A tabela "cliente" foi criado com a estrutura incorreta. Agora você precisa criar um comando para excluir essa tabela do banco de dados. Assinale a alternativa correta.

 - [ ] Table delete cliente;
 - [ ] Drop delete cliente;
 - [ ] Delete table cliente;
 - [ ] Drop table cliente;
 - [ ] Cliente drop table;

16. É muito comum termos a necessidade de buscar diversas informações utilizando um único comando. Ex: Precisamos trazer em uma única consulta todos os nomes dos clientes referente aos ids "12", "10", "199", "18", "01", "2016". Construa a consulta utilizando a tabela "cliente" e o campo "id".

17. Dado que temos as duas tabelas abaixo:

        "CREATE TABLE cliente (
            id        INT NOT NULL,
            nome      varchar(100) NOT NULL,
            cpf       varchar(30)  NOT NULL,
            telefone  varchar(40)  NULL,
            dtcriacao date,
            email     varchar(60)  NULL,
            PRIMARY KEY (id));"

        "CREATE TABLE vendas (
            id         int NOT NULL PRIMARY KEY,
            code       int NOT NULL,
            totalvenda float,
            dt_venda   date
            clienteID  int FOREIGN KEY REFERENCES cliente(id));"

Como existe um relacionamento entre as duas tabela, assinale a consulta irá ter a melhor performance e que está correta:

 - [ ] Opção 1:
              SELECT c.nome, c.email
              FROM cliente c
        INNER JOIN vendas v on v.id_cliente = c.id
              WHERE v.dt_venda > '01/01/2019'
              ORDER BY 1
 - [ ] Opção 2:
              SELECT c.nome, c.email
                FROM cliente c, vendas v
                WHERE v.dt_venda > '01/01/2019'
                  AND v.id_cliente = c.id
                ORDER BY c.nome, c.dtcriacao
 - [ ] Opção 3:
              SELECT c.nome, c.email
                FROM cliente c, vendas v
                WHERE v.dt_venda > '01/01/2019'
          INNER JOIN on v.id_cliente = c.id
                  AND v.id_cliente = c.id
                ORDER BY c.nome, c.dtcriacao
 - [ ] Opção 4:
              SELECT c.nome, c.email
                FROM cliente c, vendas v
                WHERE dt_venda > '01/01/2019'
                  AND v.id_cliente = c.id
                ORDER BY c.nome, c.dtcriacao

18. Análise o cenário:

Você tem um banco de dados com as tabelas abaixo:

        "CREATE TABLE cliente (
            id        INT NOT NULL,
            nome      varchar(100) NOT NULL,
            PRIMARY KEY (id));"

        "CREATE TABLE vendas (
            id         int NOT NULL PRIMARY KEY,
            dtcriacao  date,
            clienteID  int FOREIGN KEY REFERENCES cliente(id));"

Após a criação das tabelas foram inseridos os seguintes registros:

        insert cliente values (1, 'ESCUDEIRO');

        insert cliente values (1, 'CAVALEIRO');

        insert cliente values (1, 'MESTRE');

        insert vendas (1,1, '01/01/2019');

        insert vendas (1,2, '01/01/2019');

        insert vendas (1,3, '01/01/2019');

O analista responsavel pelo gerenciamento do banco de dados precisa excluir a tabela cliente. Levando em consideração o relacionamento entre as duas tabelas. Como seria o único comando que iria excluir a tabela clientes e vendas de uma só vez.

19. A tabela "cliente" do produto que você trabalha, possuí os seguintes campos:

   Nome;
   Telefone;
   E-mail;
   Endereço;
   Cidade;
   Estado;
   Bairro.

Com o aumento da complexidade do produto, surgiu a necessidade de criar uma estrutura de tabelas para armazenar endereços que será utilizada por outras tabelas como "usuario", "forncedor" e "funcionario". Sabendo disso, a sua missão é criar essa nova estrutura de tabelas de endereços que será utilizada nos demais locais do produto. Crie um modelo de dados no formato de DER com as tabelas dessa nova estrutura.

20. Com base no modelo anterior de endereços crie os códigos DDL para criação das tabelas e os cuidados tomados com normalização e com a criação de indices;

## Cavaleiro - Em breve!

## Mestre - Em breve!
