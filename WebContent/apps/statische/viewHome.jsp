<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="de">
	<head>
	    <meta charset="UTF-8" >
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <title>Home</title>
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
	    
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles/statischemain.css">
	    <%
				}
				else if(ui =="modern")
				{
					%>
					 
					 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles/statischemainmodern.css">
					  <%
				}
			
			%>
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fontawesome/fontawesome-all.css">
	    <script src="${pageContext.request.contextPath}/javascript/dropdown.js"></script>
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
				        <li><a class="nav-link active" href="${pageContext.request.contextPath}/Home"><i class="fas fa-home fa-2x"></i>Home</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Menue"><i class="fas fa-utensils fa-2x"></i>Menü</a></li>
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
						<li><a class="nav-link active" href="${pageContext.request.contextPath}/Home"><i class="fas fa-home fa-2x"></i>Home</a></li>
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Menue"><i class="fas fa-utensils fa-2x"></i>Menü</a></li>
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
		            <li><a class="asidelink" href="#image"><i class="far fa-caret-square-right"></i> Start</a></li>
		            <li><a class="asidelink" href="#vorstellung"><i class="far fa-caret-square-right"></i> Über uns</a></li>
		            <li><a class="asidelink" href="#anSie"><i class="far fa-caret-square-right"></i> An Sie</a></li>
		            <%
					if(username!=null)
					{%>
		            <li><a class="asidelink" href="${pageContext.request.contextPath}/apps/statische/viewEingeloggt.jsp"><i class="far fa-caret-square-right"></i> User einstellungen</a></li>
		            <%} %> 
	        	</ul>
			</aside>
			<article class="text">
				<a id="image"><img class="textimage" src="${pageContext.request.contextPath}/source/img/homesite.png" alt="homesitebegruessung"></a>
				<h2><a id="vorstellung">Über uns</a></h2>
				<p>Burger Place ist ein Restaurant, dass auf eine hochwertige Küche setzt.<br/>
				Neben unserer guten Quallität, setzten wir mit unserer Offenen-Küche auf<br/>
				Kundennähe und unsere Rustikal aber modern gestalteten Räumlichkeiten,<br/>
				laden jung und alt zum Verweilen ein.</p>
				<p>Damit Sie nicht nur etwas für den Gaumen bekommen sondern auch satt werden,<br/>
				sind unsere Portionen auch Preisgerecht. Aber keine angst, sollten Sie mal nicht<br/>
				soviel hunger haben, können Sie das Gericht auch einfach in einer kleineren Größe<br/>
				bestellen. Unsere Karte finden Sie auch <a href="${pageContext.request.contextPath}/Menue">hier</a>. Bei all dem darf aber nicht vergessen<br/>
				werden, das Qualität ihren Preis hat ;)</p>
				<p>Unsere Angebote wie der Mittagstisch in der Woche und unser Brunch am Samstag und<br/>
				Sonntag wird von allen gerne angenommen. Um Ihnen neben dem Gaumenschmauß noch<br/>
				mehr zubieten, haben wir regelmäßig Events mit live Musik oder Fußballübertragung<br/>
				oder Coktailnights. Mehr infos dazu finden Sie <a href="${pageContext.request.contextPath}/Events">hier</a>.</p>
				<h2><a id="anSie">An Sie</a></h2>
				<p>Wir begrüßen Sie auf unserer Website. Hoffentlich haben sie einen angenehmen aufenthalt<br/>
				und finden alles was Sie suchen. Falls Sie irgend etwas nicht finden oder Vorschläge<br/>
				für uns haben scheuen Sie sich nicht uns zu kontaktieren. Unsere Kontaktdaten finden Sie <a href="${pageContext.request.contextPath}/Kontakt">hier</a>.</p>
			</article>
		</section>
		<jsp:include page="../core-elements/footer.jsp"/>
    </body>
</html>