
<%@ page import="selecadmais.Vaga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vaga.label', default: 'Vaga')}" />
		<title>Vagas Disponíveis</title>
	</head>
	<body>
	    	<div id="list-vaga" class="content scaffold-list" role="main">
			<h1>Relatório de Notas por Candidato</h1>
			<g:if test="${flash.message}">
				<div class="flash_notice" role="status">${flash.message}</div>
			</g:if>
			<table>
			  <thead>
			    <tr>
			      <th>Candidato</th>
			      <th>Email</th>
			      <th>Telefone</th>
			      <th>Município</th>
			      <th>Nota</th>
			      <th colspan="1"></th>
			    </tr>
			  </thead>

			  <tbody>
			    <g:each in="${candidaturas}" status="i" var="candidato">
			      <tr>
			        <td>${candidato.nome}</td>
			        <td>${candidato.email}</td>
			        <td>${candidato.telefone}</td>
			        <td>${candidato.municipio}</td>
			        <td>${candidato.nota}</td>
			        <td>
			          <g:if test="${candidato.curriculo}">
			          <a href="${candidato?.curriculo}" target="_blank">Download</a>
			          </g:if>
			        </td>
			      </tr>
			    </g:each>
			  </tbody>
			</table>

	</body>
</html>
