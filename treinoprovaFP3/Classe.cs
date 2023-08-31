using System;

public class JogoFutebol
{
    private string _adversario;
    public string adversario
    {
        get{return _adversario;}
        set{_adversario = value;}
    }

    private int _pontos;
    public int pontos
    {
        get{return _pontos;}
        set{_pontos = value;} 
    }    

    private int _quedas;
    public int quedas
    {
        get{return _quedas;}
        set{_quedas = value;}
    }

}

