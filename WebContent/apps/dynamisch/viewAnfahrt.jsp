<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="de">
	<head>
	    <meta charset="UTF-8" >
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <title>Anfahrt</title>
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
	    <script src="${pageContext.request.contextPath}/javascript/googlemaps.js"></script>
   	    <script src="${pageContext.request.contextPath}/javascript/groesse.js"></script>
   	    <script src="${pageContext.request.contextPath}/javascript/anfahrttext.js"></script>
   	    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCUMKEjKNKS89HtH_vHsBwvekz3W91Th-g&callback=initMap" async defer></script>
	</head>
	<%--Beim Laden des body wird automatisch das Script googlemaps.js geladen. --%>
	<body class="vbox viewport"onload="initMap()">
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
				        <li><a class="nav-link active" href="${pageContext.request.contextPath}/Anfahrt"><i class="far fa-map fa-2x"></i>Anfahrt</a></li>
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
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Menue"><i class="fas fa-utensils fa-2x"></i>Menü</a></li>
						<li><a class="nav-link active" href="${pageContext.request.contextPath}/Anfahrt"><i class="far fa-map fa-2x"></i>Anfahrt</a></li>
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
		            <li>Mapgröße</li>
		            <%--Beim klicken auf die Buttons wird das Script groesse.js angewendet--%>
		            <li><button class="button" id="mapgroesse" onclick="BildAnpassen()">Zoom </button></li>
		       		<li><button class="button" id="mapgroesse" onclick="Standard()">Standard  </button></li>
		            <li>Wegbeschreibung ausblenden bzw einblenden</li>
		            <%--Beim klicken auf das Element wird das Script anfahrttext.js ausgeführt--%>
	        		<li><input type="submit" value="Bestätigen" onclick="anfahrttext()" id="textaendern"></input></li>
        		</ul>
			</aside>
			<article class="text">
				<%--In den Div mit der id "map" wird die Googlemaps-Karte geladen--%>
				<div id="map">
				</div>
				<img src="${pageContext.request.contextPath}/source/img/map.png" alt="anfahrt" class="textimage" id="autokarte" onClick="">
				<%--<p> wird vom Script anfahrttext.js beeinflusst --%>
				<p id="textanzeigen" class="textanzeigen">
					<%--Wird durchs Servlet mit Daten gespeist--%>
					${text}
				</p>
			</article>
		</section>
		<jsp:include page="../core-elements/footer.jsp"/>
    </body>
</html>