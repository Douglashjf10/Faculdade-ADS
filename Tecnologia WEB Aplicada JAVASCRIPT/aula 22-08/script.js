function teste(parametro){
    console.log(parametro);
}

var teste2 = function(params){
    console.log(params);
}


var imc = (peso,altura) =>{
    return peso / (altura ** 2);
    //return imc;
}
console.log(imc);

function exerciciosResolvidos(resolvidos){
    return `Ainda faltam ${totalExercicios - resolvidos} exercícios para resolver`;
    var totalExercicios = 10;
}
console.log(exerciciosResolvidos(6));

var nota = 10;
var media = 7;
var frequenciaMin = 0.75;
function aprovado(nota,frequencia){
    if(nota >= media){
        if(frequencia >= frequenciaMin){
            return true;
        }
    }
    return false;
}
console.log(aprovado(7,0.8));

//Crie uma função matemática que retorne o perímetro de um quadrado

function perimetroQuadrado(lado){
    var perimetro = lado * 4;
    return perimetro;
}

//Crie uma função que retorne o seu nome completo, ela deve possuir os parâmetros: nome e sobrenome

var nomeCompleto = (nome, sobrenome) => {
   return `${nome} ${sobrenome}`;
}   
    addEventListener('scroll',() =>{
        console.log(nomeCompleto('Douglas Henrique','Almeida'));
    }
);
