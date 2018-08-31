<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="de">
	<head>
	    <meta charset="UTF-8" >
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <title>AGB</title>
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
			<h1>AGB</h1>
		</header>
		<section class="main hbox space-between">
			<aside class="side">
				<ul>
		            <li><a class="asidelink" href="#allgemeines"><i class="far fa-caret-square-right"></i> I.</a></li>
		            <li><a class="asidelink" href="#zahlungsbedingungen"><i class="far fa-caret-square-right"></i> II.</a></li>
		            <li><a class="asidelink" href="#teilnehmerzahl"><i class="far fa-caret-square-right"></i> III.</a></li>
		            <li><a class="asidelink" href="#speisen"><i class="far fa-caret-square-right"></i> IV.</a></li>
		            <li><a class="asidelink" href="#einrichtungen"><i class="far fa-caret-square-right"></i> V.</a></li>
		            <li><a class="asidelink" href="#verlust"><i class="far fa-caret-square-right"></i> VI.</a></li>
		            <li><a class="asidelink" href="#nichtidentität"><i class="far fa-caret-square-right"></i> VII.</a></li>
		            <li><a class="asidelink" href="#schlussbestimmungen"><i class="far fa-caret-square-right"></i> VIII.</a></li>
	        	</ul>
			</aside>
			<article class="text">
				<img src="${pageContext.request.contextPath}/source/img/agb.png" alt="agb" class="textimage">
				<h2><a id="allgemeines">I. Allgemeines</a></h2>
		        <p>Die allgemeinen Geschäftsbedingungen gelten für alle angebotenen Leistungen der Firma Burger Place mit ihren Vertragspartnern (Veranstaltern). Rechtsbeziehungen zwischen dem Veranstalter und einem Dritten betreffen das Rechtsverhältnis zwischen Burger Place und dem Veranstalter nicht. Geschäftsbedingungen des Veranstalters finden nur Anwendung, wenn dies schriftlich vereinbart wurde.</p>
				<p>Der Vertrag ist geschlossen, sobald ein Catering, das Restaurant, andere Räume oder sonstige Lieferungen und Leistungen bestellt und zugesagt sind. Dies kann auch mündlich, per Email, per Fax, telefonisch oder persönlich sein.</p>
		        <p>Ist der Veranstalter nicht der Besteller selbst oder wird vom Veranstalter ein gewerblicher Vermittler oder Organisator eingeschaltet, so haften diese zusammen mit dem Veranstalter gesamtschuldnerisch für alle Verpflichtungen aus dem Vertrag. Wird Burger Place durch höhere Gewalt oder Streik in der Erfüllung seiner Leistungen behindert, so kann hieraus keine Schadenersatzpflicht abgeleitet werden.</p>
		        <p>Burger Place verfügt über eine Betriebshaftpflichtversicherung. Der Veranstalter wird schon jetzt darauf hingewiesen, dass er für den Fall eines erweiterten Versicherungsschutzes hierfür Sorge zu tragen hat.</p>
				<p>Musiker- und Künstlergagen müssen bei einer Beauftragung durch Burger Place im Voraus durch den Veranstalter zur Verfügung gestellt werden. Anfallende GEMA-Gebühren trÃ¤gt grundsätzlich der Veranstalter. Er hat auch für die entsprechende Anmeldung Sorge zu tragen.</p>
			    <h2><a id="zahlungsbedingungen">II. Zahlungsbedingungen</a></h2>
		        <p>Alle Preise im kaufmännischen Verkehr verstehen sich zuzüglich der gesetzlichen Mehrwertsteuer / im privaten Verkehr inklusive gesetzlicher Mehrwertsteuer. Angebote, die sich auf das Restaurant beziehen verstehen sich in jedem Fall inklusive MwSt. Rechnungen sind innerhalb von 10 Tagen ab Zugang ohne Abzug zahlbar, der Rechnungszugang kann auch per Fax oder Email erfolgen. Der Verzug tritt, ohne weitere In-Verzug-Setzung mit dem 11. Tage ab Zugang der Rechnung an, Burger Place ist berechtigt dann Zinsen in Höhe der gesetzlichen Möglichkeiten in Anspruch zu nehmen. Burger Place ist im Vorfeld einer Veranstaltung berechtigt eine Vorauszahlung zu verlangen, es gelten die gleichen Zahlungsbedingungen wie bei der Stellung einer Rechnung.</p>
				<p>Der Veranstalter kann nur mit unstreitigen oder rechtskräftig festgestellten Forderungen gegenüber Ansprüchen von Burger Place aufrechnen. Bei fruchtlosem Verstreichen einer Nachfrist von 10 Tagen mit Ablehnungsandrohung kann Burger Place vom Vertrag zurücktreten. Bei berechtigtem Rücktritt durch Burger Place hat der Veranstalter keinen Anspruch auf Schadenersatz. Tritt der Veranstalter früher als drei Monate vor dem Veranstaltungstermin zurück, ist Burger Place berechtigt 20 % des Angebotspreises in Rechnung zu stellen. Tritt der Veranstalter zwischen der 12. und der 4. Woche vor dem Veranstaltungstermin zurück, ist Burger Place berechtigt 35 % des entgangenen Umsatzes in Rechnung zu stellen, bei jedem späteren Rücktritt 70 % des Umsatzes. Die Berechnung des Umsatzes erfolgt nach der Formel: Angebotspreis (Speisen, Getränke, ggf. Sonstiges) x Personenzahl. Ersparte Aufwendungen sind damit abgegolten.</p>
			  	<h2><a id="teilnehmerzahl">III. Änderungen der Teilnehmerzahl oder VA-Zeit</a></h2>
		        <p>Der Veranstalter ist verpflichtet, Burger Place die Anzahl der Teilnehmer (garantiert) an der Veranstaltung spätestens 3 Tage vor dem Termin mitzuteilen. Teilt er die tatsächliche Teilnehmerzahl erst in einem Zeitraum zwischen 3 Tagen und 24 Stunden vor der Veranstaltung mit ergibt sich ein Eilaufschlag von 10 % auf das vorgelegte Angebot. Veränderungen 24 Stunden vor Veranstaltungsbeginn oder Verabsäumung der Mitteilung der garantierten Teilnehmerzahl führen dazu, dass Burger Place die Leistung gemäß Ihrem Angebot erbringen wird. Nachteile, die dem Veranstalter hieraus entstehen, gehen nicht zu Lasten von Burger Place. Bei Abweichungen der Teilnehmerzahl um mehr als 10 % ist Burger Place berechtigt, die vereinbarten Preise neu festzusetzen, für eine Abweichung von 10 bis 20 % um 15 %, darÃ¼ber hinaus um bis zu 20 %. Sollte die tatsächliche Teilnehmerzahl von der (garantierten) Teilnehmerzahl um mehr als 40 % abweichen, ist Burger Place berechtigt die Leistung zu verweigern.</p>
			    <h2><a id="speisen">IV. Mitbringen von Speisen und Getränken</a></h2>
		        <p>Der Veranstalter sieht davon ab, selbst Speisen und Getränke zu Veranstaltungen mitzubringen. Ausnahmen bedürfen einer schriftlichen Vereinbarung. In solchen Fällen wird eine Servicegebühr bzw. Korkgeld berechnet.</p>
			    <h2><a id="einrichtungen">V. Technische Einrichtungen</a></h2>
		        <p>Der Veranstalter stellt Burger Place bei Catering außer Haus die notwendigen technischen Einrichtungen kostenfrei zur Verfügung. Geschieht dies bis zu 6 Stunden vor der Veranstaltung nicht, ist Burger Place berechtigt, die notwendigen technischen Einrichtungen erstellen zu lassen. Der Veranstalter verpflichtet sich die in Rechnung gestellten Kosten, zuzüglich eines zusätzlichen Kostenanteils von 25% an Burger Place zu bezahlen. Stellt der Veranstalter keine technischen Einrichtungen zur Verfügung, ist Burger Place berechtigt die Veranstaltung bis zu ihrem Beginn abzusagen, der Veranstalter verpflichtet sich in diesem Fall 70 % des Speise- und Getränkeumsatzes (gemäß der oben erwähnten Speisenumsatzformel) zu bezahlen. Der Veranstalter stellt Burger Place von Ansprüchen Dritter frei insoweit Burger Place nicht grob fahrlässig oder vorsätzlich gehandelt hat. Der Veranstalter ist verpflichtet Burger Place schriftlich auf Gefahren erhöhende Momente (auch bezüglich der zur Verfügung gestellten Räumlichkeiten) hinzuweisen.</p>
			    <h2><a id="verlust">VI. Verlust oder Beschädigung</a></h2>
		        <p>Seitens des Veranstalters, seiner Beauftragten und seiner Gäste eingebrachter Sachen trägt der Veranstalter selbst Sorge. Verlust oder Schäden die von Burger Place verursacht wurden, werden auf Nachweis im Falle von Vorsatz und grober Fahrlässigkeit ausgeglichen. Darüber hinaus gehende Ansprüche bestehen gegenüber Burger Place nicht. Die Einbringung von Dekorationsmaterial und sonstigen Ausstattungsteilen muss zwischen den Parteien schriftlich vereinbart werden. Eventuell erforderliche behördliche Genehmigungen hat der Veranstalter Burger Place bis 48 Stunden vor der Veranstaltung vorzuweisen. Falls er dies versäumt, ist Burger Place berechtigt, den Vertrag zu kündigen und 70 % des Speisen- und Getränkeumsatzes gemäß der Speisenumsatzformel zu fordern. Soll seitens Burger Place eine notwendige Genehmigung eingeholt werden, zahlt der Veranstalter hierfür pauschal € 50,00 zuzüglich der Gebühren.</p>
			    <h2><a id="nichtidentität">VII. Nichtidentität zwischen Veranstalter und Auftragge</a></h2>
		        <p>Alleiniger Vertragspartner von Burger Place ist der Veranstalter. Burger Place trifft keine weiteren vertraglichen Vereinbarungen mit Dritten, dies obliegt dem Veranstalter. Burger Place ist berechtigt bis zum Beginn der Veranstaltung von dem Vertrag zurückzutreten, wenn der Veranstalter nicht eine solche Erklärung abgibt. Für den Fall des Rücktritts vom Vertrag ist Burger Place berechtigt 70 % des Speisen- und Getränkeumsatzes gemäß der Speisenumsatzformel zu fordern. Die Berichtigung von Irrtümern, sowie Druck- und Rechenfehlern bleibt vorbehalten.</p>
			   	<h2><a id="schlussbestimmungen">VIII. Schlussbestimmungen</a></h2>
		        <p>Änderungen oder Ergänzungen des Vertrages sollen lediglich aus Beweisgründen schriftlich erfolgen. Erfüllungsort ist der Veranstaltungsort, Zahlungsort ist der Sitz von Burger Place. Ausschließlicher Gerichtsstand ist der Sitz der Burger Place. Es gilt ausschließlich Deutsches Recht.</p>
				<p>Sollte eine der vorgenannten Bestimmungen unwirksam sein, so berührt dies die Gültigkeit der anderen Bestimmungen nicht. Anstelle der ungültigen Bestimmung gilt eine ihr nahe kommende gültige Bestimmung.</p>
			</article>
		</section>
		<footer>
			<div>
				<button class="button-back" onclick="zurueck()"><i class="far fa-arrow-alt-circle-left fa-2x"></i></button>
			</div>
		</footer>
    </body>
</html>