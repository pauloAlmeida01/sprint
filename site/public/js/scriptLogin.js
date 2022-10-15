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
        var campos_validos = "no";
        if (!email.includes("@")) {alert("Digite um email válido!")}
        else if (senha == '') {
            alert('Digite uma senha válida!')
        }
        else{campos_validos = "yes";}
        
        if (campos_validos == "yes") {
            window.location.replace("dashboard/dashboard.html");
        }
        }