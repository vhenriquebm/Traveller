



<!doctype html>

<jsp:useBean id="Usuario" type="model.Usuario" scope="session"/>



<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
	crossorigin="anonymous" />
<link rel="stylesheet" href="../css/style.css">
<title>Projeto Traveller</title>
<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" type="text/css" href="css/estilo.css">
</head>
<body>


	<!-- inicio Cabecalho -->

	<header>

		<nav class="navbar navbar-expand-md navbar-light  navbar-transparente">

			<div class="container">

				<a href="index.html" class="navbar-brand"> <img
					src="imagens/traveller-logo.png" width="142">
				</a>

				<button class="navbar-toggler" data-toggle="collapse"
					data-target="#nav-principal">

					<i class="fas fa-bars text-white"></i>

				</button>

				<div class="collapse navbar-collapse" id="nav-principal">

					<ul class="navbar-nav ml-auto">

						<li class="nav-item"><a href="index.html" class="nav-link"
							style="font-size: 20px;"> Home</a></li>

						<li class="nav-item"><a href="vidaNoturna.html"
							class="nav-link" style="font-size: 20px;">| Vida Noturna</a></li>



						<li class="nav-item"><a href="login.html" class="nav-link"
							style="font-size: 20px;">| Entrar</a></li>

						<li class="nav-item"><a href="login.html" class="nav-link"
							style="font-size: 20px; margin-left: 10px; color: red">| Sair
						</a></li>

					</ul>


				</div>

			</div>

		</nav>

	</header>






	<div class="container my-5">

		<div style="background-color: #0a141d; border-radius: 50px;">
			<h1 class="text-center" style="font-size: 45px">Area do usuário</h1>
		</div>
		<div class="text-center mb-5" style="color: white">
			<img src="../images/user.png" class="logo" alt="">
			<h2 class="my-1">
				Olá  <c:out value="${Usuario.nome}">
				</c:out>
			</h2>
			<p>
				<c:out value="${Usuario.email}"></c:out>
			</p>
			<p>
				<a href="cadastrar_usuario.html" class="btn btn-success btn-sm mr-2">Cadastrar
					novo usuário</a>
			</p>
		</div>

		<button class="btn btn-primary my-4 " id="alterar">Alterar
			seus dados</button>

		<p class="p-3  text-light meu__header text-center"
			style="background-color: #0a141d">Dados da conta</p>



		<form method="post" id="dados-conta" action="">
			<!-- Campos: nome - senha -->
			<div class="row">
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="nome" class="titulos">Nome</label> <input type="text"
							class="form-control" id="nome" name="nome"
							value=<c:out value="${Usuario.nome}"> </c:out> disabled required>
					</div>
				</div>
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="email" class="titulos">Email</label> <input
							type="email" class="form-control" id="email" name="email"
							value=<c:out value="${Usuario.email}"> </c:out> disabled required>
					</div>
				</div>
			</div>
			<!-- Campos: email - nível de acesso -->
			<div class="row">
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group disabled">
						<label for="senha" class="titulos">Senha</label>
						<div class="input-group mb-2">
							<input type="password" class="form-control senha" id="senha"
								name="senha" value="<c:out value="${Usuario.senha}"> </c:out>"
								placeholder="Sua nova senha" disabled>
							<div class="input-group-prepend">
								<div class="input-group-text "></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="endereco" class="titulos">Endereco</label> <input
							type="text" class="form-control" id="endereco" name="endereco"
							value=<c:out value="${Usuario.endereco}"> </c:out> disabled
							required>
					</div>
				</div>
			</div>
			<!-- Campos: data nascimento - cidade -->
			<div class="row">
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="cidade" class="titulos">Cidade</label> <select
							class="form-control" id="cidade" name="cidade" disabled required>
							<option value="" disabled>Selecione sua cidade</option>
							<option value="1" selected>São Paulo</option>
							<option value="2">Rio de Janeiro</option>
							<option value="3">Belo Horizonte</option>
							<option value="4">Porto Alegre</option>
							<option value="5">Salvador</option>
							<option value="6">Manaus</option>
							<option value="7">Campo Grande</option>
							<option value="8">Fortaleza</option>
						</select>
					</div>
				</div>
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="UF" class="titulos">UF</label> <input type="text"
							class="form-control" id="UF" name="UF"
							value=<c:out value="${Usuario.UF}"> </c:out> disabled required>
					</div>
				</div>
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="CEP" class="titulos">CEP</label> <input type="text"
							class="form-control" id="CEP" name="CEP"
							value=<c:out value="${Usuario.CEP}"> </c:out> disabled required>
					</div>
				</div>
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="numero" class="titulos">Número</label> <input
							type="text" class="form-control" id="numero" name="numero"
							value=<c:out value="${Usuario.numero}"> </c:out> disabled
							required>
					</div>
				</div>
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="complemento" class="titulos">Complemento</label> <input
							type="text" class="form-control" id="complemento"
							name="complemento"
							value=<c:out value="${Usuario.complemento}"> </c:out> disabled
							required>
					</div>
				</div>
				<div class="col-12 col-sm-12 col-md-6">
					<div class="form-group">
						<label for="bairro" class="titulos">Bairro</label> <input
							type="text" class="form-control" id="bairro" name="bairro"
							value=<c:out value="${Usuario.bairro}"> </c:out> disabled
							required>
					</div>
				</div>
			</div>
			<!-- Campos: foto - gênero -->
			<div class="row">
				<div class="col-12 col-sm-12 col-md-6"></div>
			</div>
			<!--  Botão Gravar alterações -->
			<div class="d-flex justify-content-center">
				<button type="submit" class="btn-lg btn-primary mt-5" id="gravar"
					style="width: 300px" disabled>Entrar</button>




			</div>
		</form>
	</div>
	<footer class="p-4 text-light cor__fundo">
		<h5 class="text-center">Projeto Traveller - Direitos reservados</h5>
	</footer>
	<script src="../js/exibir_senha.js"></script>
	<script src="../js/permite_alterar_dados.js"></script>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<img src="imagens/traveller-logo100.png" width="142">
				</div>
				<div class="col-md-2">
					<h4>company</h4>
					<ul class="navbar-nav">
						<li><a href="">Sobre</a></li>
						<li><a href="">Empregos</a></li>
						<li><a href="">Imprensa</a></li>
						<li><a href="">Novidades</a></li>
					</ul>
				</div>
				<div class="col-md-2">
					<h4>comunidades</h4>
					<ul class="navbar-nav">
						<li><a href="">Dicas</a></li>
						<li><a href="">Desenvolvedores</a></li>
						<li><a href="">Marcas</a></li>
					</ul>
				</div>
				<div class="col-md-2">
					<h4>links uteis</h4>
					<ul class="navbar-nav">
						<li><a href="">Ajuda</a></li>
						<li><a href="">Presentes</a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<ul>
						<li><a href=""><img src="imagens/facebook.png"></a></li>
						<li><a href=""><img src="imagens/twitter.png"></a></li>
						<li><a href=""><img src="imagens/instagram.png"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>



</body>
</html>