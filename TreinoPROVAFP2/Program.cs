internal class Program
{
    private static void Main(string[] args)
    {   
        int codigoProcurado;
        
        Produto[] produtos = new Produto[5];

        for(int i = 0; i<produtos.Length;i++)
        {
            produtos[i] = new Produto();

            Console.WriteLine("Informe os dados do produto {0} de {1}:",i + 1,produos.Length);
            Console.Write("Código: ");
            produtos[i].Codigo = Convert.ToInt32(Console.ReadLine());
            Console.Write("Descrição: ");
            produtos[i].Descricao = Console.ReadLine();
            Console.Write("Preço: ");
            produtos[i].Preco = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine();
        }
        Console.Write("Digite o código do produto que deseja procurar: ");
        codigoProcurado = Convert.ToInt32(Console.ReadLine());

        bool produtoEncontrado = false;
        for(int i = 0;i<produtos.Length;i++)
        {
            if(produtos[i].Codigo == codigoProcurado)
            {
                Console.WriteLine("Descrição:",produtos[i].Descricao);
                Console.WriteLine("Preço: ",produtos[i].Preco);
                produtoEncontrado = true;
                break;
            }
        }
        if(!produtoEncontrado)
        {
            Console.WriteLine("Produto inexistente.");
        }
    }
}