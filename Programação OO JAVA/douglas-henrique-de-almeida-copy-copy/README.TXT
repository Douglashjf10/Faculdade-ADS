## ENUNCIADO

Uma empresa possui diversos funcionarios.Cada funcionario e remunerado da seguinte forma:
salario bruto -13% de inss + 3% se usar vale transporte + R$115,00 por filho, ate o limite de 3 filhos.
Se o cargo for de gerencia, ganha 10% do bruto.

Quanto ganha todos os funcionarios da empresa.

Classes

Empresa ok
- funcionarios
- nome
+ TotalSalarios

Funcionario ok
-Salario Bruto
-usa Vale
-numero Filhos
-eh Gerente
+Salario Liquido

Salario N


public double calcularSalarioLiquido() {
        double inss = salarioBruto * 0.13;
        double salarioLiquido = salarioBruto - inss;
        
        if (usaValeTransporte) {
            salarioLiquido += salarioBruto * 0.03;
        }
        
        salarioLiquido += numeroFilhos * 115.00;
        
        if (cargoGerencial) {
            salarioLiquido += salarioBruto * 0.10;
        }
        
        return salarioLiquido;
    }