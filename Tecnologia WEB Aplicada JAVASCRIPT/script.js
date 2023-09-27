function alternarTamanhoTexto() {
    const corpo = document.querySelector('body');
    const botao = document.getElementById('aumentar-texto');

    if (corpo.classList.contains('texto-pequeno')) {
        corpo.classList.remove('texto-pequeno');
        corpo.classList.add('texto-regular');
        botao.innerText = "Aumentar Texto";
    } else if (corpo.classList.contains('texto-regular')) {
        corpo.classList.remove('texto-regular');
        corpo.classList.add('texto-grande');
        botao.innerText = "Diminuir Texto";
    } else if (corpo.classList.contains('texto-grande')) {
        corpo.classList.remove('texto-grande');
        corpo.classList.add('texto-pequeno');
        botao.innerText = "Aumentar Texto";
    } else {
        corpo.classList.add('texto-regular');
        botao.innerText = "Diminuir Texto";
    }
}

document.getElementById('aumentar-texto').addEventListener('click', alternarTamanhoTexto);

document.getElementById('diminuir-texto').addEventListener('click', function diminuirTexto() {
    const corpo = document.querySelector('body');

    if (corpo.classList.contains('texto-grande')) {
        corpo.classList.remove('texto-grande');
        corpo.classList.add('texto-regular');
    } else if (corpo.classList.contains('texto-regular')) {
        corpo.classList.remove('texto-regular');
        corpo.classList.add('texto-pequeno');
    } else if (!corpo.classList.contains('texto-pequeno')) {
        corpo.classList.add('texto-regular');
    }
});

