<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="pt-BR" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>SELECAD+</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<asset:stylesheet src="screen.css" />
<asset:stylesheet src="custom.css" />
<asset:javascript src="jquery-mask.js" />
<asset:javascript src="jquery-ui.js" />
<asset:javascript src="application.js" />
<calendar:resources lang="en" theme="tiger" years="[1900, 2900]" />

<g:layoutHead />
</head>
<body>
	<div class="container">
		<header>
			<a href="/"> <asset:image src='logo.jpg' class="logo" />
			</a>
			<nav class="round">
				<ul>
					<li>
					<li><g:link controller="app" action="home">Home</g:link></li>
					</li>
					<sec:ifLoggedIn>
						<sec:loggedInUserInfo field="username" />
						
						<sec:access expression="hasRole('PAPEL_MODERADOR')">
							<li><g:link controller="faixaSalarial">Faixa Salariais</g:link></li>
							<li><g:link controller="lingua">Línguas</g:link></li>
							<li><g:link controller="nivel">Nivel</g:link></li>
							<li><g:link controller="grauFormacao">Grau de Formação</g:link></li>
							<li><g:link controller="unidadeFederativa">Unidade Federativa</g:link></li>
							<li><g:link controller="municipio">Municípios </g:link></li>
							<li><g:link controller="usuario">Usuário</g:link></li>
						</sec:access>
						<sec:access expression="hasRole('PAPEL_CANDIDATO')">
							<li><g:link controller="candidato">Perfil </g:link></li>
							<li><g:link controller="candidatoVaga">Minhas Candidaturas </g:link></li>
							<li><g:link controller="candidatoVaga" action="home">Vagas Disponíveis </g:link></li>
						</sec:access>
						<sec:access expression="hasRole('PAPEL_CONTRATANTE')">
							<li><g:link controller="contratante">Perfil </g:link></li>
							<li><g:link controller="vaga">Vagas </g:link></li>	
						</sec:access>
					</sec:ifLoggedIn>
					<li><a href="/ajuda">Ajuda</a></li>
					<sec:ifLoggedIn>
						<li><g:link controller="logout">Sair </g:link></li>
					</sec:ifLoggedIn>
					<sec:ifNotLoggedIn>
						<li><g:link controller='login' action='auth'>Login</g:link></li>
						<li><g:link controller='usuario' action='create'>Cadastro</g:link></li>
					</sec:ifNotLoggedIn>
				</ul>
			</nav>
		</header>
		<main role="main"> <g:layoutBody /> </main>
		<footer>
			<nav class="round">
				<ul>
					<li><a href="/sobre/sobre.gsp">Sobre</a></li>
					<li><a href="/contato">Contato</a></li>
				</ul>
			</nav>
		</footer>
	</div>

</body>
</html>
