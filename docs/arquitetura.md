# Bem-vindo ao território de Arquitetura de Software do Mestre dos Códigos

## Instruções

- Cada desafio deverá estar em um repositório Git público seguindo a seguinte padronização:
    - Nomenclatura mdc-db1group-as-NIVEL-NUMERO, onde NIVEL é representado pelos valores "escudeiro", "cavaleiro" e "mestre", e NUMERO é representado pelo número do desafio resolvido.
    - Instruções de execução.
- Todos artefatos entregues devem ser produzidos com as últimas versões das tecnologias disponíveis.

## Tópicos Abordados

Todos os níveis do território de Arquitetura de Software terão avaliação sobre os seguintes tópicos:

### Segurança
    
> Um Arquiteto de Software deve garantir e prezar pela segurança da aplicação sob sua responsabilidade. Este tópico aborda questões de ambiente, aplicação e análise de vulnerabilidades comumente divulgados pela OWASP.

### Banco de Dados

> Em algumas situações o Arquiteto de Software acaba não escolhendo o banco de dados a ser utiliza, no entanto, precisa garantir ACID (Atomicity, Consistency, Isolation, Durability) dos dados.

### Boas Práticas de Programação

> A qualidade interna do software é importante para que o desenvolvimento possa fluir com facilidade potencializando a manutenibilidade. Técnicas como Clean Code, SOLID e Object Calistenics e Design Patterns são indispensáveis.

### Teste Automatizado

> Para que desenvolvedores escrevam testes sem dificuldades é necessário ter uma arquitetura que permite validar os mais variados cenários, para isso, utilizamos Testes de Unidade, Integração, Contrato, End-To-End (E2E) e Mutação.

### Entrega Contínua

> Garantir uma entrega contínua de valor para todos envolvidos é essencial, e técnicas como Continuous Integration (CI), Continuous Deployment/Delivery (CD) e Continuous Verification (CV) são fundamentais.

### Integração Entre Sistemas

> Com o aumento de softwares comunicando entre si, o grau de complexidade para manter a interoperabilidade aumenta. Para isso temos técnicas como Integration Patterns que nos auxiliam a construir integrações robustas para nossos softwares.

### Estilos Arquiteturais

> Problemas podem ser resolvidos com muitas soluções diferentes, no entanto, nem sempre a melhor solução é utilizada. Padrões e estilos arquiteturais nos ajudam a resolver problemas utilizando soluções já existentes mitigando os riscos no futuro do software.

## Escudeiro

### Construindo o alicerce

1. Implementar uma aplicação que possua as vulnerabilidades descritas no projeto OWASP Top 10.

1. Implementar uma aplicação que trate as vulnerabilidades descritas no projeto OWASP Top 10.

1. Implementar uma aplicação que utilize autenticação e autorização.

1. Implementar uma aplicação que utilize transações de banco de dados, controlando que uma transação não seja afetada por outra.

1. Implementar uma aplicação que utilize todos os principios de SOLID.

1. Implementar uma aplicação que contenha testes de unidade.

1. Implementar uma aplicação que contenha testes de integração.

1. Implementar um pipeline de Continuous Integration.

1. Implementar uma aplicação utilizando o padrão arquitetural de Messaging Broker com técnicas de padrões de integração.

1. Implementar uma aplicação utilizando o estilo arquitetural de Client-Server.

1. Implementar uma aplicação utilizando o estilo arquitetural de N-tier.

1. Implementar uma aplicação utilizando o estilo arquitetural de Layered.

1. Desenhar uma solução que utilize o estilo arquitetural monolítico.

## Cavaleiro

### Levantando paredes

1. Desenhar uma solução que garanta que problemas de segurança não ocorram na arquitetura do software baseado nos 3 (três) requisitos descritos no projeto OWASP Software Assurance Maturity Model (SAMM) (vide itens SA1, SA2 e S3). A solução escolhida deve atender uma gama de projetos.

1. Implementar uma aplicação que utilize autenticação e autorização utilizando o protocolo OAuth 2.0.

1. Construa um ambiente que utilize HTTP e HTTPS, onde as requisições na rede privada usarão HTTP e na rede pública usarão HTTPS.

1. Implementar uma aplicação que utilize mais de uma transação de banco de dados no mesmo processo.

1. Dado 3 (três) bancos de dados relacionais, escolher apenas um para determinada aplicação, justificando a decisão da escolha e da rejeição dos demais.

1. Implementar uma aplicação que utilize todas as regras do Object Calisthenics.

1. Implementar uma aplicação que contenha testes End-To-End (E2E).

1. Implementar uma aplicação que contenha testes de contrato.

1. Implementar um pipeline de Continuous Deployment.

1. Implementar uma aplicação utilizando o padrão arquitetural de Publish-Subscribe (Pub-Sub) com técnicas de padrões de integração.

1. Implementar uma aplicação utilizando o estilo arquitetural SOAP.

1. Implementar uma aplicação utilizando o estilo arquitetural REST.

1. Implementar uma aplicação utilizando o estilo arquitetural Hexagonal.

## Mestre

### Dando vida ao seu projeto

1. Implementar as soluções desenhadas na atividade 1 da trilha de Cavaleiro para o item SA1, SA2 e SA3 do projeto OWASP SAMM.

1. Implementar uma aplicação que utilize autenticação e autorização utilizando OpenID.

1. Implementar uma aplicação que realize commit e rollback de informações em dois bancos de dados distintos.

1. Dado 3 (três) bancos de dados não relacionais, escolher apenas um para determinada aplicação, justificando a decisão da escolha e da rejeição dos demais.

1. Implementar uma aplicaço que implemente todos os Design Pattenrs do GoF (Gang of Four).

1. Implementar uma aplicação que contenha testes de mutação.

1. Implementar um aplicação que contenha testes de carga.

1. Implementar um pipeline de Continuous Delivery.

1. Implementar um pipeline que implemente Continuous Verification.

1. Implementar uma aplicação utilizando o padrão arquitetural de Command Query Responsibility Segregation (CQRS) com técnicas de padrões de integração.

1. Implementar uma aplicação utilizando o estilo arquitetural de Event Driven.

1. Implementar uma aplicação utilizando o estilo arquitetural de Microservices.

1. Implementar uma aplicação utilizando o estilo arquitetural de Serveless.