# Bem-vindo ao território de Arquitetura de Software do Mestre dos Códigos

## Instruções

- Cada desafio deverá estar em um repositório Git público seguindo a seguinte padronização:
    - Nomenclatura mdc-db1group-as-NIVEL-NUMERO, onde NIVEL é representado pelos valores "escudeiro", "cavaleiro" e "mestre", e NUMERO é representado pelo número do desafio resolvido.
    - Instruções de execução.

## Tópicos Abordados

Todos os níveis do território de Arquitetura de Software terão avalição sobre os seguintes tópicos:

### Segurança
    
> Um Arquiteto de Software deve garantir e prezar pela segurança da aplicação sob sua responsabilidade. Este tópico aborda questões de ambiente, aplicação e análise de vulnerabilidades comumente divulgados pela OWASP.

### Banco de Dados

> Em algumas situações o Arquiteto de Software acaba não escolhendo o banco de dados a ser utiliza, no entanto, precisa garantir ACID (Atomicity, Consistency, Isolation, Durability) dos dados.

### Boas Práticas de Programação

> A qualidade interna do software é importante para que o desenvolvimento possa fluir com facilidade potencializando a manutenibilidade. Técnicas como SOLID e Object Calistenics e Design Patterns são indispensáveis.

### Teste Automatizado

> Para que desenvolvedores escrevam testes sem dificuldades é necessário ter uma arquitetura que permite validar os mais variados cenários, para isso, utilizamos Testes de Unidade, Integração, Contrato, End-To-End (E2E) e Mutação.

### Entrega Contínua

> Garantir uma entrega contínua de valor para todos envolvidos é essencial, e técnicas como Continuous Integration (CI), Continuous Deployment/Delivery (CD) e Continuous Verification (CV) são fundamentais.

### Estilos Arquiteturais

> Problemas podem ser resolvidos com muitas soluções diferentes, no entanto, nem sempre a melhor solução é utilizada. Estilos arquiteturais nos ajudam a resolver problemas utilizando soluções já existentes mitigando os riscos no futuro do software.

## Escudeiro

### Construindo o alicerce

1.1. Construir uma aplicação que não trate as 5 últimas vulnerabilidades descritas no Top 10 da OWASP.

1.2. Construir uma aplicação que trate as 5 últimas vulnerabilidades descritas no Top 10 da OWASP.

1.3. Construir uma aplicação que utilize transações de banco de dados, controlando que uma transação não seja afetada por outra.

1.4. Garantir que todas as aplicações desenvolvidas não possuam Code Smells e tenham ferramenta de análise de código.

1.5. Para cada item utilizar as técnicas de teste FIRST e AAA. Os casos de teste não podem conter Test Smells.

1.5.1. Construir uma aplicação que contenha testes de unidade.

1.5.2. Contruir uma aplicação que contenha testes de integração.

1.6. Construir um pipeline de Continuous Integration.

1.7. Construir uma aplicação utilizando o estilo arquitetural de Client-Server.

1.8. Construir uma aplicação utilizando o estilo arquitetural de Onion.

1.9. Construir uma aplicação utilizando o estilo arquitetural de N-tier.

1.10. Construir uma aplicação utilizando o estilo arquitetural de Layered.

1.11. Construir uma aplicação utilizando o estilo arquitetural de Messaging Broker.

## Cavaleiro

### Levantando paredes

2.1. Construir uma aplicação que não trate as 5 primeiras vulnerabilidades descritas no Top 10 da OWASP.

2.2. Construir uma aplicação que trate as 5 primeiras vulnerabilidades descritas no Top 10 da OWASP.

2.3. Desenhar uma solução que garanta que problemas de segurança não ocorram na arquitetura do software baseado nos 3 (três) requisitos descritos no Software Assurance
Maturity Model da OWASP (vide itens SA1, SA2 e S3). A solução escolhida deve atender uma gama de projetos.

2.4. Construir uma aplicação que utilize mais de uma transação de banco de dados no mesmo processo.

2.5. Dado 3 (três) bancos de dados relacionais, escolher apenas um para determinada aplicação, justificando a decisão da escolha e da rejeição dos demais.

2.6. Garantir que todas as aplicações desenvolvidas não possuam Code Smells e tenham ferramenta de análise de código.

2.7. Para cada item utilizar as técnicas de teste FIRST e AAA. Os casos de teste não podem conter Test Smells.

2.7.1. Construir uma aplicação que contenha testes End-To-End (E2E).

2.7.2. Contruir uma aplicação que contenha testes de contrato.

2.8. Construir um pipeline de Continuous Deployment.

2.9. Construir uma aplicação monolítica utilizando as aplicações criadas nos itens 1.7, 1.8, 1.9, 1.10 e 1.11.

2.10. Construir uma aplicação utilizando o estilo arquitetural Hexagonal.

2.11. Construir uma aplicação utilizando o estilo arquitetural de Event Driven.

2.12. Construir uma aplicação utilizando o estilo arquitetural de Command Query Responsibility Segregation (CQRS).

## Mestre

### Dando vida ao seu projeto

3.1. Para cada item utilizar um projeto diferente.

3.1.1. Implementar a solução desenhada na atividade 2.3 para o item SA1.

3.1.2. Implementar a solução desenhada na atividade 2.3 para o item SA2.

3.1.3. Implementar a solução desenhada na atividade 2.3 para o item SA3.

3.2. Construir uma aplicação que realize commit  e rollback de informações em dois bancos de dados distintos.

3.3. Dado 3 (três) bancos de dados não relacionais, escolher apenas um para determinada aplicação, justificando a decisão da escolha e da rejeição dos demais.

3.4. Garantir que todas as aplicações desenvolvidas não possuam Code Smells e tenham ferramenta de análise de código.

3.5. Para cada item utilizar as técnicas de teste FIRST e AAA. Os casos de teste não podem conter Test Smells.

3.5.1. Construir uma aplicação que contenha testes de mutação.

3.6. Construir um pipeline de Continuous Delivery.

3.7. Construir um pipeline que implemente Continuous Verification.

3.8. Construir uma aplicação utilizando o estilo arquitetural de Microservices.

3.9. Construir uma aplicação utilizando o estilo arquitetural de Serveless.