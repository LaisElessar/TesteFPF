<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*, java.text.*, Model.Dao.*, Model.Bean.*" %>
    
<!DOCTYPE html>
<html lang="pt-br">
	<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/Lista.css">
	<title>Listagem</title>
	
	<script>

		function Deletar(codigo){
			document.getElementById("confirma").setAttribute("open","");
			//this.parentElement.close()
			//var b = document.getElementById('botao'); 
			//b.addEventListener('click', );
			location.href="Deletar.jsp?codigo="+codigo;
		}
		
		var captar="";
		function mostra(codigo,risco){
			document.getElementById("dlg").setAttribute("open","");
			//document.getElementById("codigo").innerHTML=codigo;
			//document.getElementById("risco").innerHTML=risco;
			
			captar = document.getElementById('valor').value;
			var msg="erro, informe um Valor de Investimento maior ou igual ao valor do projeto";
			var c="funcionou";
			
			if(captar >= codigo){
				if(risco === 2){
					document.getElementById('resultado').innerHTML=captar*0.2;
				}else if(risco === 1){
					document.getElementById('resultado').innerHTML=captar*0.1;
				}else{
					document.getElementById('resultado').innerHTML=captar*0.05;
				}	
			}else{
				document.getElementById('resultado').innerHTML=msg;
			}		
		}
		
	</script>
	</head>
	<body>
			<div id="container" align=center>
				<h1>Listagem de Projetos</h1>
				<div id="menu">
				<a href="Cadastrar.jsp" id="cadastrar">Cadastrar</a>
				</div>
				<table>
					<tr >
						<th align="left" >Nome</th>
						<th align="left" >Data Inicio</th>
						<th align="left" >Data Final</th>
						<th align="left" >Valor</th>
						<th align="left" >Risco</th>
						<th align="left" >Participantes</th>
						<th align="left">Editar</th>
						<th align="left">Excluir</th>
						<th align="left">Simular</th>
			
					</tr>
					<% 
						ProjetoDao dao = new ProjetoDao();
						List<Projeto> projetos = dao.getLista();
						for (Projeto projeto : projetos){
							SimpleDateFormat forData = new SimpleDateFormat("dd/MM/yyyy");
							String dt_inicio = forData.format(projeto.getDataInicio().getTime());
							String dt_final = forData.format(projeto.getDataFinal().getTime());
							Integer id = projeto.getCodigo();
							Double vl = projeto.getValor();
							Integer rc= projeto.getRisco();
					%>
					<tr>
						
						<td align="left"class="ajustar"><%=projeto.getNome() %></td>
						<td align="left"><%=dt_inicio %></td>
						<td align="left"><%=dt_final %></td>
						<td align="left" id="idvalor"><%=projeto.getValor() %></td>
						<td align="left"><%=projeto.getRisco() %></td>
						<td align="left" class="ajustar"><%=projeto.getParticipantes() %></td>
						
						<td align="right">
							<a href="Editar.jsp?codigo=<%=projeto.getCodigo()%>">Editar</a>
						</td>
						
					 	<td>
					 		<a href="javascript:Deletar(<%=id%>)">Excluir</a>
					 	</td>
					 	
						<td>
							<a href="javascript:mostra(<%=vl%>,<%=rc%>)">Simular</a>
						</tr>
					
					 <dialog id="confirma">
							<h2>Deseja Realmente deletar?</h2> 
							<input type='submit' onclick="Deletar(<%=id%>)" name="excluir" value="botao" class="botao"> 
		            		<button onclick="this.parentElement.close()">Cancel</button>
					</dialog>
					<dialog id="dlg">
							<h2>Informe o valor do Investimento</h2>
							<!-- <h3 id='codigo'></h3> 
							<h3 id='risco'></h3> -->
							<input type="number" class="digito" id="valor" required step="0.01" min="0"><br>
							<h3 class="resultado" id="resultado"></h3>
							<input type='submit' onclick="mostra(<%=vl%>,<%=rc%>)" value="calcular" class="botao">
		            		<button onclick="this.parentElement.close()">Cancel</button>
					</dialog>
					
				<%
						}
				%>
				
				</table>
		</div>		
	</body>
</html>