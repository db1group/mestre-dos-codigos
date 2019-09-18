# Bem  vindo ao caminho de Dotnet do Mestre dos Códigos

## Escudeiro

Torne-se um escudeiro superando todos os desafios a seguir ;)

1. Em quais linguagens o C# foi inspirado?

2. Inicialmente o C# foi criado para qual finalidade?

3. Quais os principais motivos para a Microsoft ter migrado para o Core?

4. Cite as principais diferenças entre .Net Framework e .Net Core.

5. Quais funcionalidade do C# utilizam linguagem funcional?

6. Com base na declaração da classe abaixo:

        public class Tools
        {
            public static int Timeout = 1000;
        }

Marque o que for correto:

 - [ ] `var tools = new Tools(); Console.WriteLine(tools.Timeout);`
 - [ ] `Console.WriteLine(Tools.Timeout);`
 - [ ] `Console.WriteLine(Timeout);`

7. Qual será a saída do seguinte conjunto de instruções?  

        try
        {
          new InvalidOperationException();
        }
        catch (InvalidOperationException)
        {
          Console.WriteLine("InvalidOperationException exception");
        }
          finally
        {
          Console.WriteLine("Finally");
        }


 - [ ] InvalidOperationException exception
 - [ ] InvalidOperationException exception Finally
 - [ ] Finally
 - [ ] Haverá um erro de compilação.
 - [ ] Haverá uma exceção em tempo de execução.

8. Qual será a saída do seguinte conjunto de instruções ? 

        int x = 100; 
        
        Console.WriteLine(@"X is equal to {x}"); 
        Console.WriteLine($@"X is equal to {x}"); 
        Console.WriteLine($"X is equal to {x}"); 

 - [ ] Haverá um erro de compilação. 
 - [ ] Haverá uma exceção em tempo de execução. 
 - [ ] `X is equal to 100`, `X is equal to 100` e `X is equal to 100`
 - [ ] `X is equal to {x}`, `X is equal to 100` e `X is equal to 100` 
 - [ ] `X is equal to 100`, `X is equal to 100` e `X is equal to {x}`

9. Marque as respostas corretas para o código abaixo. 
 
        class Program 
        {     
          public interface IMyInterface     
          {         
            public int TestMethod();     
          }       
          
          protected class MyClass : IMyInterface     
          {         
            public int TestMethod()         
            {             
              return 0;         
            }     
          }       
          
          static void Main(string[] args)
          {       

          } 
        } 
 
 - [ ] Haverá um erro de compilação porque o MyClass está protegido. 
 - [ ] Haverá um erro de compilação porque TestMethod tem uma declaração incorreta no IMyInterface.
 - [ ] O código deve compilar corretamente. 

10. Qual será a saída do seguinte conjunto de instruções? 
 
        string firstName = "Jenny";     
        firstName.ToUpper();     
        Console.WriteLine(firstName); 
 
  - [ ] JENNY será exibido no console. 
  - [ ] Jenny será exibido no console.
  - [ ] Erro de compilação. 

11. O que faz o Garbage Collector (GC)? 
 
  - [ ] Garante que os objetos que não têm mais referências são apagados da memória.
  - [ ] Garante que os objetos sejam definidos como nulos quando não forem mais usados. 

12. Qual das seguintes afirmações sobre enums são verdadeiras? 
 
 - [ ] O tipo de armazenamento subjacente padrão enum é int e não pode ser alterado.
 - [ ] O valor padrão da variável enum é 0.
 - [ ] Um string pode ser convertido para a variável enum usando Enum.Parse.
 - [ ] Tentar converter int em um valor que não contém no enum resultará em uma exceção sendo lançada.

13. Quais das seguintes maneiras de sobrecarregar um método em C # estão corretas? 

 - [ ] Uma ordem diferente de parâmetros (pelo menos uma diferença na ordem dos tipos de parâmetro).
 - [ ] Tipo de retorno diferente.
 - [ ] Um número diferente de parâmetros.
 - [ ] Um tipo de dados de parâmetro diferente.

14. Quais classes da coleção permitem que os elementos sejam acessados usando uma chave exclusiva? 
 
 - [ ] Stack
 - [ ] List 
 - [ ] Dictionary
 - [ ] ListDictionary 
 - [ ] Hashtable

15. Quais das seguintes afirmações **NÃO são VERDADEIRAS** sobre o Entity Framework? 

 - [ ] Ele cuida da conectividade do banco de dados  
 - [ ] Não fornece nenhum mecanismo para rastrear alterações nos objetos do modelo
 - [ ] Ele gera automaticamente as classes do modelo e atualiza essas classes dinamicamente quando o modelo é alterado 
 - [ ] Ele fornece a sintaxe de consulta para consultar o modelo 

16. Qual será a saída a seguir? 

        class​ ​A 
        {     
          ​public​ ​virtual​ ​void​ ​Act​()     
          {         
            Console.WriteLine(​"A"​);     
          } 
        }

        class​ ​B​ : ​A 
        {     
          ​public​ ​override​ ​void​ ​Act​()     
          {         
            Console.WriteLine(​"B"​);     
          } 
        }

        class​ ​C​ : ​A 
        { 
          ​public​ ​override​ ​void​ ​Act​()     
          {         
            Console.WriteLine(​"C"​);     
          } 
        }

        class​ ​D​ : ​A 
        {     
          ​public​ new ​void​ ​Act​()     
          {         
            Console.WriteLine(​"D"​);     
          } 
        }

        class​ ​Program 
        {     
          ​static​ ​void​ ​Main​()     
          {         
            ​var​ objects = ​new​ List<A>         
            {             ​
              new​ B(),             
              ​new​ C(),             
              ​new​ D()         
            }; 
                
            ​foreach​ (​var​ item ​in​ objects)         
            {             
              item.Act();         
            }     
          } 
        }

17. Qual é a saída de a + b? 
 
        var a​ = ​"10"​; var b ​= 0.11; 
 
 - [ ] 10.11 
 - [ ] 100.11
 - [ ] Error

18. Qual das seguintes declarações sobre interfaces C# é verdadeira? 

  - [ ] As classes podem implementar 2 interfaces que possuem a mesma assinatura de método
  - [ ] Interfaces podem ser instanciadas diretamente. 
  - [ ] Interfaces podem ser herdadas por outras interfaces (Correto) 
  - [ ] Os membros da interface podem ter modificadores de acesso. 
  - [ ] Interfaces podem conter apenas métodos como membros. 