internal class Program
{   //Faça uma função que receba por parâmetro uma string e retorne o número de vogais existentes na string recebida.

    //Faça uma função que receba uma matriz de números inteiros e retorne o maior número existente na matriz.

    //Faça um programa que leia um vetor de contatos. Para essa questão, um contato deve ser uma classe e deve possuir os atributos nome(string) e telefone(string).
    //Após a leitura do vetor de contatos, solicite ao usuário que informe os últimos dígitos do telefone do usuário que o usuário deseja listar. Apresente uma lista contendo o(s)
    //nome(s) e telefone(s) dos(s) contato(s) cujo último dígito seja igual ao informado pelo usuário. Observação: se o tamanho do vetor for alterado no sistema, o seu código deve
    //continuar funcionando adequadamente.
    
    
    static int MatInteiros(int[,] mat)
    {
        int maiorMatriz = mat[3,3];
        int num;

        for(int i =0; i < mat.GetLength(0);i++)
        {
            for(int j =0; j < mat.GetLength(1); j++)
            {
                num = mat[i,j];
                
                if(num > maiorMatriz)
                {
                    maiorMatriz = num;
                }
            }
        }
        return maiorMatriz;
    }
    
    static int ContarVogais(string texto)
    {
        int cont = 0;
        char c;

        for(int i =0; i< texto.Length; i++)
        {
            c = texto[i];
            if(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U')
            {
                cont++;
            }
        }
        return cont;
    }
    private static void Main(string[] args)
    {
       char ultimoDigito;

       contato[] contatos = new contato[3];


       for(int i = 0; i< contatos.Length; i++)
       {
            Console.WriteLine("Contatos {0}: ",i + 1);

            contatos[i] = new contato();
            
            Console.Write("Nome: ");
            contatos[i].Nome = Console.ReadLine();

            Console.Write("Telefone: ");
            contatos[i].Telefone = Console.ReadLine();


       }
        Console.Write("Digite o último número de telefone: ");
        ultimoDigito = Convert.ToChar(Console.ReadLine());

        bool contatoEncontrado = false;

        for(int i = 0; i < contatos.Length; i++)
        {
            if(contatos[i].Telefone[contatos[i].Telefone.Length - 1] == ultimoDigito)
            {
                Console.WriteLine("Nome: {0} / {1}",contatos[i].Nome,contatos[i].Telefone);
                contatoEncontrado = true;
            }
            if(!contatoEncontrado)
            {
                Console.WriteLine("Nenhum contato encontrado com ultimo dígito igual");
            }
        }
    }

}