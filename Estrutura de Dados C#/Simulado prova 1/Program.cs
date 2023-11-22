/*Faça uma função recursiva que receba um número inteiro por parâmetro e retorne
true se o número for um número perfeito ou false caso contrário. Um número perfeito é um
número natural para o qual a soma de todos os seus divisores naturais é igual ao próprio número.
Esta função não pode utilizar comandos de repetição.
*/
internal class Program
{

    private static void Main(string[] args)
    {
        Console.Write("Digite um número positivo: ");
        int num = Convert.ToInt32(Console.ReadLine());

        if(num <= 0)
        {
            Console.WriteLine("Favor insira um número inteiro positivo: ");            
        }
        else
        {
            bool resultado = LernumeroPerfeito(num);
            Console.WriteLine($"O número {num} é um número perfeito ? \n{resultado}");
        }
    }


    static bool LernumeroPerfeito(int num, int divisor = 1, int soma = 0)
    {
        
        if (divisor >= num)
        {
            return soma == num;
        }
        
        if(num % divisor == 0)
        {
            soma += divisor;            
        }

        return LernumeroPerfeito (num, divisor + 1, soma);
    
    }

    /*Questão 2) Faça três procedimentos. Cada procedimento deve receber um vetor de atletas e reorganizar o mesmo em ordem decrescente do peso do atleta. O primeiro procedimento deve utilizar o método bolha, o segundo o método da inserção e o terceiro o método da seleção.
    */

    static void metodoBolhaAtletas(int[] vet)
    {
        int trocas = 0;
        bool trocar;

        do
        {
            trocar = false;
            for(int i = 0; i < vet.Length - 1; i++)
            {
                if(vet[i] > vet[i + 1])
                {
                    int j = vet[i];
                    vet[i] = vet[i + 1];
                    vet[i + 1] = j;
                    
                    trocas++;
                    trocar = true;                    
                }         
            }
        } while(trocar);

    }

    static void metodoInsercao(int[] atletas)
    {
        for(int i = 1; i < atletas.Length; i++)
        {
            int c = atletas[i];
            int j = i - 1;            
        
        while(j >= 0 && atletas[j] < c)
        {
            atletas[j + 1] = atletas[j];
            j--;            
        }
            atletas[j + 1] = c;            
        }                
    }

    static void metodoSelecao(int[] vetor)
    {
        
        for(int i = 0; i < vetor.Length - 1; i++)
        {
            int indice = i;

            for(int j = i + 1; j < vetor.Length; j++)
            {
                if(vetor[j] > vetor[indice])
                {
                   indice = j; 
                }                
            }

            var aux = vetor[i];
            vetor[i] = vetor[indice];
            vetor[indice] = aux;
        }        
    }
    
}
