import java.util.Scanner;

public class Pincipal
{
    public static void main(String args[]){
        
        Scanner leia = new Scanner(System.in);
        
        System.out.println("### EMPRESA XPTO ###");
        
        System.out.println("# informe o nome da empresa?");        
        Empresa emp = new Empresa( leia.next() );
        
        //Ler os Funcionarios
        while (true){
            Funcionario f = new Funcionario();
            System.out.println("## nome do Funcionario?");
            f.setNome( leia.next() );
            System.out.println("## Salario Bruto?");
            f.setSalarioBruto( leia.nextDouble() ); 
            System.out.println("## numero de Filhos?");
            f.setNumeroFilhos( leia.nextInt() ); 
            System.out.println("## usa Vale transporte?");
            f.setUsaValeTransporte( leia.nextBoolean() );
            System.out.println("## E Gerente? (Sim ou Nao)");
            f.setEhGerente( leia.next().equalsIgnoreCase("S") );             
            
            System.out.println("## Nome "+f.getNome()
                +" Salario R$"+f.salarioLiquido());
            System.out.println("Deseja cadastrar outro? (S/N)");
            if ( leia.next().equalsIgnoreCase("N")  ){
                break;
            }            
        }
        
        System.out.println("# empresa :: "+emp.getNome() ); 
        
          
        
        
        
    }
}
