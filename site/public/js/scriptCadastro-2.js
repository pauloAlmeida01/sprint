function cadastrar2() {
    var cep = ipt_cep.value
    var numero = ipt_numero.value
    var logradouro = ipt_logradouro.value
    var complemento = ipt_complemento.value
    var cidade = ipt_cidade.value
    var campos_validos = 'no'

    if (cep == '') {
        alert('Digite seu CEP!')
    }
    else if (cep.length < 8 || cep.length > 8) {
        alert('O CEP deve conter 8 números')
    }
    else if (numero == '') {
        alert('Digite o número!')
    }
    else if (isNaN(numero)) {
        alert('Por favor digite um número válido!')
    }
    else if (logradouro == '') {
        alert('Digite o Logradouro!')
    }
    else if (complemento == '') {
        alert('Digite o complemento!')
    }
    else if (cidade == '') {
        alert('Digite sua Cidade!')
    }
    else{alert('Cadastro efetuado com sucesso!')
    campos_validos = 'yes'
    }

    if (campos_validos == 'yes') {
    window.location.replace("login.html")        
    }
}