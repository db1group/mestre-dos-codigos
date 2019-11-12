# Bem-vindo ao território de .Net do Mestre dos Códigos

## Nível Escudeiro

## Instruções

- Todas as respostas devem estar em algum repositório GIT na nuvem como projeto público.
- Você pode criar um único projeto ou vários projetos no repositório GIT, mas é importante que haja em algum lugar um arquivo informando a resolução de cada desafio, de forma que o avaliador encontre-o facilmente.
- É importante que existam instruções de execução dos desafios.

# Pré requisitos

- Visual Studio 2019 ou similar instalado.
- Instale as ferramentas necessárias para rodar o Net core. (Instalação do ambiente faz parte da avaliação.)
- SQL server configurado.

### Perguntas teóricas de introdução

1. Em quais linguagens o C# foi inspirado ?
2. Inicialmente o C# foi criado para qual finalidade ?
3. Quais os principais motivos para a Microsoft ter migrado para o Core ?
4. Cite as principais diferenças entre .Net Full Framework e .Net Core.

### Trabalhando no Console

1. Crie uma aplicação, que receba os valores A e B. Mostre de forma simples, como utilizar variáveis e manipular dados.
    - Some esses 2 valores;
    - Faça uma subtração do valor A - B;
    - Divida o valor B por A;
    - Multiplique o valor A por B;
    - Imprima os valores de entrada, informado se o número é par ou impar;
    - Imprima todos os resultados no console, de forma que o usuário escolha a ação desejada.    

2. Crie uma aplicação que receba nome e salario de N funcionários. Utilize a repetição for e while.
    - Imprima o maior salario
    - Imprima o menor salario.   

3. Faça uma aplicação que imprima todos os múltiplos de 3, entre 1 e 100. Utilize a repetição while.   

4. Faça uma aplicação que receba N alunos com suas respectivas notas. Use foreach para estrutura de repetição.
    - Crie um objeto alunos
    - Armazene os alunos em uma lista.
    - Imprima todos os alunos com medias superiores a 7.  

5. Crie uma aplicação que calcule a fórmula de Bhaskara. 
    - Receba os valores a,b,c.
    - Imprima os resultados R1 e R2.
    - Use a biblioteca MATH.  

6. Crie uma aplicação, que demonstre a diferença entre REF e OUT.   

7. Faça uma aplicação ler 4 números inteiros e calcular a soma dos que forem pares.   

8. Faça uma aplicação ler N valores decimais, imprima os valores em ordem crescente e decrescente.   

9. Utilizando a biblioteca LINQ crie no console e execute:
    - Crie uma lista que receba inteiros.
    - Imprimir todos os números da lista.
    - Imprimir todos os números da lista na ordem crescente.
    - Imprimir todos os números da lista na ordem decrescente.
    - Imprima apenas o primeiro número da lista
    - Imprima apenas o ultimo número da lista
    - Insira um numero no inicio da lista.
    - Insira um numero no final da lista.
    - Remova o primeiro número .
    - Remova o ultimo número .
    - Retorne apenas os número pares.
    - Retorne apenas o número informado.
    - Transforme todos os numero da lista em um array.

### Utilizando POO

1. Responda e demonstre no código os itens abaixo: 
    - O que é POO?
    - O que é polimorfismo?
    - O que é abstração?
    - O que é encapsulamento?
    - Quando usar uma classe abstrata e quando devo usar uma interface?
    - O que faz as interfaces IDisposable, IComparable, ICloneable e IEnumerable?
    - Existe herança múltipla (de classes) em C#?

2. Crie uma classe para representar uma pessoa
    - Crie os atributos privados de nome, data de nascimento e altura. 
    - Crie os métodos públicos necessários para sets e gets e também um método para imprimir todos dados de uma pessoa. 
    - Crie um método para calcular a idade da pessoa.
    - Imprima os dados via console.
  

3. Faça uma aplicação bancaria.
    - Crie uma classe abstrata Conta Bancaria que contém como atributos, numero da conta e o saldo, e como métodos abstratos sacar e depositar que recebem um parâmetro do tipo double.
    - Crie as classes Conta Corrente e Conta Especial que herdam da Conta Bancaria. 
    - A Conta Corrente possui um atributo taxaDeOperação que é descontado sempre que um saque e um depósito são feitos. 
    - A Conta Especial possui um atributo limite que dá credito a mais para o correntista caso ele precise sacar mais que o saldo. Neste caso, o saldo pode ficar negativo desde que não ultrapasse o limite. Contudo isso não pode acontecer na classe Conta Corrente.
    - Crie uma interface Imprimível que declara um método MostrarDados, implemente em ambas contas e imprima os dados em cada uma.
    - Via console, abra 2 contas de cada tipo execute todas as operações.

  

4. Crie uma classe Televisão e uma classe ControleRemoto que pode controlar o volume e trocar os canais da televisão. O controle de volume permite:
    - Aumentar ou diminuir a potência do volume de som em uma unidade de cada vez.
    - Aumentar e diminuir o número do canal em uma unidade.
    - Trocar para um canal indicado.
    - Consultar o valor do volume de som e o canal selecionado. 
    - Imprima os dados via console.

  

### Trabalhando com testes

1. Quais os principais frameworks que podemos usar no desenvolvimento de testes ?

2. Escolha dois frameworks e faça testes unitários para pelo menos dois exercícios em cada framework.

### BONUS

Utilizando qualquer exercício, execute-o no Linux.

## Cavaleiro - Em breve!

## Mestre - Em breve!