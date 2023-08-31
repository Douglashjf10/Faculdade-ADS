var aluno = {
    nome: "Joãozinho",
    nota: 8.0,
    matricula: 123456,
    frequencia: 0.9,
};
var joao = {
    nome: "Joao",
    nota: 8.0,
    matricula: 123456,
    frequencia: 0.9,
};

var maria = {
    nome: "Maria",
    nota: 8.0,
    matricula: 123456,
    frequencia: 0.9,
};

var juca = {
    nome: "Juca",
    nota: 8.0,
    matricula: 123456,
    frequencia: 0.9,
};

var alunos = [joao, maria];

alunos.push(juca);


for (var i = 0; i < alunos.length; i++) {

    console.log(alunos[i].nome);
}

// Crie o objeto Mariana, que tem o atributo numero e o metodo conta
// O metodo conta deve contar até o valor de numero e exibir a letra
// da música

//var mariana = {
//	numero: 20,
//	conta(){
//	}
//}

var mariana = {
    numero: 10,
    conta() {
        for (let i = 1; i <= this.numero; i++) {
            switch (i) {
                case 1:
                    console.log("Um");
                    break;
                case 2:
                    console.log("Dois");
                    break;
                case 3:
                    console.log("Tres");
                    break;
                case 4:
                    console.log("Quatro");
                    break;
                case 5:
                    console.log("Cinco");
                    break;
                case 6:
                    console.log("Seis");
                    break;
                case 7:
                    console.log("Sete");
                    break;
                case 8:
                    console.log("oito");
                    break;
                case 9:
                    console.log("Nove");
                    break;
                case 10:
                    console.log("Dez");
                    break;
                case 11:
                    console.log("Onze");

            }
        }
    }
}
mariana.conta(); 