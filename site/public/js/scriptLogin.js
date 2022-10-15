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
    function entrar() {
        var email = ipt_email.value
        var senha = ipt_senha.value
        if (email.includes("@") && email.includes(".")) {}
        else{alert("Digite um email válido!")}
        if (senha == '') {
            alert('Digite uma senha válida!')
        }
        window.location.replace("dashboard/dashboard.html");
        }