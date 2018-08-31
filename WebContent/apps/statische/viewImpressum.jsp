<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="de">
	<head>
	    <meta charset="UTF-8" >
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <title>Impressum</title>
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
	    
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles/statischefooter.css">
	    <%
				}
				else if(ui =="modern")
				{
					%>
					 
					 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles/statischefootermodern.css">
					  <%
				}
			
			%>
	    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fontawesome/fontawesome-all.css">
	    <script src="${pageContext.request.contextPath}/javascript/buttonBack.js"></script>
	</head>
	<body class="vbox viewport">
		<header>
			<h1>Impressum</h1>
		</header>
		<section class="main hbox space-between">
			<aside class="side">
				<ul>
		            <li><a class="asidelink" href="#anfang"><i class="far fa-caret-square-right"></i> Anfang</a></li>
		            <li><a class="asidelink" href="#I"><i class="far fa-caret-square-right"></i> I.</a></li>
		            <li><a class="asidelink" href="#II"><i class="far fa-caret-square-right"></i> II.</a></li>
		            <li><a class="asidelink" href="#III"><i class="far fa-caret-square-right"></i> III.</a></li>
	        	</ul>
			</aside>
			<article class="text">
				<img src="${pageContext.request.contextPath}/source/img/impressum.png" alt="impressum" class="textimage">
				<p>Impressum Angaben gemäß<a href=https://www.gesetze-im-internet.de/tmg/__5.html> § 5 TMG. </a><br/></p>
				<p><a id="anfang">Burger Place</a><br/>Zum Hungerkamp 2<br/>29640 Schneverdingen<br/> Deutschland<br/></p>
				<p><a id="I">Kontakt:</a></p>
				<p>Telefon: 0581 / 94888560<br/>E-Mail: <a href="mailto:g.ruschmeyer@ostfalia.de">g.ruschmeyer@ostfalia.de</a></p>
				<p><br/><a id="II">Registereintrag:</a></p>
				<p>Eintragung im Handelsregister. <br/>Registergericht:Amtsgericht Lüneburg <br/>Registernummer: 111111<br/>Umsatzsteuer-ID:</p>
				<p>Umsatzsteuer-Identifikationsnummer gemäß §27 a Umsatzsteuergesetz:<br/>11111<br/> <br/>Quelle: <a href="https://www.e-recht24.de/impressum-generator.html"> http://www.e-recht24.de</a><br/>
				<a id="III">Haftungsausschluss (Disclaimer)</a><br/>Haftung für Inhalte<br/>Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.<br/>
				Haftung für Links<br/>
				Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.<br/>
				Urheberrecht<br/>
				Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.</p>
 			</article>
		</section>
		<footer>
			<div>
				<button class="button-back" onclick="zurueck()"><i class="far fa-arrow-alt-circle-left fa-2x"></i></button>
			</div>
		</footer>
    </body>
</html>