

public class Funcionario
{
    //atributos
    private String nome;
    private double salarioBruto;
    private boolean usaValeTransporte, ehGerente;
    private int numeroFilhos;
    
    //Construtor
    public Funcionario(String vNome,double vSalBruto,
    boolean vVale, boolean vGerente, int vNumFilhos){
        nome = vNome;
        salarioBruto = vSalBruto;
        usaValeTransporte = vVale;
        ehGerente = vGerente;
        numeroFilhos = vNumFilhos;
    }
    public Funcionario(){ }
    
    //Metodos de Acesso
    public String getNome(){
        return this.nome;
    }
    public void setNome(String nome){
        //if ( idade != 80)
        //if ( nome != "" ){
        if ( !nome.toUpperCase().equals("")   ){
           this.nome = nome;
        }
    }
    
    public int getNumeroFilhos(){
        return this.numeroFilhos;
    }    
    public void setNumeroFilhos(int numeroFilhos){
        if (numeroFilhos >= 0){
           this.numeroFilhos = numeroFilhos;
        }
    }
    
    public double getSalarioBruto(){
        return this.salarioBruto;
    }    
    public void setSalarioBruto(double salarioBruto){
        if (salarioBruto >= 0){
           this.salarioBruto = salarioBruto;
        }
    }
    
    public boolean getUsaValeTransporte(){
        return this.usaValeTransporte;
    }    
    public void setUsaValeTransporte(boolean usaValeTransporte){
           this.usaValeTransporte = usaValeTransporte;
    }
    
    public boolean getEhGerente(){
        return this.ehGerente;
    }    
    public void setEhGerente(boolean ehGerente){
           this.ehGerente = ehGerente;
    }
    
    
    // Metodos da Classe
    
    public double inss(){
        return salarioBruto * 0.13;
    }
    public double descontoVale(){
        return (usaValeTransporte)?(salarioBruto*0.03):0;
    }
    public double bonusPorFilho(){
        return ( numeroFilhos <=3)?(numeroFilhos * 115):3 * 115;
    }
    public double bonusGerencia(){
        return (ehGerente)?(salarioBruto*0.1):0;
    }
    
    public double salarioLiquido(){        
        return salarioBruto - inss() - descontoVale() +
            bonusPorFilho() + bonusGerencia();
    }
}
