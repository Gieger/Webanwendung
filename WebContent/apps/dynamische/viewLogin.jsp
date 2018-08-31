<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="de">
	<head>
	    <meta charset="UTF-8" >
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <title>Login</title>
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
	    <script src="${pageContext.request.contextPath}/javascript/login.js"></script>
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
						<li><a class="nav-link" href="${pageContext.request.contextPath}/Reservieren"><i class="fas fa-book fa-2x"></i>Reservierungen</a></li>
						<li><a class="nav-link  active" href="${pageContext.request.contextPath}/Login"><i class="fas fa-user-plus fa-2x"></i>Login</a></li>
					</ul>
			<%
			 	}
			%>
		</nav>
		<section class="main hbox space-between">
			<aside class="side">
				<ul>
		            <li><a class="asidelink" href="${pageContext.request.contextPath}/Register"><i class="far fa-caret-square-right"></i> Registrieren</a></li>
		            <li><a class="asidelink" href="${pageContext.request.contextPath}/Login"><i class="far fa-caret-square-right"></i> Login</a></li>
		            <li><a class="asidelink" href="${pageContext.request.contextPath}/Passwortvergessen"><i class="far fa-caret-square-right"></i> Passwortvergesssen</a></li>
	        	</ul>
			</aside>
			<article class="text">
			<%--Form zur übertragung aller benötigten Elemente. --%>
				<form name="form" action="${pageContext.request.contextPath}/Login" method="post" onsubmit="return validate()">
					<h3>Login</h3>
					<table>
						<tr>
							<td>Email</td>
							<td><input type="text" name="email" /></td>
						</tr>
						<tr>
							<td>Passwort</td>
							<td><input type="password" name="password" /></td>
						</tr>
						<tr>
							<td>Vorname</td>
							<td><input type="text" name="vorname" /></td>
						</tr>
						<tr>
							<td>Nachname</td>
							<td><input type="text" name="nachname" /></td>
						</tr>
						<tr>
							<td>Land</td>
							<td><input type="text" name="land" /></td>
						</tr>
						<tr>
							<td>Stadt</td>
							<td><input type="text" name="stadt" /></td>
						</tr>
						<tr>
							<td>Straße</td>
							<td><input type="text" name="strasse" /></td>
						</tr>
						<tr>
							<td>Hausnummer</td>
							<td><input type="text" name="hausnummer" /></td>
						</tr>
						<tr>
							<td> Geschlecht </td>
							<td><input type="radio" name="geschlecht" id="Maenlich" value="Maenlich"><label for="Maenlich">Männlich</label><input type="radio" name="geschlecht" id="Weiblich" value="Weiblich"><label for="Weiblich">Weiblich</label></td>
						</tr>
						<tr>
							<td> AGB akzeptieren </td>
							<td><input type="checkbox" name="agb" value= "true"/>agb</td>
						</tr>
						<tr> <!-- refer to the video to understand request.getAttribute() -->
							<td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
							 : request.getAttribute("errMessage")%></span></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="Login" onClick= "function validate()"></input><input type="reset" value="Reset"></input></td>
						</tr>
					</table>
					</form>
			</article>
		</section>
		<jsp:include page="../core-elements/footer.jsp"/>
    </body>
</html>