<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Atividade 1</title>
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<div class="container-fluid">
			<span class="navbar-brand mb-0 h1">Atividade 1 - Teste de
				lógica de programação</span>
		</div>
	</nav>
	<div class="container">
		<div class="bg-light p-5 rounded mt-5">
			<form class="row g-3">
				<div class="col-auto">
					<div class="input-group mb-3">
						<span class="input-group-text">$</span> <input type="text"
							class="form-control" name="sacar" placeholder="Valor a sacar">
						<span class="input-group-text">.00</span>
					</div>
				</div>
				<div class="col-auto">
					<button type="submit" name="form" class="btn btn-primary mb-3" id="btnSacar">Sacar</button>
				</div>
			</form>
			<div id="liveAlertPlaceholder"></div>
		</div>
		<div class="mt-5">
			<table class="table align-middle table-striped table-bordered ">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Número de cédulas</th>
					</tr>
				</thead>
				<%
				try {
					//Declarando variaveis
					double dinheiro = Double.parseDouble(request.getParameter("sacar"));
					int c100 = 0, c50 = 0, c20 = 0, c10 = 0, c5 = 0;
					
					//Verificando multiplo de 5
					if(dinheiro % 5 != 0){
					%>
						<div class="alert alert-danger" role="alert">O Valor deve ser múltiplo de 5.</div>
					<%
					}
					else{
					//Seperando cédulas
						while (dinheiro >= 100) {
							dinheiro = dinheiro - 100;
							c100++;
						}
						while (dinheiro >= 50) {
							dinheiro = dinheiro - 50;
							c50++;
						}
						while (dinheiro >= 20) {
							dinheiro = dinheiro - 20;
							c20++;
						}
						while (dinheiro >= 10) {
							dinheiro = dinheiro - 10;
							c10++;
						}
						while (dinheiro >= 5) {
							dinheiro = dinheiro - 5;
							c5++;
						}				
				%>
				<tbody>
					<tr>
						<th scope="row">Cédulas de 100</th>
						<td><%=c100%></td>
					</tr>
					<tr>
						<th scope="row">Cédulas de 50</th>
						<td><%=c50%></td>
					</tr>
					<tr>
						<th scope="row">Cédulas de 20</th>
						<td><%=c20%></td>
					</tr>
					<tr>
						<th scope="row">Cédulas de 10</th>
						<td><%=c10%></td>
					</tr>
					<tr>
						<th scope="row">Cédulas de 5</th>
						<td><%=c5%></td>
					</tr>
					<%
					}
					} catch (Exception ex) {

					}
					%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>