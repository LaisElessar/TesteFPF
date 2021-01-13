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
	<title>Deletar Projeto</title>
	<link rel="stylesheet" type="text/css" href="css/Formulario.css">
	</head>
	<body>
	<div d="container">
		<form action="delProjetoServlet" id="formulario">
			<input class="input" type="text" name="codigo" value="<%= proj.getCodigo() %>" /><br />
			<input class="input" type="text" name="nome" value="<%=proj.getNome() %>"/><br />
			<input class="input" type="date" name="dataInicio" value="<%=dt_Inicio %>"/><br />
			<input class="input" type="date" name="dataFinal" value="<%=dt_Final %>"/><br />
			<input class="input" type="number" name="valor" value="<%=proj.getValor() %>"/><br />
			<input class="input" type="number" name="risco" value="<%=proj.getRisco() %>"/><br />
			<input class="input" type="text" name="participantes" value="<%=proj.getParticipantes() %>"/><br />
			
			<input class="botao" type="submit" value="Excluir"/><br />
		</form>
	</div>
	</body>
</html>