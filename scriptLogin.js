var senha = document.querySelector('.senha');
    var olho = document.querySelector('.btn');

    olho.onclick = () => {
        if(senha.type === 'password'){
            senha.type = 'text';
            olho.src = './assets/icon/blind.png';
        }else{
            senha.type = 'password';
            olho.src = './assets/icon/eye.png';
        }
    }