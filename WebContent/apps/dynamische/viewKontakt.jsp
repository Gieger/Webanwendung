<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="de">
	<head>
	    <meta charset="UTF-8" >
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <title>Kontakt</title>
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles/normalize.css">
    	    <%
	    String ui = (String)session.getAttribute("ui");
		if(ui == null) 
		{
			ui = "classic";
		}
		
				if(ui=="classic")
				{
		%>
	    
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles/formularfooter.css">
	    <%
				}
				else if(ui =="modern")
				{
					%>
					 
					 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles/formularfootermodern.css">
					  <%
				}
			
			%>
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fontawesome/fontawesome-all.css">
    	<script src="${pageContext.request.contextPath}/javascript/kontakt.js"></script>
    	<script src="${pageContext.request.contextPath}/javascript/buttonBack.js"></script>
	</head>
	<body class="vbox viewport">
		<header>
			<h1>Kontakt</h1>
		</header>
		<section class="main hbox space-between">
			<aside class="side">
			</aside>
			<article class="text">
				<form name="form" action="${pageContext.request.contextPath}/Kontakt" method="post" onsubmit="return validate()">
					<table>
						<tr>
							<td> Vorname </td>
							<td><input type="text" name="vorname"/></td>
						</tr>
						<tr>
							<td> Nachname </td>
							<td><input type="text" name="nachname"/></td>
						</tr>
						<tr>
							<td> Besuchsdatum</td>		 
					    	<td><input type="date" name = "besuchsdatum"></td>
				    	</tr>
						<tr>
							<td> Land </td>
							<td><input type="text" name="land"/></td>
						</tr>
						<tr>
							<td> Straße </td>
							<td><input type="text" name="strasse"/></td>
						</tr>
						<tr>
							<td> Hausnummer </td>
							<td><input type="text" name="hausnummer"/></td>
						</tr>
						<tr>
							<td> Stadt </td>
							<td><input type="text" name="stadt"/></td>
						</tr>
						<tr>
							<td> Email </td>
							<td><input type="email" name="email"/></td>
						</tr>
						
						<tr>
							<td> Alter </td>
							<td><input type="number" name="age"  min="12"/></td>
						</tr>
						<tr>
							 <td><%=(request.getAttribute("errMessage") == null) ? ""
							 : request.getAttribute("errMessage")%></td>
					 	</tr>
					 	<tr>
							<td> Anmerkung </td>
							<td><textarea name="anmerkung"></textarea></td>
						</tr>
					 	<tr>
							 <td></td>
							 <td><input type="submit" value="Register"></input><input
						 		type="reset" value="Reset"></input></td>
					 	</tr>
					</table>
				</form>
			</article>
		</section>
		<footer>
			<div>
				<button class="button-back" onclick="zurueck()"><i class="far fa-arrow-alt-circle-left fa-2x"></i></button>
			</div>
		</footer>
    </body>
</html>