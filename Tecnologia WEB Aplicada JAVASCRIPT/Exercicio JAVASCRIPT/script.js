function cantarElefantes(numeroElefantes) {
    for (var i = 1; i <= numeroElefantes; i++) {
        if (i === 1) {
            console.log(`${i} elefantes incomoda muita gente.`);
        } else {
            console.log(`${i} elefantes incomodam, incomodam muito mais`);
        }
    }
    for (var i = numeroElefantes - 1; i > 1; i--) {
        console.log(`${i} elefantes infomodam, muito mais`);
    }
    console.log("1 elefante incomoda muito menos.");
}

cantarElefantes(10);