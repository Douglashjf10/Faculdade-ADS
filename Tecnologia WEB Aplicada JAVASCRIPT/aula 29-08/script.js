var mariana = {
    quantidade: 10,
    conta() {
        var letra = '';
        var contagem = [];
        for (var i = 1; i <= this.quantidade; i++) {
            contagem.push(` é ${i} `);
            letra +=
                `Mariana conta ${i} \n` +
                `Mariana conta ${i}: ${contagem} é!\n`;


            letra += contagem.toString();
            letra += `é!\n`;
            letra += `Ana, viva a Mariana, viva a Mariana \n\n`;
        };
        console.log(letra);
    }
};
mariana.conta();
