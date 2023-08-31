

public class Empresa
{
    private String nome;
    private Funcionario[] funcionarios;
    
    public Empresa(){
        nome = "";
    }
    public Empresa(String nome){
        this.nome = nome;
        funcionarios = new Funcionario[3];
        //funcionarios[0] = new Funcionario(); 
        //pegar o nome do primeiro funcionario
        //funcionarios[2].getNome()
        //metodo getNome retorna uma string no metodo funcionario
    }
    
    public double totalPagamento(){
        double total = 0;
        /*for(int i = 0; i < funcionarios.length; i++){
            total += funcionarios[i].getSalarioBruto();
        }
        */
       for(Funcionario f: funcionarios){
            total += f.salarioLiquido();
        }
        return total;
    }
    
    public Funcionario[] getFuncionarios(){
        return funcionarios;
    }
    public void addFuncionarios(int pos, Funcionario func){
        if (pos >= 0 && pos <= funcionarios.length){
        funcionarios[pos] = func;
        }
    }
    
    public void addFuncionarios(int pos){
        if (pos >= 0 && pos <= (funcionarios.length -1)){
        funcionarios[pos] = null;
        }
    }
    
    public Funcionario searchFuncionario(String nome){
        for(int i =0; i < funcionarios.length; i++)
        {
            if(nome.equals(funcionarios[i].getNome() ))
            {
                return funcionarios[i];
            }
        }
        return null;
    }
    //public void setFuncionarios(Funcionario[] vetFunc){
    //    funcionarios = vetFunc;
    //}
    
    public String getNome(){
        return this.nome;
    }
    public void setNome(String nome){
        if ( !nome.toUpperCase().equals("")   ){
           this.nome = nome;
        }
    }
}
