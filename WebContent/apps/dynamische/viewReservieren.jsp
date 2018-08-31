<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="de">
	<head>
	    <meta charset="UTF-8" >
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <title>Reservieren</title>
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
	    
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles/formularmain.css">
	    <%
				}
				else if(ui =="modern")
				{
					%>
					 
					 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles/formularmainmodern.css">
					  <%
				}
			
			%>
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fontawesome/fontawesome-all.css">
	    <script src="${pageContext.request.contextPath}/javascript/dropdown.js"></script>
	    <script src="${pageContext.request.contextPath}/javascript/reservieren.js"></script>
	</head>
	<body class="vbox viewport">
		<header>
			<jsp:include page="../core-elements/header.jsp"/>
		</header>
		<nav>
			<%
				String username = (String)session.getAttribute("email");
				if(username!=null)
				{
			%>
				    <ul class="navi">
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Home"><i class="fas fa-home fa-2x"></i>Home</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Menue"><i class="fas fa-utensils fa-2x"></i>Menü</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Anfahrt"><i class="far fa-map fa-2x"></i>Anfahrt</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Events"><i class="fas fa-calendar-alt fa-2x"></i>Events</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Zeiten"><i class="fas fa-clock fa-2x"></i>Zeiten</a></li>
				        <li><a class="nav-link  active" href="${pageContext.request.contextPath}/Reservieren"><i class="fas fa-book fa-2x"></i>Reservierungen</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Logout"><i class="fas fa-user-plus fa-2x"></i>Logout</a></li>
				    </ul>
			<%
				}
				else
				{
			%>
					<ul class="navi">
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Home"><i class="fas fa-home fa-2x"></i>Home</a></li>
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Menue"><i class="fas fa-utensils fa-2x"></i>Menü</a></li>
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Anfahrt"><i class="far fa-map fa-2x"></i>Anfahrt</a></li>
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Events"><i class="fas fa-calendar-alt fa-2x"></i>Events</a></li>
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Zeiten"><i class="fas fa-clock fa-2x"></i>Zeiten</a></li>
						<li><a class="nav-link  active" href="${pageContext.request.contextPath}/Reservieren"><i class="fas fa-book fa-2x"></i>Reservierungen</a></li>
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Login"><i class="fas fa-user-plus fa-2x"></i>Login</a></li>
					</ul>
			<%
			 	}
			%>
		</nav>
		<section class="main hbox space-between">
			<aside class="side">
				<ul>
		        </ul>
			</aside>
			<article class="text">
				<%--Form zur Abfrage aller benötigten Elemente. Beim Übermitteln wird erst das Script reservieren.js ausgeführt.--%>
				<form name="form" action="${pageContext.request.contextPath}/Reservieren" method="post" onsubmit="return validate()">
					<h3>Reservieren</h3>
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
							<td> Email </td>
							<td><input type="text" name="email"/></td>
						</tr>
						<tr>
							<td> Pro Tisch gibt es 4 Plätze. Tische </td>
							<td><input type="number" name="plaetze" min="1" max="10"/></td>
						</tr>
						<tr>
							<td> Land </td>
							<td><input type="text" name="land"/></td>
						</tr>
						<tr>
							<td> Stadt </td>
							<td><input type="text" name="stadt"/></td>
						</tr>
						<tr>
							<td> Strasse </td>
							<td><input type="text" name="strasse"/></td>
						</tr>
						<tr>
							<td> Hausnummer </td>
							<td><input type="text" name="hausnummer"/></td>
						</tr>
						<tr>
							<td> Alter </td>
							<td><input type="number" name="alter"  min="16"/></td>
						</tr>
						<tr>
							<td> AGB akzeptieren </td>
							<td><input type="checkbox" name="agb" value= "true"/></td>
						</tr>
						<tr>
							<td> Reservierungdatum</td>		 
							<td><input type="date" name = "reservierungsdatum"></td>
						</tr>		
						<tr>
							 <td><%=(request.getAttribute("errMessage") == null) ? ""
							 : request.getAttribute("errMessage")%></td>
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
		<jsp:include page="../core-elements/footer.jsp"/>
    </body>
</html>