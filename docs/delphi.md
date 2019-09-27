# Bem  vindo ao território de Java do Mestre dos Códigos

## Escudeiro

1. Em uma aplicação console, construa um programa que faça o cálculo fatorial do número informado pelo usuário.

2. Em uma aplicação console, construa um programa que leia uma lista de números informada pelo usuário. Em seguida, através do algoritmo merge-sort, faça a ordenação da lista e apresente o resultado.

3. Em uma aplicação console, escreva um programa que leia os seguintes dados: nome do vendedor, salário fixo e total de vendas. Considerando que o salário fixo tem um acréscimo de 15% com base no total vendido, apresente na tela: o nome do usuário, o salário fixo e o valor a receber. Obs: Utilize um objeto para armazenar essas informações do vendedor.

4. Escreva uma aplicação console que receba uma lista de nomes completos (nome e sobrenome) informados pelo usuário. Estes nomes deverão ser convertidos para caixa-mista, ou seja, as iniciais de cada nome devem ser maiúsculas. Leve em consideração que as preposições (“de”, “do”, “dos”, ”e”, etc.) devem ser convertidas para minúsculas.

5. Em uma aplicação console, construa um programa que leia uma lista de frases. Apresente ao usuário apenas as frases que formam um palíndromo.

6. Escreva uma DLL que execute os seguintes cálculos geométricos: área de um triângulo, área do círculo e área do retângulo/quadrado. Construa um programa console que carregue a DLL de forma **dinâmica**. Neste programa, o usuário deve entrar com o tipo de cálculo que deseja executar e os valores referentes ao cálculo. No final da execução, o resultado deve ser apresentado em tela.

7. Escreva uma DLL que transcreva um dado número por extenso. Construa um programa console que faça o carregamento **estático** da DLL. Neste programa, o usuário poderá entrar com um número qualquer e, como saída, o programa deverá transcrever o número por extenso em tela.

8. Em uma aplicação console, escreva uma classe que implemente o algoritmo de pilha. Esta classe deverá utilizar _Generics_ para poder armazenar qualquer tipo de conteúdo e conter os métodos `Push`, `Pop`, `Size` e `IsEmpty`. Após a implementação da classe, faça:
   + Construa dois objetos. Um deve armazenar `strings` e outro deve armazenar inteiros;
   + Adicione três `strings` aleatórias e 15 números aleatórios (podem ser entradas do usuário);
   + Imprima o retorno da função `Size` dos dois objetos;
   + Execute o método `Push` da pilha de `strings`, mostrando o resultado no console, até que a pilha esteja vazia;
   + Faça o mesmo procedimento com a pilha de inteiros;
   + Imprima o retorno da função `Size` dos dois objetos;

9. Em uma aplicação console, crie uma classe chamada `TFuncionario` que armazene os dados de funcionários (nome, email e telefone). Crie também uma classe, utilizando _Generics_, chamada `TCacheObjetos`. O seu funcionamento será como um cache de objetos e deverá armazenar instâncias de diferentes tipos. Sendo assim, caso o cache não contenha uma instância da classe solicitada, `TCacheObjetos` deverá criá-la, armazenar no seu cache interno e retornar a instância.
Para testar a aplicação, crie duas variáveis (`funcionario1` e `funcionario2`). Crie também uma instância de `TCacheObjetos` e peça que ele retorne uma instância de `TFuncionario` na variável `funcionario1`. Preencha os valores do funcionário. Em seguida, peça uma instância de `TFuncionario` em `funcionario2`. Os valores das duas variáveis deverão ser iguais, já que serão a mesma instância.

10. Em uma aplicação console, crie uma classe que executará operações matemáticas, chamada  `TClasseMatematica`. Ela terá duas propriedades do tipo `double`, chamadas `Esquerda` e `Direita`, e também uma propriedade que receberá um método anônimo que referencie uma function, com retorno do tipo `double` (crie o tipo com o nome `TOperacaoMatematica`). A aplicação solicitará ao usuário qual operação deve ser executada (+ - * /) e os números da operação (`Esquerda` e `Direita`). De acordo com a entrada do usuário, a operação matemática correta será executada através de um método anônimo, presente na propriedade do tipo `TOperacaoMatematica`.

11. Em uma aplicação console, crie um tipo enumerado que represente os continentes. Construa um `Record Helper` para este tipo com os seguintes métodos:
    + `AsLabel`: com uma descrição amigável ao usuário;
    + `AsString`: com o nome do Enum;
    + `AsByte`: com a representação numérica do Enum;
    + `Parse`: que transforme um Byte no Enum.

12. Criar um Class Helper para a classe `TStringList` com as seguintes funções:
    + `IsEmpty`: Verifica se lista está vazia;
    + `HasDuplicate`: Verifica se a lista contém valores duplicados;
    + `ToJSON`: Verifica se o conteúdo da Lista está no formato Nome=Valor. Caso esteja, transforme o conteúdo conforme a notação JSON e retorne como string (não é necessário utilizar as classes nativas neste momento). Caso não esteja, lance uma exceção informando que não foi possível converter o conteúdo.

13. Crie uma `Interface` com um método de leitura de arquivos (`LerDoArquivo`) e outra `Interface` com um método de escrita de arquivos (`SalvarParaArquivo`). Escreva uma classe que implemente essas duas `Interfaces`, cujos métodos devem carregar e salvar o conteúdo dessa classe. Dica: O conteúdo pode ser uma `TStringList`.

14. Implemente o diagrama abaixo:

![Diagrama](img/diagrama-delphi.png)

15. Crie uma aplicação console. Em uma unit, crie uma classe `TNotepad`, com o método `Executar`. Este método deverá abrir o bloco de notas para o usuário. Em outro arquivo, escreva a classe `TCriadorMagico` que, utilizando `RTTI`, construa uma instância de `TNotepad` de forma dinâmica, apenas pelo seu QualifiedClassName, sem adicioná-la à seção uses. Na unit do projeto, crie uma instância de `TCriadorMagico` para abrir o bloco de notas.

16. Construa uma aplicação VCL. Esta aplicação deverá conter uma classe que, utilizando `RTTI`, faça a listagem das propriedades e métodos de qualquer classe passada por parâmetro. A apresentação da listagem fica por sua conta.

15. A partir de uma sentença digitada pelo usuário, execute a pesquisa na API do GitHub (https://api.github.com/search/repositories?q={busca}), substituindo o texto {busca}  pela entrada do usuário. Carregue a resposta da API em um objeto com os seguintes campos: `id, name, html_url e description`. Por fim, liste todas as ocorrências encontradas para o usuário. A aplicação pode ser console ou VCL.

18. Utilizando classes nativas do Delphi (`System.JSON`), crie um conteúdo JSON que contenha campos do tipo texto, numérico, condicional e lista. O resultado do JSON deve ser igual ao abaixo: 


        {
            "player": "Mystery",
            "active": true,
            "territories": [
                {
                    "territory": "Delphi",
                    "level": "Squire",
                    "experience": 17,
                    "dateLastMission": "2019-08-20"
                },
                {
                    "territory": "SQL",
                    "level": null,
                    "experience": 0,
                    "dateLastMission": null
                },
                {
                    "territory": "Software Architecture",
                    "level": "Knight",
                    "experience": 34,
                    "dateLastMission": "2019-07-01"
                }
            ]
        }

19. Faça o download do <a href="https://github.com/db1global/mestre-dos-codigos/tree/master/docs/files/users-delphi.xml" target="_blank">XML</a>. Crie um projeto VCL no Delphi. Utilizando o assistante XML Data Binding, faça a leitura do XML previamente baixado. Leia o conteúdo do XML nas classes geradas e o apresente em um componente TMemo no seguinte formato:

            ID: 3
            Nome: Tanyahbbhvvg
            Sobrenome: Koch
            Gênero: female
            Data de Nascimento: 22/09/1976
            E-mail: clangosh@example.com
            Telefone: 1-440-621-2581 x967
            Website: http://www.halvorson.com/rerum-soluta-dolores-delectus-inventore-rem-architecto
            Endereço: 812 Terry Wall Alvahchester, ID 41791-2432
            Status: active
            Link (HATEOAS):
            |_ Recurso: https://gorest.co.in/public-api/users/3
            |_ Editar: https://gorest.co.in/public-api/users/3
            |_ Avatar: https://lorempixel.com/250/250/people/?23168 

20. Construa uma aplicação VCL e carregue o XML do exercício anterior. Sem alterar a estrutura base do XML, construa uma tela onde seja possível:
    + Navegar entre os registros;
    + Adicionar, remover e alterar os valores de cada campo;
    + Salvar as modificações em arquivo, mantendo a estrutura original.

## Cavaleiro - Em breve!

## Mestre - Em breve!