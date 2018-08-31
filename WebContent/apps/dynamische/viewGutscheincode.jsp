<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="de">
	<head>
	    <meta charset="UTF-8" >
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <title>Gutscheincode</title>
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
	    <script src="${pageContext.request.contextPath}/javascript/gutscheincode.js"></script>
    	<script src="${pageContext.request.contextPath}/javascript/backgroundcolor.js"></script>
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
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Reservieren"><i class="fas fa-book fa-2x"></i>Reservierungen</a></li>
				        <li><a class="nav-link active" href="${pageContext.request.contextPath}/Logout"><i class="fas fa-user-plus fa-2x"></i>Logout</a></li>
				    </ul>
			<%
				}
				else
				{
			%>
					<ul class="navi">
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Home"><i class="fas fa-home fa-2x"></i>Home</a></li>
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Angebote"><i class="fas fa-utensils fa-2x"></i>Menü</a></li>
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
		            <li><a class="asidelink" href="${pageContext.request.contextPath}/Eingeloggt"><i class="far fa-caret-square-right"></i> Hallo</a></li>
		            <li><a class="asidelink" href="${pageContext.request.contextPath}/Daten"><i class="far fa-caret-square-right"></i> Daten</a></li>
		            <li><a class="asidelink choose" href="${pageContext.request.contextPath}/GutscheinCode"><i class="far fa-caret-square-right"></i> Code</a></li>
		            <li><a class="asidelink" href="${pageContext.request.contextPath}/Ui"><i class="far fa-caret-square-right"></i> Ui</a></li>
		            <li><br/></li>
		            <li>Hintergrund</li>
		            <li><button class="button" onclick="backcolorBlack()">Standard</button></li>
		            <li><button class="button" onclick="backcolorNight()">Nacht  </button></li>
	        	</ul>
			</aside>
			<article class="text">
				<p>Hallo, damit Sie sich Ihren persönlichen Gutscheincode generieren klicken Sie bitte<br/>
				unten auf den Button Gutscheincode. Bitte zeigen Sie die Website mit dem vollständigen Code beim<br/>
				bezahlen vor. Es gilt immer nur ein Gutscheincode pro Person an einem Tag.</p>
				<%--Button zum displayn des dadrunter liegenden divs gutscheinCode.
				Ruft das Javascript gutscheincode.js beim anklicken auf--%>
				<button class="button" id="bttnTerms" onclick="Gutscheincode()">Gutscheincode</button>
				<div id="gutscheinCode" class="gutscheinCode">
					<br/>
					<%--Durch das Servlet beim aufrufen der Seite erstellter gutscheincode --%>
					${gutschein}
				</div>
			</article>
		</section>
		<jsp:include page="../core-elements/footer.jsp"/>
    </body>
</html>