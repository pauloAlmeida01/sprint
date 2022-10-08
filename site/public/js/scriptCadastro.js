const senha = document.querySelector('.senha');
    const olho = document.querySelector('.btn');
    const senha1 = document.querySelector('.senha1');
    const olho1 = document.querySelector('.btn1');

    olho.onclick = () => {
        if(senha.type === 'password'){
            senha.type = 'text';
            olho.src = './assets/icon/blind.png';
        }else{
            senha.type = 'password';
            olho.src = './assets/icon/eye.png';
        }

    olho1.onclick = () => {
        if(senha1.type === 'password'){
            senha1.type = 'text';
            olho1.src = './assets/icon/blind.png';
        }else{
            senha1.type = 'password';
            olho1.src = './assets/icon/eye.png';
        }
    }
    }