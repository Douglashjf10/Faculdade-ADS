internal class Program
{
    static void ImprimirDiagonalPrimaria(int[,] matriz)
    {
        int tamanhoX = matriz.GetLength(0);
        int tamanhoY = matriz.GetLength(1);

        if (tamanhoX != tamanhoY)
        {
            Console.WriteLine("Não é possível acessar a diagonal primária da matriz.");
            return;
        }
        for(int i =0; i<tamanhoX;i++)
        {
            Console.Write(matriz[i,i] +"");
        }
    }


    private static void Main(string[] args)
    {
        int[,] matriz1 = new int[3,3];
        int[,] matriz2 = new int[3,3];

        for(int i =0;i<matriz1.GetLength(0);i++)
        {
           for(int j =0;j<matriz1.GetLength(1);j++)
           {
            Console.Write("Digite os valores da primeira matriz: ");
            matriz1[i,j] = Convert.ToInt32(Console.ReadLine());
           }
        }
        for(int x = 0;x<matriz2.GetLength(0);x++)
        {
            for(int z =0;z<matriz1.GetLength(1);z++)
            {
                Console.Write("Digite os valores da segunda matriz: ");
                matriz2[x,z] = Convert.ToInt32(Console.ReadLine());
            }
        }

        ImprimirDiagonalPrimaria(matriz1);
        Console.WriteLine();
        ImprimirDiagonalPrimaria(matriz2);

    }
}