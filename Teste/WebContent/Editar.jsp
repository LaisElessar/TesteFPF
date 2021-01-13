<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*, java.text.*, Model.Dao.*, Model.Bean.*" %>
<!DOCTYPE html>
	<%
		ProjetoDao dao = new ProjetoDao();
		Projeto proj= dao.getProjeto(request, response);

		SimpleDateFormat forData = new SimpleDateFormat("yyyy-MM-dd");
		String dt_Inicio = forData.format(proj.getDataInicio().getTime());
		String dt_Final = forData.format(proj.getDataFinal().getTime());
		
	%>
<html lang="pt-br">
	<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/Formulario.css">
	<title>Editar Projeto</title>
	</head>
	<body>
		<div id="container">
			<form action="altProjetoServlet" id="formulario">
				<h3>Edite seu Projeto</h3>
				<input class="input" type="hidden" name="codigo" value="<%=proj.getCodigo()%>" required><br>
				<input class="input" type="text" name="nome" value="<%=proj.getNome() %>" required/><br/>
				<input class="input" type="date" name="dataInicio" value="<%=dt_Inicio %>" required/><br/>
				<input class="input" type="date" name="dataFinal" value="<%=dt_Final %>" required/><br/>
				<input class="input" type="number" name="valor" value="<%=proj.getValor() %>" step="0.01" required/><br/>
				<input class="input" type="number" name="risco" value="<%=proj.getRisco() %>" min="0" max="2" required/><br/>
				<input class="input" type="text" name="participantes" value="<%=proj.getParticipantes() %>" required/><br/><br>
				
				<input class="botao" type="submit" value="Alterar"/><br/>
				<a href="ListaProjeto.jsp">Voltar</a>
			</form>
		</div>
	</body>
</html>