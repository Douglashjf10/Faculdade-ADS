var aluno = {
    nome: "Joãozinho",
    nota: 8.0,
    matricula: 123456,
    frequencia: 0.9,
    aprovado() {
        if((this.nota >= 6) && (this.frequencia >= 0.7)){
            return "Aprovado";
        }else{
            return "Reprovado";
        }
    }
    
};

//this referencia o atributo que está dentro do objeto

if(this.nota >= 6 && this.frequencia >= 0.7){
    console.log('Aprovado');
}else{
    console.log('Reprovado');
}

//Aprovado nota ou igual a 6 e frequencia maior ou igual a 70%

console.log(`O aluno tem o nome ${aluno.nome} tem a nota: ${aluno.nota} e foi ${aluno.aprovado()}`);

console.log(aluno);
aluno.telefone = "(32)99984-5842";
console.log(aluno);

var texto = "Este é um texto";
console.log(texto.length);


