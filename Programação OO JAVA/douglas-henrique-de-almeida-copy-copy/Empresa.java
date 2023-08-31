
public class Empresa
{
    private String nome;
    private Funcionario[] funcionarios;
    
    public Empresa(){
        nome = "";
    }
    public Empresa(String nome){
        this.nome = nome;

    }
    public String getNome(){
        return this.nome;
    }
    public void setNome(String nome){
        if( !nome.toUpperCase().equals("") ){
            this.nome = nome;
        }
    }
    
}
