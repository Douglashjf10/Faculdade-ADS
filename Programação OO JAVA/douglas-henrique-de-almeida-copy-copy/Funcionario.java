

public class Funcionario
{
 private String nome;
 private double salarioBruto;
 private boolean usaValeTransporte, EhGerente;
 private int numeroFilhos;
    //Construtor  
    Funcionario(String vNome, double vSalBruto, boolean vVale, boolean vGerente, int vNumFilhos){
        nome = vNome;
        salarioBruto = vSalBruto;
        usaValeTransporte = vVale;
        EhGerente = vGerente;
        numeroFilhos = vNumFilhos;
    }
    public Funcionario(){}
    
    public void setSalarioBruto(double salarioBruto){
        this.salarioBruto = salarioBruto;
    }
    
    public void setusaValeTransporte(boolean usaValeTransporte){
        this.usaValeTransporte = usaValeTransporte;
    }
    
    public void setEhGerente(boolean EhGerente){
        this.EhGerente = EhGerente;
    }
    //Metodos de Acesso
    public String getNome(){
        return nome;
    }
    public void setNome(String nome){
        //this.nome = nome; //this vai na classe que esta com variavel private
        //if ( nome != "" ){
        if ( !nome.equals("")  ){
            this.nome = nome;
        //.equals e um metodo so serve para classe
        }
    }
    // Metodos da Classe
    public double inss(){
        return salarioBruto * 0.13;
    }
    
    public double descontoVale(){
        return (usaValeTransporte)?(salarioBruto*0.03):0;
    }
    
    public double bonusPorFilho(){
        return (numeroFilhos >= 0 && numeroFilhos <= 3)?(numeroFilhos * 115):3 * 115;
    }
    
    public double bonusGerencia(){
        return (EhGerente)?(salarioBruto * 0.1):0;
    }
    
    
    public double salarioLiquido(){
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