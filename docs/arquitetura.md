# Bem-vindo ao território de Arquitetura de Software do Mestre dos Códigos

## Instruções

- Cada desafio deverá estar em um repositório Git público seguindo a seguinte padronização:
    - Nomenclatura mdc-db1group-as-NIVEL-NUMERO, onde NIVEL é representado pelos valores "escudeiro", "cavaleiro" e "mestre", e NUMERO é representado pelo número do desafio resolvido.
    - Instruções de execução.

## Tópicos Abordados

Todos os níveis do território de Arquitetura de Software terão avalição sobre os seguintes tópicos:

### Segurança
    
    Um Arquiteto de Software deve garantir e prezar pela segurança da aplicação sob sua responsabilidade. Este tópico aborda questões de ambiente, aplicação e análise de vulnerabilidades comumente divulgados pela OWASP.

### Banco de Dados

    Em algumas situações o Arquiteto de Software acaba não escolhendo o banco de dados a ser utiliza, no entanto, precisa garantir ACID (Atomicity, Consistency, Isolation, Durability) dos dados.

### Boas Práticas de Programação
### Teste de Automatizado
### Entrega Contínua
### Estilos Arquiteturais
### Padrões Arquiteturais


## Escudeiro

### Construindo o alicerce

1.1. Construir uma aplicação que não trate as 5 últimas vulnerabilidades descritas no Top 10 da OWASP.

1.2. Construir uma aplicação que trate as 5 últimas vulnerabilidades descritas no Top 10 da OWASP.

1.3. Construir uma aplicação que utilize transações de banco de dados, controlando que uma transação não seja afetada por outra.

## Cavaleiro

### Levantando paredes

2.1. Construir uma aplicação que não trate as 5 primeiras vulnerabilidades descritas no Top 10 da OWASP.

2.2. Construir uma aplicação que trate as 5 primeiras vulnerabilidades descritas no Top 10 da OWASP.

2.3. Desenhar uma solução que garanta que problemas de segurança não ocorram na arquitetura do software baseado nos 3 (três) requisitos descritos no Software Assurance
Maturity Model da OWASP (vide itens SA1, SA2 e S3). A solução escolhida deve atender uma gama de projetos.

2.4. Construir uma aplicação que utilize mais de uma transação de banco de dados no mesmo processo.

2.5. Dado 3 (três) bancos de dados relacionais, escolher apenas um para determinada aplicação, justificando a decisão da escolha e da rejeição dos demais.

## Mestre

### Dando vida ao seu projeto

3.1. Para cada item utilizar um projeto diferente.

3.1.1. Implementar a solução desenhada na atividade 2.3 para o item SA1.

3.1.2. Implementar a solução desenhada na atividade 2.3 para o item SA2.

3.1.3. Implementar a solução desenhada na atividade 2.3 para o item SA3.

3.2. Construir uma aplicação que realize commit  e rollback de informações em dois bancos de dados distintos.

3.3. Dado 3 (três) bancos de dados não relacionais, escolher apenas um para determinada aplicação, justificando a decisão da escolha e da rejeição dos demais.