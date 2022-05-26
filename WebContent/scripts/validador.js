function validar() {
	
    let nome = cadastro.nome.value
	let email = cadastro.email.value
	let senha = cadastro.senha.value
	let endereco = cadastro.endereco.value
	let cidade = cadastro.cidade.value
	let UF = cadastro.UF.value
	let CEP = cadastro.CEP.value
	let numero = cadastro.numero.value
	let complemento = cadastro.complemento.value
	let bairro = cadastro.bairro.value



	if (nome === "") {
		alert('Por Gentileza preencher o nome')
		cadastro.nome.focus()
		return false
	}

	else if (email === "") {
		alert('Por Gentileza preencher o e-mail')
		cadastro.email.focus()
		return false
	}

	else if (senha === "") {
		alert('Por Gentileza preencher a senha')
		cadastro.senha.focus()
		return false
	}


	else if (endereco === "") {
		alert('Por Gentileza preencher o endereço')
		cadastro.endereco.focus()
		return false
	}


	else if (cidade === "") {
		alert('Por Gentileza preencher o cidade')
		cadastro.cidade.focus()
		return false
	}


	else if (UF === "") {
		alert('Por Gentileza preencher a UF')
		cadastro.UF.focus()
		return false
	}


	else if (CEP === "") {
		alert('Por Gentileza preencher o CEP')
		cadastro.CEP.focus()
		return false
	}
	
	else if (numero === "") {
		alert('Por Gentileza preencher o número')
		cadastro.numero.focus()
		return false
	}
	
	
	else if (bairro === "") {
		alert('Por Gentileza preencher o número')
		cadastro.bairro.focus()
		return false
	}
	
	
	else {

		document.forms["cadastro"].submit()
	}


}




