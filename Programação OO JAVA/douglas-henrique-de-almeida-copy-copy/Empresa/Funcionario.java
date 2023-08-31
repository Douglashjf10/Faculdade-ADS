
public class Funcionario
{
    //atributos
    String nome;
    double salarioBruto;
    boolean usaValeTransporte, ehGerente;
    int numeroFilhos;
    
    //Construtor
    Funcionario(String vNome,double vSalBruto,
    boolean vVale, boolean vGerente, int vNumFilhos){
        nome = vNome;
        salarioBruto = vSalBruto;
        usaValeTransporte = vVale;
        ehGerente = vGerente;
        numeroFilhos = vNumFilhos;
    }
    // Metodos da Classe
    
    double inss(){
        return salarioBruto * 0.13;
    }
    double descontoVale(){
        return (usaValeTransporte)?(salarioBruto*0.03):0;
    }
    double bonusPorFilho(){
        return (numeroFilhos >= 0 && numeroFilhos <=3)?(numeroFilhos * 115):3 * 115;
    }
    double bonusGerencia(){
        return (ehGerente)?(salarioBruto*0.1):0;
    }
    
    double salarioLiquido(){        
        return salarioBruto - inss() - descontoVale() +
            bonusPorFilho() + bonusGerencia();
    }
}
