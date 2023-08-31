

public class Funcionario
{
  String nome;
  double salarioBruto;
  boolean usaValeTransporte, EhGerente;
  int numeroFilhos;
    //Construtor  
    Funcionario(String vNome, double vSalBruto, boolean vVale, boolean vGerente, int vNumFilhos){
        nome = vNome;
        salarioBruto = vSalBruto;
        usaValeTransporte = vVale;
        EhGerente = vGerente;
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
        return (numeroFilhos >= 0 && numeroFilhos <= 3)?(numeroFilhos * 115):3 * 115;
    }
    
    double bonusGerencia(){
        return (EhGerente)?(salarioBruto * 0.1):0;
    }
    
    
    double salarioLiquido(){
        return salarioBruto - inss() - descontoVale() +
            bonusPorFilho() + bonusGerencia();
    
    }
    
}

 //double salarioLiquido(){
        
        //double sl = salarioBruto * 0.87;
        //if(usaValeTransporte ){
          // sl -= (salarioBruto * 0.03);
        //}
        //if(numeroFilhos >= 0 && numeroFilhos <= 3){
        //salarioBruto += numeroFilhos * 115;
        //}else{
          //  sl += 3 * 115;
        //}
        //if(EhGerente){
          //  sl += (salarioBruto * 0.1);
        //}
        //return sl;
    //}