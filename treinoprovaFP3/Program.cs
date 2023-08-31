internal class Program
{
    private static void Main(string[] args)
    {
        JogoFutebol[] jogos = new JogoFutebol[7];
        double mediaQuedas;
        int totalQuedas = 0, jogosAbaixoMedia = 0;

        for(int i = 0;i<jogos.Length;i++)
        {
            Console.WriteLine("Jogo {0} de {1}: ",i+1,jogos.Length);

            Console.Write("Adversário: ");
            jogos[i].adversario = Console.ReadLine();

            Console.Write("Pontos: ");
            jogos[i].pontos = Convert.ToInt32(Console.ReadLine());

            Console.Write("Quedas: ");
            jogos[i].quedas = Convert.ToInt32(Console.ReadLine());
        }
        for(int i =0;i<jogos.Length;i++)
        {
            totalQuedas += jogos[i].quedas;
        }
        mediaQuedas = Convert.ToDouble(totalQuedas) / jogos.Length;
        Console.WriteLine("Média de quedas: {0:N2}",mediaQuedas);
    
        for(int i =0;i<jogos.Length;i++)
        {
            if(jogos[i].quedas < mediaQuedas)
            {
                jogosAbaixoMedia++;
            }
        }
        Console.WriteLine("Jogos com quedas abaixo da média:{0}",jogosAbaixoMedia);
    }
}