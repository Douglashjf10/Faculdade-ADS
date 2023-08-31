internal class Program
{
        //Console.Write("Informe o seu nome: ");
        //string nome = Console.ReadLine();

        //Console.Write("Informe a sua idade: ");
        //int? idade = null;

        //Console.WriteLine($"Nome: {nome}, idade{idade + 1},");

        //Comando ref passar por parametro a referencia da sub-rotina
    private static void Main(string[] args)
    {
        int idade = 20;

        Alterar(ref idade);

        Console.WriteLine(idade);
    }
    static void Alterar(ref int numero)
    {
        numero = numero *2;
    }

    class produto
    {
        private int _codigo;
        public int Codigo
        {
            get{return _codigo;}
            set{Codigo = value;}
        }
    }

}