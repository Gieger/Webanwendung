<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="de">
	<head>
	    <meta charset="UTF-8" >
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <title>Menue</title>
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
	    
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles/dynamischemain.css">
	    <%
				}
				else if(ui =="modern")
				{
					%>
					 
					 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles/dynamischemainmodern.css">
					  <%
				}
			
			%>
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fontawesome/fontawesome-all.css">
	    <script src="${pageContext.request.contextPath}/javascript/dropdown.js"></script>
    	<script src="${pageContext.request.contextPath}/javascript/menueKarte.js"></script>
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
				        <li><a class="nav-link active" href="${pageContext.request.contextPath}/Menue"><i class="fas fa-utensils fa-2x"></i>Menü</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Anfahrt"><i class="far fa-map fa-2x"></i>Anfahrt</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Events"><i class="fas fa-calendar-alt fa-2x"></i>Events</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Zeiten"><i class="fas fa-clock fa-2x"></i>Zeiten</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Reservieren"><i class="fas fa-book fa-2x"></i>Reservierungen</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Logout"><i class="fas fa-user-plus fa-2x"></i>Logout</a></li>
				    </ul>
			<%
				}
				else
				{
			%>
					<ul class="navi">
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Home"><i class="fas fa-home fa-2x"></i>Home</a></li>
						<li><a class="nav-link active" href="${pageContext.request.contextPath}/Menue"><i class="fas fa-utensils fa-2x"></i>Menü</a></li>
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Anfahrt"><i class="far fa-map fa-2x"></i>Anfahrt</a></li>
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Events"><i class="fas fa-calendar-alt fa-2x"></i>Events</a></li>
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Zeiten"><i class="fas fa-clock fa-2x"></i>Zeiten</a></li>
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Reservieren"><i class="fas fa-book fa-2x"></i>Reservierungen</a></li>
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Login"><i class="fas fa-user-plus fa-2x"></i>Login</a></li>
					</ul>
			<%
			 	}
			%>
		</nav>
		<section class="main hbox space-between">
			<aside class="side">
				<ul>
		            <li><a class="asidelink" href="${pageContext.request.contextPath}/Menue"><i class="far fa-caret-square-right"></i> Angebote</a></li>
		            <li><a class="asidelink choose"href="${pageContext.request.contextPath}/Vorspeise"><i class="far fa-caret-square-right"></i> Vorspeisen</a></li>
		            <li><a class="asidelink" href="${pageContext.request.contextPath}/Hauptspeisen"><i class="far fa-caret-square-right"></i> Hauptgericht</a></li>
		            <li><a class="asidelink" href="${pageContext.request.contextPath}/Suesses"><i class="far fa-caret-square-right"></i> Süßes</a></li>
		            <li><a class="asidelink" href="${pageContext.request.contextPath}/Getraenke"><i class="far fa-caret-square-right"></i> Getränke</a></li>
		        </ul>
			</aside>
			<article class="text">
				<h2>Speisekarte</h2>
				<h3>Vorspeisen</h3>
				<%--Form mit checkboxen, damit der User die Speisekarte die er sehen will auswählen kann.--%>
				<form method="post" action="${pageContext.request.contextPath}/Vorspeisen">
				    <p>Welche Gerichte möchten Sie angezeigt bekommen?</p>
				    <input type="checkbox" name="met" value="salat" />Salat
				    <input type="checkbox" name="met" value="suppe" />Suppe
				    <input type="checkbox" name="met" value="brote" />Brote
				    <input type="hidden" name="selectedMenueTagg" id="selectedMenueTagg"/>
				    <%--Übergibt die Daten an das Javascript menueKarte.js beim anklicken--%>
				    <input type="submit" value="Show" onClick="processMenueTagg()">
				    <%--Ausgabe der im Servlet erstellten Tabelle für die ausgewählten Speisekarten Inhalte. --%>
				    <p>${tabelle}</p>
				</form>
				Auf der linken Seite finden Sie unsere Anderen Speisekarten.
			</article>
		</section>
		<jsp:include page="../core-elements/footer.jsp"/>
    </body>
</html>