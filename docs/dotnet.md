# Bem-vindo ao território de .Net do Mestre dos Códigos

## Instruções

- Todas as respostas devem estar em algum repositório GIT na nuvem como projeto público.
- Você pode criar uma única solution com um projeto, ou uma solution com vários projetos no repositório GIT, mas é importante que haja em algum lugar um arquivo informando a resolução de cada desafio, de forma que o avaliador encontre-o facilmente.
- É importante que existam instruções de execução dos desafios.

### Pré requisitos

- Visual Studio 2019 ou similar instalado.
- Instale as ferramentas necessárias para rodar o Net core. (Instalação do ambiente faz parte da avaliação.)

## Nível Escudeiro

### Perguntas teóricas de introdução

1. Em quais linguagens o C# foi inspirado?
2. Inicialmente o C# foi criado para qual finalidade?
3. Quais os principais motivos para a Microsoft ter migrado para o Core?
4. Cite as principais diferenças entre .Net Full Framework e .Net Core.

### Trabalhando no Console

1. Crie uma aplicação, que receba os valores A e B. Mostre de forma simples, como utilizar variáveis e manipular dados.
    - Some esses 2 valores;
    - Faça uma subtração do valor A - B;
    - Divida o valor B por A;
    - Multiplique o valor A por B;
    - Imprima os valores de entrada, informado se o número é par ou ímpar;
    - Imprima todos os resultados no console, de forma que o usuário escolha a ação desejada.    

2. Crie uma aplicação que receba nome e salário de N funcionários. Utilize a repetição `for` e `while`.
    - Imprima o maior salário
    - Imprima o menor salário.   

3. Faça uma aplicação que imprima todos os múltiplos de 3, entre 1 e 100. Utilize a repetição `while`.   

4. Faça uma aplicação que receba N alunos com suas respectivas notas. Use `foreach` para a estrutura de repetição.
    - Crie um objeto `Alunos`.
    - Armazene os alunos em uma lista.
    - Imprima todos os alunos com médias superiores a 7.  

5. Crie uma aplicação que calcule a fórmula de Bhaskara. 
    - Receba os valores a, b, c.
    - Imprima os resultados R1 e R2.
    - Use a biblioteca `MATH`.  

6. Crie uma aplicação, que demonstre a diferença entre `REF` e `OUT`.   

7. Faça uma aplicação ler 4 números inteiros e calcular a soma dos que forem pares.   

8. Faça uma aplicação ler N valores decimais, imprima os valores em ordem crescente e decrescente.   

9. Utilizando a biblioteca `LINQ` crie no console e execute:
    - Crie uma lista que receba inteiros.
    - Imprimir todos os números da lista.
    - Imprimir todos os números da lista na ordem crescente.
    - Imprimir todos os números da lista na ordem decrescente.
    - Imprima apenas o primeiro número da lista.
    - Imprima apenas o ultimo número da lista.
    - Insira um número no início da lista.
    - Insira um número no final da lista.
    - Remova o primeiro número.
    - Remova o último número.
    - Retorne apenas os números pares.
    - Retorne apenas o número informado.
    - Transforme todos os números da lista em um `Array`.

### Utilizando POO

1. Responda e demonstre no código os itens abaixo: 
    - O que é POO?
    - O que é polimorfismo?
    - O que é abstração?
    - O que é encapsulamento?
    - Quando usar uma classe abstrata e quando devo usar uma interface?
    - O que faz as interfaces `IDisposable`, `IComparable`, `ICloneable` e `IEnumerable`?
    - Existe herança múltipla (de classes) em C#?

2. Crie uma classe para representar uma pessoa:
    - Crie os atributos privados de nome, data de nascimento e altura. 
    - Crie os métodos públicos necessários para sets e gets e também um método para imprimir todos dados de uma pessoa. 
    - Crie um método para calcular a idade da pessoa.
    - Imprima os dados via console.
  
3. Faça uma aplicação bancária.
    - Crie uma classe abstrata `ContaBancaria` que contém como atributos, `NumeroDaConta` e `Saldo`. E como métodos abstratos `Sacar` e `Depositar` que recebem um parâmetro do tipo `double`.
    - Crie as classes `ContaCorrente` e `ContaEspecial` que herdam da `ContaBancaria`. 
    - A `ContaCorrente` possui um atributo `taxaDeOperacao` que é descontado sempre que um saque e um depósito são feitos. 
    - A `ContaEspecial` possui um atributo `Limite` que dá credito a mais para o correntista caso ele precise sacar mais que o saldo. Neste caso, o saldo pode ficar negativo desde que não ultrapasse o limite. Contudo isso não pode acontecer na classe `ContaCorrente`.
    - Crie uma interface `Imprimivel` que declara um método `MostrarDados`, implemente em ambas as contas e imprima os dados em cada uma.
    - Via console, abra 2 contas de cada tipo e execute todas as operações.

4. Crie uma classe `Televisao` e uma classe `ControleRemoto` que pode controlar o volume e trocar os canais da televisão. O controle permite:
    - Aumentar ou diminuir a potência do volume de som em uma unidade de cada vez.
    - Aumentar e diminuir o número do canal em uma unidade.
    - Trocar para um canal indicado.
    - Consultar o valor do volume de som e o canal selecionado. 
    - Imprima os dados via console.

### Trabalhando com testes

1. Quais os principais frameworks que podemos usar no desenvolvimento de testes?

2. Escolha dois frameworks e faça testes unitários para pelo menos dois exercícios em cada framework.

### Bônus

Utilizando qualquer exercício, execute-o no Linux.

## Cavaleiro

- É importante que os exercícios sejam feitos em sequência, cada um será um aprendizado diferente e a sequência é evolutiva. Optamos por essa abordagem porque é interessante saber quais os problemas são resolvidos antes de usar o framework direto.
- Caso não concorde com o uso das ferramentas/frameworks/ideias, por favor, use sua experiencia e argumentos para propor melhorias.


1. Criar um serviço REST (Web API) e incluir um método GET que receba um CEP e retorne o endereço, o método deve recebe o parâmetro sem
o uso de query "busca-por-cep?cep=87000000" deve ser utilizado um modelo de rota para que seja enviado dessa forma 
"busca-por-cep/87000000". Pode ser utilizado um serviço externo de consulta de CEP "https://viacep.com.br/".

2. Criar um método POST no serviço existente que receba um endereço e retorne o CEP "busca-por-endereco". Pode ser utilizado um serviço externo de consulta de CEP "https://viacep.com.br/".

3. Criar testes unitários e de integração para garantir todo o funcionamento dos exercícios 1 e 2, o teste de integração deve
consumir o serviço e validar os retornos e evoluir conforme a evolução dos exercícios.

4. Criar uma base de dados para salvar endereços e CEPs, o objeto desse exercícios e criar as tabelas no banco SQL Server. 
A estrutura das tabelas deve contemplar os dados do serviço externo utilizado nos exercícios 1 e 2.

5. Faça a integração com o banco criado no exercícios 4 sem uso de ORMs, deve ser utilizado service e repository pattern
como abstração dos acessos a dados e regra de negócios.

6. Criar um método PUT no serviço existente para atualizar um endereço ou CEP que não exista, 
quando consultar um CEP/endereço que não exista deve ser criado um registo automaticamente (isso vai ser melhorado depois),
esse registro será o CEP sem o endereço ou o endereço sem o CEP, deve ser retornado uma informação para o usuário do serviço 
especificando que essa ação ocorreu. Após a inclusão do registo, pode ser feito a atualização, 
no caso de CEP enviar os dados do endereço para atualização. No caso de endereço, enviar o CEP para atualização.
Os serviços dos exercícios 1 e 2 devem contemplar a validação de endereço ou CEP não encontrados e inclusão de um registo. 
Devem ser criados os testes unitários e de integração para validar a inclusão de um novo endereço e atualização.
Deve ser utilizado injeção de dependencia para comsumo dos serviços e repositorios. A chamada para atualização e manual.

7. Mudar a integração com banco de dados para ORM utilizando o entity framework core, o mapeamento deve ser feito com fluent 
e deve conter migration. Manter o repository pattern, essa abstração facilitara a troca de consumo do banco.

8. Criar uma consulta por UF/Cidade/Bairro/Logradouro, deve consultar também os CEPs cadastrados da base local.

9. Publicar o serviço em algum Cloud Application Platform de sua preferência. Sugestão Heroku usando Docker.

10. Separar a aplicação em dois serviços, o primeiro ficara com parte de integração com o serviço de consulta de CEP, 
o segundo ficara com a integração com o banco de dados. No segundo serviço será necessário a inclusão de uma consulta.
Os serviços que vão se comunicar entre si, neste momento será via REST. Aplicar o exercício 9.

11. Aprender e aplicar fila de mensageria para a comunicação entre os dois serviços, lembre-se que isso será avaliado 
então pense bem como usar a fila nesse cenário.

12. Aprender e aplicar serviço de cache distribuído. Existe uma situação em que o cache seria ideal nesse cenário, 
apenas usar o cache será valido, mas saber como usar será o seu diferencial.

13. Crie uma api gateway, como usar e incluir nesse contexto faz parte da avaliação. Aplicar o exercício 9.

14. Utilize algum serviço de monitoramento de serviços.

15. Incluir no api gateway a autenticação nas requisições e incluir healthcheck em todos os serviços.

16. Incluir log em todos os serviços, pode usar o framework de sua preferência. Caso encontre alguma plataforma de monitoramento de log gratuito, aplique em todos os serviços.

## Mestre - Em breve!
