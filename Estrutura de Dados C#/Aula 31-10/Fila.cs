public class Fila
{
    public void Adicionar(int valor)
    {
        var novoNo = new No { Valor = valor };

        if (primeiro == null)
            primeiro = ultimo = novoNo;
        else
        {
            ultimo.Proximo = novoNo;
            ultimo = novoNo;
        }
    }

    public void Remover()
    {
        if (primeiro == null)
            throw new Exception("Não é possível remover um elemento de uma fila vazia.");

        if (primeiro == ultimo)
            primeiro = ultimo = null;
        else
        {
            primeiro = primeiro.Proximo;
        }
    }

    public int? Primeiro
    {
        get { return primeiro?.Valor; }
    }

    private No primeiro = null;
    private No ultimo = null;
}