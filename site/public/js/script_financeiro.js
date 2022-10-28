function calc() {

    var valorAlface = slcAlface.value;
    var qtdAlface = txtAlface.value;
    var total = valorAlface * qtdAlface;
    var totalPreju = total * 0.81
    var lucro3 = total * 3
    var lucro6 = total * 6
    var lucro10 = total * 10
   

    if (qtdAlface <= 0) {
        alert(`Insira um valor maior que 0.`)   
    } else if (isNaN(qtdAlface)) {
        alert(`Insira um valor válido!`)
    } else {
        p_msg.innerHTML = "O lucro sem a nossa solução é de: R$ " + totalPreju.toFixed(2) + "<br>";
        p_msg.innerHTML += "Com a nossa solução você passa a lucrar (+19%): R$ " + total.toFixed(2) + "<br>";
        p_msg.innerHTML += `Após três(3) encomendas com a nossa solução seu lucro passa a ser de R$${lucro3.toFixed(2)} <br>`
        p_msg.innerHTML += `Após seis(6) encomendas com a nossa solução seu lucro passa a ser de R$${lucro6.toFixed(2)} <br>`
        p_msg.innerHTML += `Após dez(10) encomendas com a nossa solução seu lucro passa a ser de R$${lucro10.toFixed(2)}`
    }
    
}