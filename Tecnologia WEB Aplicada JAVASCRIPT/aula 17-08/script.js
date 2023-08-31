function areaQuadrado(lado){
    return lado * lado;
}
areaQuadrado(4);
areaQuadrado(5);
areaQuadrado(2);

function imprimeAreaQuadrado(lado){
    console.log(lado*lado);
}  

function imprimeAreaRetangulo(base,altura){
    var area = base * altura;
    console.log(`A area do retângulo com base: ${base} e altura: ${altura} é ${area}`);
}

imprimeAreaRetangulo(3,4);

var areaQuadrado2 = areaQuadrado(5); // retorna a função. Com () retorna o resultado da função.

console.log(areaQuadrado2);

//addEventListener('click', function(){ //Adciona um evento na função
//    console.log('Clicou');
//})

function imprimeClique(){
    console.log('Clicou');
}
addEventListener('click',imprimeClique);

//calculo imc

function imc(peso,altura){
    const imc = peso / (altura ** 2);
    return imc;
}

var resultado = imc(70, 1.76);

console.log(`O número ${resultado} é do tipo ${typeof resultado}`);

function terceiraIdade(idade){
    if(typeof idade !== 'number'){
        return 'Informe a sua idade!';
    }else if(idade >= 60){
        return true;
    }else{
        return false;
    }
}