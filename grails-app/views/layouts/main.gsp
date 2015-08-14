<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${assetPath(src: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${assetPath(src: 'apple-touch-icon-retina.png')}">
<asset:stylesheet src="application.css" />
<asset:javascript src="application.js" />
<g:layoutHead />
</head>
<body>
	<div id="grailsLogo" role="banner">
		<a href="http://grails.org"><asset:image src="grails_logo.png"
				alt="Grails" /></a>
	</div>
	<div id="page-body" role="main">
	 <div id="menu">
		<h1>Moderador</h1>
		<ul>
			<li><g:link controller="municipio">Município </g:link></li>
			<li><g:link controller="faixaSalarial">Faixa Salarial</g:link></li>
			<li><g:link controller="lingua">Lingua</g:link></li>
			<li><g:link controller="nivel">Nivel</g:link></li>
			<li><g:link controller="unidadeFederativa">UnidadeFederativa</g:link></li>
			<li><g:link controller="usuario">Usuario</g:link></li>
		</ul>
		<h1>Candidato</h1>
		<ul>
			<li><g:link controller="candidato">Candidato </g:link></li>
		</ul>

		<h1>Contratante</h1>
		<ul>
			<li><g:link controller="contratante">Contratante </g:link></li>
			<li><g:link controller="vaga">VagaController </g:link></li>
		</ul>
	</div>
	
		<div id="controller-list" role="navigation">
			<g:layoutBody />
		</div>
	
	</div>
	
	<div class="footer" role="contentinfo"></div>
	<div id="spinner" class="spinner" style="display: none;">
		<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>
</body>
</html>
