<%@ page import="br.com.fabricadeprogramador.persistencia.entidade.Usuario" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Usuários</title>
<script>
	function novo(){
		location.href='usucontroller.do?acao=cad';
	}

</script>
<script type="text/javascript">
function confirmaExclusao(id){
	if (window.confirm('Tem certeza que deseja excluir?')){
		location.href="usucontroller.do?acao=exc&id="+id;
	}
}
</script>
</head>
<body>
<%@include file="menu.jsp"%>
<%
	//JSP's são servlets gerados dinamicamente
    // Corrigindo o tipo e a conversão de tipo
    List<Usuario> lista = (List<Usuario>) request.getAttribute("lista");
%>
	<table border="1">
	<tr> <th>id</th> <th>nome</th> <th>Ação</th> </tr>
	
<%	for(Usuario u : lista){ %>
		<tr>
			<td><%= u.getId() %></td> 
			<td><%= u.getNome() %></td>
			<td> <a href="javascript:confirmaExclusao(<%= u.getId() %>)">excluir</a> | <a href="usucontroller.do?acao=alt&id=<%=u.getId()%>"> alterar </a>  </td>
		</tr>
	<% } %>
	
	
	<input type="button" value="Novo" onclick="javascript:novo()" >
</body>
</html>
