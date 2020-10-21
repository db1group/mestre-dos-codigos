# Bem vindo ao território de SQL do Mestre dos Códigos

## Escudeiro

Torne-se um escudeiro superando todos os desafios a seguir ;)

1. Crie um modelo de dados no formato de DER contendo pelo menos 10 tabelas, sendo que pelo menos uma tabela deve conter chave composta; Criar ligações entre as tabelas com relacionamentos N:N e 1:N.

2. Com base no modelo criado no exercício 1, crie os códigos DDL para a criação das tabelas e os cuidados tomados com normalização e com a criação de índices;

3. Extrair um relatório do modelo de dados criado no exercício 1, utilizando 3 funções de agregação diferentes, e filtrando por pelo menos uma função agregadora;

4. Criar uma query hierárquica, ordenando os registros por uma coluna específica;

6. Realize 5 consultas no modelo de dados criado no exercício 1, realizando pelo menos uma das seguintes operações: `Union`, `Intersect`, `Minus`, e utilizando pelo menos 3 tipos diferentes de `joins`;

6. O que são os comandos DML?

 - [ ] Linguagem de Manipulação de Dados: Esses comandos indicam uma ação para o SGBD executar. Utilizados para recuperar, inserir e modificar um registro no banco de dados. Seus comandos são: `INSERT`, `DELETE`, `UPDATE`, `SELECT` e `LOCK`;
 - [ ] Linguagem de Definição de Dados: Comandos DDL são responsáveis pela criação, alteração e exclusão dos objetos no banco de dados. São eles: `CREATE TABLE`, `CREATE INDEX`, `ALTER TABLE`, `DROP TABLE`, `DROP VIEW` e `DROP INDEX`;
 - [ ] Linguagem de Controle de Dados: Responsável pelo controle de acesso dos usuários, controlando as sessões e transações do SGBD. Alguns de seus comandos são: `COMMIT`, `ROLLBACK`, `GRANT` e `REVOKE`.

7. O que são os comandos DDL?

 - [ ] Linguagem de Manipulação de Dados: Esses comandos indicam uma ação para o SGBD executar. Utilizados para recuperar, inserir e modificar um registro no banco de dados. Seus comandos são: `INSERT`, `DELETE`, `UPDATE`, `SELECT` e `LOCK`;
 - [ ] Linguagem de Definição de Dados: Comandos DDL são responsáveis pela criação, alteração e exclusão dos objetos no banco de dados. São eles: `CREATE TABLE`, `CREATE INDEX`, `ALTER TABLE`, `DROP TABLE`, `DROP VIEW` e `DROP INDEX`;
 - [ ] Linguagem de Controle de Dados: Responsável pelo controle de acesso dos usuários, controlando as sessões e transações do SGBD. Alguns de seus comandos são: `COMMIT`, `ROLLBACK`, `GRANT` e `REVOKE`.

8. O que são os comandos DCL?

 - [ ] Linguagem de Manipulação de Dados: Esses comandos indicam uma ação para o SGBD executar. Utilizados para recuperar, inserir e modificar um registro no banco de dados. Seus comandos são: `INSERT`, `DELETE`, `UPDATE`, `SELECT` e `LOCK`;
 - [ ] Linguagem de Definição de Dados: Comandos DDL são responsáveis pela criação, alteração e exclusão dos objetos no banco de dados. São eles: `CREATE TABLE`, `CREATE INDEX`, `ALTER TABLE`, `DROP TABLE`, `DROP VIEW` e `DROP INDEX`;
 - [ ] Linguagem de Controle de Dados: Responsável pelo controle de acesso dos usuários, controlando as sessões e transações do SGBD. Alguns de seus comandos são: `COMMIT`, `ROLLBACK`, `GRANT` e `REVOKE`.

9. Temos 2 tabelas: `serviceorder` e `client`. Análise os códigos abaixo e aponte qual é o correto para a criação de uma chave estrangeira na tabela `serviceorder` referenciando a tabela `client`.

 - [ ] Opção 1:
```sql
        alter table serviceorder add constraint fk_serviceorder_client
        foreign key(id_client)
          references client (id_serviceorder)
            on delete no action
            on update no action;
```
 - [ ] Opção 2:
```sql 
        alter table serviceorder add constraint fk_serviceorder_client
        foreign key(id_client)
          references id_client (client)
            on delete no action
            on update no action;
```			
 - [ ] Opção 3:
```sql 
        alter table client add constraint fk_serviceorder_client
        foreign key(id_serviceorder)
          references client (id_client)
            on delete no action
            on update no action;
```

10. Dado a tabela abaixo, criamos um comando de `INSERT`, no entanto ele esta apresentando um erro. Reescreva o código corrigindo-o:
```sql
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
```

11. Reescreva o código abaixo corrigindo o comando:

```sql
        update client set name = 'FULANO DE TAL'; cnpj = '17807928000185'
        where id = 3234;
```

12. Você precisa montar um relatório para buscar os vendedores agrupados por nome, cliente e mostrando o total que cada um realizou de vendas por cliente. Para isso considere as seguintes tabelas:

```sql
        CREATE TABLE vendedor (
            id        INT NOT NULL,
            nome      varchar(100) NOT NULL,
            cpf       varchar(30)  NOT NULL,
            telefone  varchar(40)  NULL,
            dtcriacao date,
            email     varchar(60)  NULL,
            PRIMARY KEY (id));

        CREATE TABLE cliente (
            id        INT NOT NULL,
            nome      varchar(100) NOT NULL,
            cpf       varchar(30)  NOT NULL,
            telefone  varchar(40)  NULL,
            dtcriacao date,
            email     varchar(60)  NULL,
            PRIMARY KEY (id));

        CREATE TABLE vendas (
            id         int NOT NULL PRIMARY KEY,
            code       int NOT NULL,
            totalvenda float,
            dt_venda   date
            clienteID  int FOREIGN KEY REFERENCES cliente(id),
            vendedorID  int FOREIGN KEY REFERENCES vendedor(id));
```

13. Utilizamos a função `GROUP BY` para agrupar informações iguais de determidas colunas. Com base nos seus conhecimentos a respeito da função `GROUP BY`, assinale o código correto:

 - [ ] Opção 1:
```sql
        SELECT c.nome, sum(v.total_venda)
        FROM cliente c
        INNER JOIN vendas v on v.id_cliente = c.id
        WHERE v.dt_venda > '01/01/2019'
        GROUP BY c.nome
        ORDER BY 1
```
 - [ ] Opção 2:
```sql 
        SELECT c.nome, sum(v.total_venda)
        FROM cliente c
        INNER JOIN vendas v on v.id_cliente = c.id
        WHERE v.dt_venda > '01/01/2019'
        ORDER BY c.nome
        GROUP BY c.nome, c.telefone
```		  
 - [ ] Opção 3:
```sql
        SELECT c.nome, sum(v.total_venda)
        FROM cliente
        INNER JOIN vendas v on v.id_cliente = c.id
        WHERE v.dt_venda > '01/01/2019'
        GROUP BY c.nome
        ORDER BY nome
```

14. Muitas vezes queremos buscar um registro no banco de dados mas não sabemos o termo completo que queremos consultar. Ex: Você foi instruído para consultar o nome de todos os clientes que possuem o texto "Souza" no nome. Para isso você recebeu o comando abaixo incorreto. Análise a consulta e reescreva da maneira correta.

```sql
		SELECT nome
        FROM cliente
        WHERE nome = '>Souza'
```

15. A tabela "cliente" foi criada com a estrutura incorreta. Agora você precisa criar um comando para excluir essa tabela do banco de dados. Assinale a alternativa correta.

 - [ ] `Table delete cliente`;
 - [ ] `Drop delete cliente`;
 - [ ] `Delete table cliente`;
 - [ ] `Drop table cliente`;
 - [ ] `Cliente drop table`;

16. É muito comum termos a necessidade de buscar diversas informações utilizando um único comando. Ex: Precisamos trazer em uma única consulta todos os nomes dos clientes referentes aos ids "12", "10", "199", "18", "01", "2016". Construa uma consulta utilizando a tabela "cliente" e o campo "id".

17. Dado que temos as duas tabelas abaixo:

```sql
        CREATE TABLE cliente (
            id        INT NOT NULL,
            nome      varchar(100) NOT NULL,
            cpf       varchar(30)  NOT NULL,
            telefone  varchar(40)  NULL,
            dtcriacao date,
            email     varchar(60)  NULL,
            PRIMARY KEY (id));

        CREATE TABLE vendas (
            id         int NOT NULL PRIMARY KEY,
            code       int NOT NULL,
            totalvenda float,
            dt_venda   date
            clienteID  int FOREIGN KEY REFERENCES cliente(id));
```

Como existe um relacionamento entre as duas tabelas, assinale a consulta que irá ter a melhor performance e que está correta:

 - [ ] Opção 1:
```sql 
			SELECT c.nome, c.email
			FROM cliente c
			INNER JOIN vendas v on v.clienteID = c.id
			WHERE v.dt_venda > '01/01/2019'
			ORDER BY 1
```
 - [ ] Opção 2:
```sql 
			SELECT c.nome, c.email
			FROM cliente c, vendas v
			WHERE v.dt_venda > '01/01/2019'
			AND v.clienteID = c.id
			ORDER BY c.nome, c.dtcriacao
```
 - [ ] Opção 3:
```sql 
			SELECT c.nome, c.email
			FROM cliente c, vendas v
			WHERE v.dt_venda > '01/01/2019'
			INNER JOIN on v.clienteID = c.id
			AND v.clienteID = c.id
			ORDER BY c.nome, c.dtcriacao
```
 - [ ] Opção 4:
```sql 
			SELECT c.nome, c.email
			FROM cliente c, vendas v
			WHERE dt_venda > '01/01/2019'
			AND v.clienteID = c.id
			ORDER BY c.nome, c.dtcriacao
```
18. Analise o cenário:

Você tem um banco de dados com as tabelas abaixo:
```sql
        CREATE TABLE cliente (
            id        INT NOT NULL,
            nome      varchar(100) NOT NULL,
            PRIMARY KEY (id));

        CREATE TABLE vendas (
            id         int NOT NULL PRIMARY KEY,
            dtcriacao  date,
            clienteID  int FOREIGN KEY REFERENCES cliente(id));
```
Após a criação das tabelas foram inseridos os seguintes registros:
```sql
        insert cliente values (1, 'ESCUDEIRO');
        insert cliente values (2, 'CAVALEIRO');
        insert cliente values (3, 'MESTRE');

        insert vendas values(1, '01/01/2019', 1);
        insert vendas values(2, '01/01/2019', 2);
        insert vendas values(3, '01/01/2019', 3);
```

O analista responsável pelo gerenciamento do banco de dados precisa excluir a tabela `cliente`. Levando em consideração o relacionamento entre as duas tabelas. Como seria o único comando que iria excluir a tabela `cliente` e `vendas` de uma só vez.

19. A tabela `cliente` do produto que você trabalha, possuí os seguintes campos:

   Nome;
   Telefone;
   Email;
   Endereco;
   Cidade;
   Estado;
   Bairro.

Com o aumento da complexidade do produto, surgiu a necessidade de criar uma estrutura de tabelas para armazenar endereços que será utilizada por outras tabelas como `usuario`, `fornecedor` e `funcionario`. Sabendo disso, a sua missão é criar essa nova estrutura de tabelas de endereços que será utilizada nos demais locais do produto. Crie um modelo de dados no formato de DER com as tabelas dessa nova estrutura.

20. Com base no modelo anterior de endereços, crie os códigos DDL para criação das tabelas e os cuidados tomados com normalização e com a criação de índices;

## Cavaleiro

DICAS:
- Para responder as perguntas abaixo, utilize o modelo de dados criado no exercício 1 da prova de escudeiro;
- No início de cada pergunta esta descrito qual SGBD você pode utilizar para responder a pergunta;


1. (Oracle, SQL Server) 
	Criar uma JOB que execute diariamente uma procedure que atualize os dados de uma visão materializada com base nas informações do dia anterior;


2. (Oracle, SQL Server, Mysql, PostgreSQL) 
	Criar uma função que valide um tipo de dado comparando o formato com uma Expressão Regular; 
	Crie uma trigger que não permita a inserção/alteração do registro com base na validação da função criada;

3. (Oracle, SQL Server) 
	Sintetize o relatório criado no exercício 3 da prova de escudeiro dentro de uma View Materializada;

4. (Oracle, SQL Server) 
	Crie uma package que armazene as informações do usuário logado, e que registre as operações que o mesmo realizou na sessão;


5. (Oracle) 
	Com base no código PL/SQL abaixo:

		CREATE TABLE outra_tabela (ch CHAR (3 CHAR));

		DECLARE 
			str VARCHAR2(5 CHAR) := 'DREAM';
		BEGIN
			INSERT INTO outra_tabela(ch) VALUES(str);
		END;
		/

	Executar o código acima no Oracle 12c ou superiores, resulta em:

 - [ ] Opção 1: PL/SQL: numeric or value error: character string buffer too large or too small;
 - [ ] Opção 2: PL/SQL: procedure successfully completed;
 - [ ] Opção 3: ERROR: value too large for column;
 - [ ] Opção 4: ORACLE table sucessfully created;
 - [ ] Opção 5: ERROR: character string buffer too small; 

6. (Oracle, SQL Server, Mysql) 
	No seu projeto será preciso criar uma function para retornar o valor de INSS dos trabalhadores de uma empresa. Para isso, crie uma procedure para realizar os cálculos e uma function para passar como parâmetro o valor do salário e obter como retorno o valor de INSS. Para o cálculo, utilize as alíquotas vigentes;


7. (Oracle, SQL Server, Mysql, PostgreSQL) 
	Dado que você tenha a tabela "User" em seu banco de dados, e que tem os seguintes dados cadastrados: 

		idUser    codUser
		1         3883-3881-1812-2828
		2         5483-8762-3246-8735
		3         1024-8950-3068-1024  

	Para exibir os 'Users' que iniciem com o "codUser" '10', qual comando eu devo utilizar:

 - [ ] Opção 1: "SELECT * FROM user WHERE codUser = '10..'";
 - [ ] Opção 2: "SELECT * FROM user WHERE codUser = '%10'";
 - [ ] Opção 3: "SELECT * FROM user LIKE codUser = '10%'";
 - [ ] Opção 4: "SELECT * FROM user WHERE codUser = '10%'";
 - [ ] Opção 5: "SELECT * FROM user WHERE codUser LIKE '10%'";

8. (Oracle, SQL Server, Mysql, PostgreSQL) 
	Dado a tabela "Student" e os seguintes registros: 

		idStudents   Age
		1            20  
		2            18
		3            17
		4            37
		5            45
		6            28 
		7            22
		8            21
		9            55
		10           19

	Foi solicitado para você realizar uma consulta que deverá trazer a quantidade de "Students" que possuem idade entre 20 e 30 anos. 

9. (Oracle, SQL Server, Mysql, PostgreSQL) 
	Dado a tabela "Student" e os seguintes registros: 

		idStudents   Age
		1            20  
		2            18
		3            
		4            37
		5            45
		6             
		7            22
		8            21
		9            
		10           19

	Crie um comando para buscar apenas os registros que possuem valor nulos na coluna "Age".

10. (Oracle, SQL Server) 
	Dado que em seu banco de dados possua a tabela "DB1", com atributos I e J, e outra, "DB2", com atributos I e J.
	Com isso, será preciso criar uma consulta que retorna os registros de "DB1" que não têm um registro correspondente em "DB2" e que os valores dos atributos I em cada tabela tenham o mesmo valor.
	Assinale a opção que indica o comando que não produz esse resultado corretamente.

 - [ ] Opção 1:
			select db1.* 
			from db1
			where db1.I not in ( select db2.I 
			from db2 )
 - [ ] Opção 2:
			select db1.*
			from db1
			where not exists ( select * 
			from db2
			where db2.I = db1.I )
 - [ ] Opção 3:
			select db1.*
			from db1 
			inner join db2 
			on db1.I <> db2.I
 - [ ] Opção 4:
			select db1.*
			from db1
			where ( select count(*) 
			from db2
			where db2.I = db1.I ) = 0
 - [ ] Opção 5:
			select db1.*
			from db1
			where db1.I not in ( select I 
			from ( select I
			from db1
			intersect 
			select I from db2 ) x )
							  
11. (Oracle, SQL Server, Mysql, PostgreSQL) 
	Dado que você tem criado as seguintes tabelas e os seguintes registros;

	Tabela: User
		idUser    codUser
		1         3883-3881-1812-2828
		2         5483-8762-3246-8735
		3         1024-8950-3068-1024 

	Tabela: Student
		idUser    country               codUser
		1         3883-3881-1812-2828   3883-3881-1812-2828
		2         5483-8762-3246-8735   5483-8762-3246-8735
		3         1024-8950-3068-1024   1024-8950-3068-1024

	Um dos comandos que podemos utilizar para excluir uma tabela é o "DROP TABLE". Mas no caso deste cenário. O que acontecerá quando você executar o comando "DROP TABLE" para a tabela "User"? Qual comando você utilizaria para excluir as duas tabelas de uma só vez nessa situação e por que?

12.  (Oracle, SQL Server, Mysql, PostgreSQL)  Algo que sempre devemos ter em nosso radar, por questões de segurança, é termos cópias de nossos bancos de dados. Hoje em dia trabalhamos em ambientes e ferramentas que possuem sistemas automatizadas que fazem backups em tempo real. Mas imagine que você esta sem essas ferramentas e precisa fazer manualmente o backup do seu banco de dados e salvar em um arquivo ".sql", ".txt" ou ".csv". Pensando nisso crie os seguintes comandos: 

	a) Comando para fazer backup do banco completo;

	b) Comando para fazer backup somente das tabelas;

	c) Comando para restaurar o arquivo que você gravou o backup;

## Mestre - Em breve!
