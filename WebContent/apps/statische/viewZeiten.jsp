<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="de">
	<head>
	    <meta charset="UTF-8" >
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <title>Zeiten</title>
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
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Home"><i class="fas fa-home fa-2x"></i>Home</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Menue"><i class="fas fa-utensils fa-2x"></i>Menü</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Anfahrt"><i class="far fa-map fa-2x"></i>Anfahrt</a></li>
				        <li><a class="nav-link" href="${pageContext.request.contextPath}/Events"><i class="fas fa-calendar-alt fa-2x"></i>Events</a></li>
				        <li><a class="nav-link active" href="${pageContext.request.contextPath}/Zeiten"><i class="fas fa-clock fa-2x"></i>Zeiten</a></li>
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
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Anfahrt"><i class="far fa-map fa-2x"></i>Anfahrt</a></li>
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Events"><i class="fas fa-calendar-alt fa-2x"></i>Events</a></li>
						<li><a class="nav-link active" href="${pageContext.request.contextPath}/Zeiten"><i class="fas fa-clock fa-2x"></i>Zeiten</a></li>
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
					<li><a class="asidelink" href="#time"><i class="far fa-caret-square-right"></i> Zeiten</a></li>
					<li><a class="asidelink" href="#table"><i class="far fa-caret-square-right"></i> info</a></li>
					<li><a class="asidelink" href="${pageContext.request.contextPath}/Events"><i class="far fa-caret-square-right"></i> Events</a></li>
				</ul>
			</aside>
			<article class="text">
				<a id="image"><img class="textimage" src="${pageContext.request.contextPath}/source/img/timesite.png" alt="timesitebegruessung"></a>
 				<h2><a id="time">Zeiten</a></h2>
 				<p>Auf dieser Seite finden sie unsere Öffnungzeiten. Diese können aber an<br/>
 				bestimmten Tagen abweichen z.B. wenn ein <a href ="${pageContext.request.contextPath}/Events">Event</a> stattfindet</p>
			 	<p> Die abweichenden Öffnungszeiten können sie gerne telefonisch erfragen die Telefonnummer<br/>
			 	erfahren Sie auf unserer Impressums seite, oder Sie schreiben uns eine Email.</p>
			 	<table id="table" class="texttable">
					<tr>
						<th>Tag</th>
						<th>Mittags</th>
						<th>Abends</th>
					</tr>
			
					<tr>
						<td >Dienstag</td>
						<td>11:00-15:00</td>
						<td>17:30-22:00</td>
					</tr>
					<tr>
						<td>Mittwoch</td>
						<td>11:00-15:00</td>
						<td>17:30-22:00</td>
					</tr>
							<tr>
						<td>Donnerstag</td>
						<td>11:00-15:00</td>
						<td>17:30-22:00</td>
					</tr>
							<tr>
						<td>Freitag</td>
						<td>11:00-15:00</td>
						<td>17:30-24:00</td>
					</tr>
							<tr>
						<td>Samstag</td>
						<td>10:00-15:00</td>
						<td>17:30-24:00</td>
					</tr>
							<tr>
						<td>Sonntag</td>
						<td>10:00-15:00</td>
						<td>17:30-24:00</td>
					</tr>
				</table>
				<br/>
			</article>
		</section>
		<jsp:include page="../core-elements/footer.jsp"/>
    </body>
</html>