using System;

class Produto

{
    private int codigo;
    private string descricao;
    private double preco;

    public int Codigo
    {
        get{return codigo;}
        set{codigo = value;}
    }
    public string Descricao
    {
        get{return descricao;}
        set{descricao = value;}
    }
    public double Preco
    {
        get{return preco;}
        set{preco = value;}
    }

}