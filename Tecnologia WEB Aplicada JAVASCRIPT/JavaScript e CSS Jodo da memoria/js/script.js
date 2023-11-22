/* 1- Exibindo imagens
Quando o jogo iniciar deverão ser exibidas na tela cards com imagens de personagens, objetos
ou paisagens.
Essas imagens devem estar armazenadas em um array e serem exibidas dinamicamente
utilizando Javascript.
Exiba no mínimo 15 imagens.
Exemplo:
2- Temporizador
Deverá ser inserido um cronômetro regressivo na tela, quando a contagem zerar as imagens
iniciais deverão sumir da tela.
Substitua algumas das imagens iniciais por outras que não foram exibidas previamente.
Embaralhe e exiba o novo conjunto de imagens na tela.
Exemplo:
3- Encontrar imagens
A partir de agora permita ao usuário clicar nas imagens: ao clicar em uma imagem ela deverá
desaparecer da tela.
O objetivo será apagar todas as imagens que estavam nas duas telas.
Se o jogador clicar em uma imagem que não estava na primeira tela ele perde. Por exemplo,
tentar apagar a imagem a seguir que não estava na primeira tela:
O jogador ganha se restarem somente as imagens que eram diferentes nas duas telas: */


let imagem = [
  "./assets/images/America.png",
  "./assets/images/Athletico Paranaense.png",
  "./assets/images/Atlético Mineiro.png",
  "./assets/images/Bahia.png",
  "./assets/images/Botafogo.png",
  "./assets/images/Corinthians.png",
  "./assets/images/Coritiba.png",
  "./assets/images/Cuiaba.png",
  "./assets/images/Cruzeiro.png",
  "./assets/images/Flamengo.png",
  "./assets/images/Fluminense.png",
  "./assets/images/Fortaleza.png",
  "./assets/images/Goias.png",
  "./assets/images/Grêmio.png",
  "./assets/images/Internacional.png",
  "./assets/images/Palmeiras.png",
  "./assets/images/Red Bull Bragantino.png",
  "./assets/images/Santos.png",
  "./assets/images/São Paulo.png",
  "./assets/images/Vasco da Gama.png",
];


function shuffleArray(array) {
  return array.sort(() => Math.random() - 0.5);
}

const img = document.querySelector(".imagem");

let vetorImg1 = [];
let vetorImg2 = [];

function iniciarImagens() {
  shuffleArray(imagem);
  let i = 0;
  while (i < 15) {
    const imagemElement = document.createElement('img');
    imagemElement.src = imagem[i];
    vetorImg1[i] = imagem[i];
    imagemElement.className = `img`;
    imagemElement.id = `imagem${i + 1}`;
    imagemElement.alt = `imagem ${i + 1}`;
    img.appendChild(imagemElement);
    i++;
  }
}


function iniciarImagens2() {
  shuffleArray(imagem);
  let i = 0;
  while (i < 15) {
    const trocaImg = document.querySelector(`#imagem${i + 1}`);
    trocaImg.setAttribute('src', imagem[i]);
    vetorImg2[i] = imagem[i];
    i++;
  }
}


const minutos = document.querySelector("#minutos");
const segundos = document.querySelector("#segundos");
const milisegundos = document.querySelector("#milisegundos");
const botaoIniciar = document.querySelector("#iniciar");
const cronometro = document.querySelector(".container");
let min = 0, sec = 30, milisec = 0;
let intervalo;
let parar = false;
let start = true;


function iniciarJogo() {
  if (start) {
    iniciarImagens();
    botaoIniciar.remove();
    intervalo = setInterval(() => {
      if (parar === false) {
        milisec -= 10;
        if (milisec < 0) {
          milisec = 999;
          sec--;
          if (sec < 0) {
            sec = 59;
            min--;
            if (min < 0) {
              min = 0;
              sec = 0;
              milisec = 0;
              parar = true;
              start = false;
              clearInterval(intervalo);
              iniciarImagens2();
              removeIMG();
            }
          }
        }
        minutos.textContent = formatCronometro(min);
        segundos.textContent = formatCronometro(sec);
        milisegundos.textContent = formatMilisec(milisec);
      }
    }, 10);
  }
}

function formatCronometro(tempo) {
  return (tempo < 10) ? `0${tempo}` : tempo;
}

function formatMilisec(tempo) {
  return (tempo < 100) ? `${tempo}`.padStart(3, "0") : tempo;
}

function removeIMG() {
  const imagens = document.querySelectorAll('.img');
  let cont = 0;
  imagens.forEach(aimagem => {
    aimagem.addEventListener('click', event => {
      let errado = true;
      for (let i = 0; i < 15; i++) {
        if (aimagem.getAttribute('src') == vetorImg1[i]) {
          errado = false;
          cont++;
          break;
        }
        else if (aimagem.getAttribute('src') != vetorImg1[i]) {
          errado = true;
        }
      }
      if (errado) {
        alert(`Fim de jogo: \nInfelizmente você não conquistou os 3 pontos... \nSua pontuação: ${cont}/${pontuacaoVitoria()} acertos!  \nPor quê não tenta novamente?` );
        window.location.reload();
      }
      else if (cont == pontuacaoVitoria()) {
        alert(`Parabéns!!! \nJá posso te chamar de Campeão Brasileiro?  \nVocê achou todos os escudos dos times!!! \nSua pontuação: ${cont}/${pontuacaoVitoria()}!`);
        window.location.href = "../index.html";
      }
      aimagem.remove();
    });
  });
}


function pontuacaoVitoria() {
  let cont = 0;
  vetorImg1.forEach(elemento => {
    vetorImg2.forEach(elemento2 => {
      if (elemento == elemento2)
        cont++;
    });
  })
  return cont;
}