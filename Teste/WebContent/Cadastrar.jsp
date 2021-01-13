<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<title>Cadastrar Projeto</title>
	<link rel="stylesheet" type="text/css" href="css/Formulario.css">
	</head>
	<body>
		<div id="container">
			
			<form action="addProjetoServlet" id="formulario">
				<h3>Cadastre um Projeto</h3>
				<!--<label for="nome">Nome:</label><br /> -->
				<input class="input" type="text" name="nome" required placeholder='Nome Projeto'><br />
				
				<!-- <label for="dataInicial">Data Inicial:</label><br /> -->
				<input class="input" type="date" name="dataInicial" value="" required><br />
				
			<!--	<label for="dataFinal">Data Final:</label><br /> -->
				<input class="input" type="date" name="dataFinal" value="" required><br />
				
			<!--	<label for="valor">Valor:</label><br /> -->
				<input class="input" type="number" name="valor" value="" required step="0.01" placeholder='0,00'><br />
				
			<!--	<label for="risco">Risco:</label><br /> -->
				<input class="input" type="number" name="risco" value="" required min="0" max="2" placeholder='0 - baixo, 1 - médio, 2 - alto'><br />
				
			<!--	<label for="participantes">Participantes:</label><br /> -->
				<input class="input" type="text" name="participantes" placeholder="Participantes" value="" required placeholder='Nomes'><br /><br />
				
				<input class="botao" type="submit" value="Adicionar"><br>
				<a  href="ListaProjeto.jsp">Voltar</a>
				
			</form>
		</div>
	</body>
</html>