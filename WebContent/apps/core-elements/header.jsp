<%
	String username = (String)session.getAttribute("email");
	if(username!=null)
	{
%>
	<div class="dropdown">
		<button onclick="dropDown()" id="dropbtn" class="dropbtn">Dropdown</button>
	 	<div id="dropdown" class="dropdown-content">
		<a href="${pageContext.request.contextPath}/Home">Home</a>
	       <a href="${pageContext.request.contextPath}/Menue">Menü</a>
	       <a href="${pageContext.request.contextPath}/Anfahrt">Anfahrt</a>
	       <a href="${pageContext.request.contextPath}/Events">Events</a>
	       <a href="${pageContext.request.contextPath}/Zeiten">Zeiten</a>
	       <a href="${pageContext.request.contextPath}/Reservieren">Reservierungen</a>
	       <a href="${pageContext.request.contextPath}/Logout">Logout</a>
	 	</div>
	</div>
<%
	}
	else
	{
%>
	<div class="dropdown">
	<button onclick="dropDown()" id="dropbtn" class="dropbtn">Dropdown</button>
		<div id="dropdown" class="dropdown-content">
			<a href="${pageContext.request.contextPath}/Home">Home</a>
			<a href="${pageContext.request.contextPath}/Menue">Menü</a>
			<a href="${pageContext.request.contextPath}/Anfahrt">Anfahrt</a>
			<a href="${pageContext.request.contextPath}/Events">Events</a>
			<a href="${pageContext.request.contextPath}/Zeiten">Zeiten</a>
			<a href="${pageContext.request.contextPath}/Reservieren">Reservierungen</a>
			<a href="${pageContext.request.contextPath}/Login">Login</a>
		</div>
	</div>
<%
 	}
%>
<img src="${pageContext.request.contextPath}/source/img/burger.png" alt="Logo" class="logo">







