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
    function cadastrar() {
        var nome = ipt_nome.value
        var telefone = ipt_telefone.value
        var cnpj = ipt_cnpj.value
        var senha = ipt_senha.value
        var confirmacao = ipt_confirmSenha.value
        var email = ipt_email.value
        var campos_validos = 'no'
        if (telefone == '') {
            alert('Você precisa digitar o seu telefone!')
        }
        if (cnpj == '') {
            alert('Você precisa digitar seu CNPJ!')
        }
        if (senha == '') {
            alert('Digite sua senha.')
        }
        if (confirmacao == '') {
            alert('Não se esqueça de confirmar sua senha.')
        }
        if (email == '') {
            alert('Digite o seu email')
        }
        if (telefone.length < 10 || telefone.length > 10) {
            alert('Digite um número de telefone válido!')
        }
        if (cnpj.length < 14 || cnpj.lenght > 14) {
            alert('Digite um CNPJ válido!')
        }
        if (senha != confirmacao) {
            alert('A senha e a confirmação não coincidem!')
        }
        if (email.includes("@") && email.includes(".")) {
            campos_validos = 'yes';
        }
        else{alert('Digite um email válido!')}
        
        if (campos_validos == 'yes') {
            window.location.replace("cadastro-2.html")
        }
    }