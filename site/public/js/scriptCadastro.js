const senha = document.querySelector(".senha");
const olho = document.querySelector(".btn");
const olho1 = document.querySelector(".btn1");
const senha1 = document.querySelector(".senha1");



olho.onclick = () => {
  if (senha.type === "password") {
    senha.type = "text";
    olho.src = "./assets/icon/blind.png";
  } else {
    senha.type = "password";
    olho.src = "./assets/icon/eye.png";
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

};
function verify() {
  var nome = inpNome.value;
  var senha = inpSenha.value;
  var confirmacao = confirmSenha.value;
  var email = inpEmail.value;
  var campos_validos = "no";
  if(nome == "" && senha == "" && confirmacao == "" && email == ""){
    alert("Preencha todos os campos!");

  }
  else if (nome == "") {
    alert("Digite seu nome!");        
                
  } else if (email == "") {
    alert("Digite o seu email");

  } else if (!email.includes("@") && !email.includes(".")) {
    alert("Digite um email válido!");

    inpEmail.placeholder = "Digite seu e-mail";
  } else if (senha == "") {
    alert("Digite sua senha.");

  } else if (confirmacao == "") {
    alert("Não se esqueça de confirmar sua senha.");

  } else if (senha != confirmacao) {
    alert("A senha e a confirmação não coincidem!");
  } else {
    campos_validos = "yes";
  }
if (campos_validos == "yes") {
        cadastrar();
    }
}

