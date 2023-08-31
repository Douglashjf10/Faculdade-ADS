using System.Numerics;
//Faça um procedimento recursivo que receba por parâmetro um vetor 𝑣𝑒𝑡 de
//números reais e, multiplique por −1 todos os elementos negativos desse vetor.
//Para esse exercício não se pode utilizar as estruturas de repetição (for, while e do
//while).
internal class Program
{
    static void lerPositivos(double[] vet, int indice = 0){

        if(indice < vet.Length){
            if (vet[indice] < 0)
            {
                vet[indice] *= -1;
            }
            lerPositivos(vet, indice + 1);
        }
    }
    
    //Faça uma função recursiva que receba um número inteiro 𝑛 por parâmetro e
//retorne a soma dos números inteiros entre zero e 𝑛. A função deve funcionar
//adequadamente tanto para 𝑛 positivo quanto para negativo. Para esse exercício
//não se pode utilizar as estruturas de repetição (for, while e do while).

    static int somaInteiros(int n)
    {
        if(n > 0)
        {
            return n + somaInteiros(n - 1);
        }
        else if(n < 0)
        {
            return + somaInteiros(n + 1);
        }
        else
        return 0;
    }
    private static void Main(string[] args)
    {
       
    }
}