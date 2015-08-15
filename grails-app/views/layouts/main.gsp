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
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${assetPath(src: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${assetPath(src: 'apple-touch-icon-retina.png')}">
<asset:stylesheet src="screen.css" />
<asset:stylesheet src="custom.css" />
<asset:javascript src="application.js" />
<calendar:resources lang="en" theme="tiger"/>

<g:layoutHead />
</head>
<body>
	<div class="container">
      <header>
		  <a href="/">

		  <asset:image src='logo.jpg' class="logo"/>
		  </a>
		  <nav class="round">
		    <ul>
		      <li><a href="/">Home</a></li>
		      <li><a href="/ajuda">Ajuda</a></li>
		      
		        <li><a href="login">Login</a></a></li>
		        <li><a href="signup">Cadastro</a></a></li>
		    </ul>
		  </nav>
		</header>
		<main role="main">
			<g:layoutBody />
		</main>
	</div>

</body>
</html>
