<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="de">
	<head>
	    <meta charset="UTF-8" >
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <title>Datenschutz</title>
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
			<h1>Datenschutz</h1>
		</header>
		<section class="main hbox space-between">
			<aside class="side">
				<ul>
		            <li><a class="asidelink" href="#anfang"><i class="far fa-caret-square-right"></i> Anfang</a></li>
		            <li><a class="asidelink" href="#I"><i class="far fa-caret-square-right"></i> I.</a></li>
		            <li><a class="asidelink" href="#II"><i class="far fa-caret-square-right"></i> II.</a></li>
		            <li><a class="asidelink" href="#III"><i class="far fa-caret-square-right"></i> III.</a></li>
		            <li><a class="asidelink" href="#IV"><i class="far fa-caret-square-right"></i> IV.</a></li>
		            <li><a class="asidelink" href="#V"><i class="far fa-caret-square-right"></i> V.</a></li>
		            <li><a class="asidelink" href="#VI"><i class="far fa-caret-square-right"></i> VI.</a></li>
		            <li><a class="asidelink" href="#VII"><i class="far fa-caret-square-right"></i> VII.</a></li>
		            <li><a class="asidelink" href="#VIII"><i class="far fa-caret-square-right"></i> VIII.</a></li>
		            <li><a class="asidelink" href="#IX"><i class="far fa-caret-square-right"></i> IX.</a></li>
		            <li><a class="asidelink" href="#X"><i class="far fa-caret-square-right"></i> X.</a></li>
	        	</ul>
			</aside>
			<article class="text">
				<img src="${pageContext.request.contextPath}/source/img/dsgvo.png" alt="datenschutz" class="textimage">
				<h2><a id="anfang"> Datenschutzerklärung</a></h2>
		        <p>Personenbezogene Daten (nachfolgend zumeist nur Daten genannt) werden von uns nur im Rahmen der Erforderlichkeit sowie zum Zwecke der Bereitstellung eines funktionsfähigen und nutzerfreundlichen Internetauftritts, inklusive seiner Inhalte und der dort angebotenen Leistungen, verarbeitet.</p>
		        <p>Gemäß Art. 4 Ziffer 1. der Verordnung (EU) 2016/679, also der Datenschutz-Grundverordnung (nachfolgend nur DSGVO genannt), gilt als Verarbeitung jeder mit oder ohne Hilfe automatisierter Verfahren ausgeführter Vorgang oder jede solche Vorgangsreihe im Zusammenhang mit personenbezogenen Daten, wie das Erheben, das Erfassen, die Organisation, das Ordnen, die Speicherung, die Anpassung oder Veränderung, das Auslesen, das Abfragen, die Verwendung, die Offenlegung durch Übermittlung, Verbreitung oder eine andere Form der Bereitstellung, den Abgleich oder die Verknüpfung, die Einschränkung, das Löschen oder die Vernichtung.</p>
		        <p>Mit der nachfolgenden Datenschutzerklärung informieren wir Sie insbesondere Über Art, Umfang, Zweck, Dauer und Rechtsgrundlage der Verarbeitung personenbezogener Daten, soweit wir entweder allein oder gemeinsam mit anderen über die Zwecke und Mittel der Verarbeitung entscheiden. Zudem informieren wir Sie nachfolgend über die von uns zu Optimierungszwecken sowie zur Steigerung der Nutzungsqualität eingesetzten Fremdkomponenten, soweit hierdurch Dritte Daten in wiederum eigener Verantwortung verarbeiten.</p>
		        <p>Unsere Datenschutzerklärung ist wie folgt gegliedert:</p>
		        <p>I. Informationen über uns als Verantwortliche<br>II. Rechte der Nutzer und Betroffenen<br>III. Informationen zur Datenverarbeitung</p>
		        <h3><a id="I"> I. Informationen über uns als Verantwortliche</a></h3>
		        <p>Verantwortlicher Anbieter dieses Internetauftritts im datenschutzrechtlichen Sinne ist:</p>
		        <p><span>Burger Place<br>Zum Hungerkamp 2<br>29640 Schneverdingen<br>Deutschland</span></p>
		        <p><span>Telefon: 058194888560<br>E-Mail: g.ruschmeyer@ostfalia.de</span></p>
		        <h3><a id="II">II. Rechte der Nutzer und Betroffenen</a></h3>
		        <p>Mit Blick auf die nachfolgend noch näher beschriebene Datenverarbeitung haben die Nutzer und Betroffenen das Recht</p>
	        	<ul>
		            <li>auf Bestätigung, ob sie betreffende Daten verarbeitet werden, auf Auskunft über die verarbeiteten Daten, auf weitere Informationen über die Datenverarbeitung sowie auf Kopien der Daten (vgl. auch Art. 15 DSGVO);</li>
		            <li>auf Berichtigung oder Vervollständigung unrichtiger bzw. unvollständiger Daten (vgl. auch Art. 16 DSGVO);</li>
		            <li>auf unverzügliche Löschung der sie betreffenden Daten (vgl. auch Art. 17 DSGVO), oder, alternativ, soweit eine weitere Verarbeitung gemäß Art. 17 Abs. 3 DSGVO erforderlich ist, auf Einschränkung der Verarbeitung nach Maßgabe von Art. 18 DSGVO;</li>
		            <li>auf Erhalt der sie betreffenden und von ihnen bereitgestellten Daten und auf Übermittlung dieser Daten an andere Anbieter/Verantwortliche (vgl. auch Art. 20 DSGVO);</li>
		            <li>auf Beschwerde gegenüber der Aufsichtsbehörde, sofern sie der Ansicht sind, dass die sie betreffenden Daten durch den Anbieter unter Verstoß gegen datenschutzrechtliche Bestimmungen verarbeitet werden (vgl. auch Art. 77 DSGVO).</li>
		        </ul>
		        <p>Darüber hinaus ist der Anbieter dazu verpflichtet, alle Empfänger, denen gegenüber Daten durch den Anbieter offengelegt worden sind, über jedwede Berichtigung oder Löschung von Daten oder die Einschränkung der Verarbeitung, die aufgrund der Artikel 16, 17 Abs. 1, 18 DSGVO erfolgt, zu unterrichten. Diese Verpflichtung besteht jedoch nicht, soweit diese Mitteilung unmöglich oder mit einem unverhältnismäßigen Aufwand verbunden ist. Unbeschadet dessen hat der Nutzer ein Recht auf Auskunft über diese Empfänger.</p>
		        <p><strong>Ebenfalls haben die Nutzer und Betroffenen nach Art. 21 DSGVO das Recht auf Widerspruch gegen die künftige Verarbeitung der sie betreffenden Daten, sofern die Daten durch den Anbieter nach Maßgabe von Art. 6 Abs. 1 lit. f) DSGVO verarbeitet werden. Insbesondere ist ein Widerspruch gegen die Datenverarbeitung zum Zwecke der Direktwerbung statthaft.</strong></p>
		        <h3><a id="III"> III. Informationen zur Datenverarbeitung</a></h3>
		        <p>Ihre bei Nutzung unseres Internetauftritts verarbeiteten Daten werden gelöscht oder gesperrt, sobald der Zweck der Speicherung entfüllt, der Löschung der Daten keine gesetzlichen Aufbewahrungspflichten entgegenstehen und nachfolgend keine anderslautenden Angaben zu einzelnen Verarbeitungsverfahren gemacht werden.</p>
				<h4><a id="IV"> IV. Kundenkonto / Registrierungsfunktion</a></h4>
		        <p>Falls Sie über unseren Internetauftritt ein Kundenkonto bei uns anlegen, werden wir die von Ihnen bei der Registrierung eingegebenen Daten (also bspw. Ihren Namen, Ihre Anschrift oder Ihre E-Mail-Adresse) ausschließlich für vorvertragliche Leistungen, für die Vertragserfüllung oder zum Zwecke der Kundenpflege (bspw. um Ihnen eine Übersicht über Ihre bisherigen Bestellungen bei uns zur Verfügung zu stellen oder um Ihnen die sog. Merkzettelfunktion anbieten zu können) erheben und speichern. Gleichzeitig speichern wir dann die IP-Adresse und das Datum Ihrer Registrierung nebst Uhrzeit. Eine Weitergabe dieser Daten an Dritte erfolgt natürlich nicht.</p>
		        <p>Im Rahmen des weiteren Anmeldevorgangs wird Ihre Einwilligung in diese Verarbeitung eingeholt und auf diese Datenschutzerklärung verwiesen. Die dabei von uns erhobenen Daten werden ausschlieÃßlich für die Zurverfügungstellung des Kundenkontos verwendet.&nbsp;</p>
		        <p>Soweit Sie in diese Verarbeitung einwilligen, ist Art. 6 Abs. 1 lit. a) DSGVO Rechtsgrundlage für die Verarbeitung.</p>
		        <p>Sofern die Eröffnung des Kundenkontos zusätzlich auch vorvertraglichen Maßnahmen oder der Vertragserfüllung dient, so ist Rechtsgrundlage für diese Verarbeitung auch noch Art. 6 Abs. 1 lit. b) DSGVO.</p>
		        <p>Die uns erteilte Einwilligung in die Eröffnung und den Unterhalt des Kundenkontos können Sie gemäß Art. 7 Abs. 3 DSGVO jederzeit mit Wirkung für die Zukunft widerrufen. Hierzu müssen Sie uns lediglich über Ihren Widerruf in Kenntnis setzen.</p>
		        <p>Die insoweit erhobenen Daten werden gelöscht, sobald die Verarbeitung nicht mehr erforderlich ist. Hierbei müssen wir aber steuer- und handelsrechtliche Aufbewahrungsfristen beachten.</p>
				<h4><a id="V"> V. Prüfung von Bonität und Scoring</a></h4>
		        <p>Soweit wir Ihnen im Rahmen unseres Waren- oder Dienstleistungsangebots die grundsätzliche Möglichkeit einer Bezahlung per Rechnung eröffnen und Sie hiervon Gebrauch machen, behalten wir uns vor, bei einer Auskunft (wie bspw. Creditreform, Schufa, Bürgel oder infoscore) eine Bonitätsauskunft auf der Basis mathematisch-statistischer Verfahren einzuholen. Hierzu werden Ihre Daten, soweit sie vertragserheblich sind, wie bspw. Ihren Namen und Ihre Anschrift, an die Auskunftei weiterleiten. Die anschlieÃende Auskunft über die statistische Wahrscheinlichkeit eines Zahlungsausfalls verwenden wir für unsere Entscheidung, ob wir Ihnen die Bezahlung per Rechnung anbieten.</p>
		        <p>Rechtsgrundlage für diese Verarbeitung ist unser berechtigtes Interesse an der Ausfallsicherheit der Forderung gem. Art. 6 Abs.1 lit. f) DSGVO.</p>
				<h4><a id="VI" >VI. Newsletter</a></h4>
		        <p>Falls Sie sich für unseren kostenlosen Newsletter anmelden, werden die von Ihnen hierzu abgefragten Daten, also Ihre E-Mail-Adresse sowie - optional - Ihr Name und Ihre Anschrift, an uns übermittelt. Gleichzeitig speichern wir die IP-Adresse des Internetanschlusses von dem aus Sie auf unseren Internetauftritt zugreifen sowie Datum und Uhrzeit Ihrer Anmeldung. Im Rahmen des weiteren Anmeldevorgangs werden wir Ihre Einwilligung in die Übersendung des Newsletters einholen, den Inhalt konkret beschreiben und auf diese Datenschutzerklärung verwiesen. Die dabei erhobenen Daten verwenden wir ausschließlich für den Newsletter-Versand, sie werden deshalb insbesondere auch nicht an Dritte weitergegeben.</p>
		        <p>Rechtsgrundlage hierbei ist Art. 6 Abs. 1 lit. a) DSGVO.</p>
		        <p>Die Einwilligung in den Newsletter-Versand können Sie gemäß Art. 7 Abs. 3 DSGVO jederzeit mit Wirkung für die Zukunft widerrufen. Hierzu müssen Sie uns lediglich über Ihren Widerruf in Kenntnis setzen oder den in jedem Newsletter enthaltenen Abmeldelink bestätigen.</p>
				<h4><a id="VII"> VII. Kontaktanfragen / Kontaktmöglichkeit</a></h4>
		        <p>Sofern Sie per Kontaktformular oder E-Mail mit uns in Kontakt treten, werden die dabei von Ihnen angegebenen Daten zur Bearbeitung Ihrer Anfrage genutzt. Die Angabe der Daten ist zur Bearbeitung und Beantwortung Ihre Anfrage erforderlich - ohne deren Bereitstellung können wir Ihre Anfrage nicht oder allenfalls eingeschränkt beantworten.</p>
		        <p>Rechtsgrundlage für diese Verarbeitung ist Art. 6 Abs. 1 lit. b) DSGVO.</p>
		        <p>Ihre Daten werden gelöscht, sofern Ihre Anfrage abschließend beantwortet worden ist und der Löschung keine gesetzlichen Aufbewahrungspflichten entgegenstehen, wie bspw. bei einer sich etwaig anschließenden Vertragsabwicklung.</p>
				<h4><a id="VIII"> VIII. Nutzerbeiträge, Kommentare und Bewertungen</a></h4>
		        <p>Wir bieten Ihnen an, auf unseren Internetseiten Fragen, Antworten, Meinungen oder Bewertungen, nachfolgend nur Beiträge genannt, zu veröffentlichen. Sofern Sie dieses Angebot in Anspruch nehmen, verarbeiten und veröffentlichen wir Ihren Beitrag, Datum und Uhrzeit der Einreichung sowie das von Ihnen ggf. genutzte Pseudonym.</p>
		        <p>Rechtsgrundlage hierbei ist Art. 6 Abs. 1 lit. a) DSGVO. Die Einwilligung können Sie gemäß Art. 7 Abs. 3 DSGVO jederzeit mit Wirkung für die Zukunft widerrufen. Hierzu müssen Sie uns lediglich über Ihren Widerruf in Kenntnis setzen.</p>
		        <p>Darüber hinaus verarbeiten wir auch Ihre IP- und E-Mail-Adresse. Die IP-Adresse wird verarbeitet, weil wir ein berechtigtes Interesse daran haben, weitere Schritte einzuleiten oder zu unterstützen, sofern Ihr Beitrag in Rechte Dritter eingreift und/oder er sonst wie rechtswidrig erfolgt.</p>
		        <p>Rechtsgrundlage ist in diesem Fall Art. 6 Abs. 1 lit. f) DSGVO. Unser berechtigtes Interesse liegt in der ggf. notwendigen Rechtsverteidigung.</p>
				<h4><a id="IX"> IX. Google-Maps</a></h4>
		        <p>In unserem Internetauftritt setzen wir Google Maps zur Darstellung unseres Standorts sowie zur Erstellung einer Anfahrtsbeschreibung ein. Es handelt sich hierbei um einen Dienst der Google LLC, 1600 Amphitheatre Parkway, Mountain View, CA 94043 USA, nachfolgend nur Google genannt.</p>
		        <p>Durch die Zertifizierung nach dem EU-US-Datenschutzschild (EU-US Privacy Shield)</p>
		        <p><a target="_blank" rel="noopener" href="https://www.privacyshield.gov/participant?id=a2zt000000001L5AAI&amp;status=Active">https://www.privacyshield.gov/participant?id=a2zt000000001L5AAI&amp;status=Active</a></p>
		        <p>garantiert Google, dass die Datenschutzvorgaben der EU auch bei der Verarbeitung von Daten in den USA eingehalten werden.</p>
		        <p>Um die Darstellung bestimmter Schriften in unserem Internetauftritt zu ermöglichen, wird bei Aufruf unseres Internetauftritts eine Verbindung zu dem Google-Server in den USA aufgebaut.</p>
		        <p>Sofern Sie die in unseren Internetauftritt eingebundene Komponente Google Maps aufrufen, speichert Google über Ihren Internet-Browser ein Cookie auf Ihrem Endgerät. Um unseren Standort anzuzeigen und eine Anfahrtsbeschreibung zu erstellen, werden Ihre Nutzereinstellungen und -daten verarbeitet. Hierbei können wir nicht ausschließen, dass Google Server in den USA einsetzt.</p>
		        <p>Rechtsgrundlage ist Art. 6 Abs. 1 lit. f) DSGVO. Unser berechtigtes Interesse liegt in der Optimierung der Funktionalität unseres Internetauftritts.</p>
		        <p>Durch die so hergestellte Verbindung zu Google kann Google ermitteln, von welcher Website Ihre Anfrage gesendet worden ist und an welche IP-Adresse die Anfahrtsbeschreibung zu übermitteln ist.</p>
		        <p>Sofern Sie mit dieser Verarbeitung nicht einverstanden sind, haben Sie die Möglichkeit, die Installation der Cookies durch die entsprechenden Einstellungen in Ihrem Internet-Browser zu verhindern. Einzelheiten hierzu finden Sie vorstehend unter dem Punkt Cookies.</p>
		        <p>Zudem erfolgt die Nutzung von Google Maps sowie der über Google Maps erlangten Informationen nach den <a target="_blank" rel="noopener" href="http://www.google.de/accounts/TOS">Google-Nutzungsbedingungen</a>&nbsp;<a target="_blank" rel="noopener" href="https://policies.google.com/terms?gl=DE&amp;hl=de">https://policies.google.com/terms?gl=DE&amp;hl=de</a> und den <a target="_blank" rel="noopener" href="http://www.google.com/intl/de_de/help/terms_maps.html">Geschäftsbedingungen für Google Maps</a> https://www.google.com/intl/de_de/help/terms_maps.html.</p>
		        <p>Überdies bietet Google unter</p>
		        <p><a target="_blank" rel="noopener" href="https://adssettings.google.com/authenticated">https://adssettings.google.com/authenticated</a></p>
		        <p><a target="_blank" rel="noopener" href="https://policies.google.com/privacy">https://policies.google.com/privacy</a></p>
		        <p>weitergehende Informationen an.</p>
				<h4><a id="X"> X. YouTube</a></h4>
		        <p>In unserem Internetauftritt setzen wir YouTube ein. Hierbei handelt es sich um ein Videoportal der YouTube LLC., 901 Cherry Ave., 94066 San Bruno, CA, USA, nachfolgend nur YouTube genannt.</p>
		        <p>YouTube ist ein Tochterunternehmen der Google LLC., 1600 Amphitheatre Parkway, Mountain View, CA 94043 USA, nachfolgend nur Google genannt.</p>
		        <p>Durch die Zertifizierung nach dem EU-US-Datenschutzschild (EU-US Privacy Shield)</p>
		        <p><a target="_blank" rel="noopener" href="https://www.privacyshield.gov/participant?id=a2zt000000001L5AAI&amp;status=Active">https://www.privacyshield.gov/participant?id=a2zt000000001L5AAI&amp;status=Active</a></p>
		        <p>garantiert Google und damit auch das Tochterunternehmen YouTube, dass die Datenschutzvorgaben der EU auch bei der Verarbeitung von Daten in den USA eingehalten werden.</p>
		        <p>Wir nutzen YouTube im Zusammenhang mit der Funktion Erweiterter Datenschutzmodus, um Ihnen Videos anzeigen zu können. Rechtsgrundlage ist Art. 6 Abs. 1 lit. f) DSGVO. Unser berechtigtes Interesse liegt in der Qualitätsverbesserung unseres Internetauftritts. Die Funktion Erweiterter Datenschutzmodus bewirkt laut Angaben von YouTube, dass die nachfolgend noch näher bezeichneten Daten nur dann an den Server von YouTube übermittelt werden, wenn Sie ein Video auch tatsächlich starten.</p>
		        <p>Ohne diesen Erweiterten Datenschutz wird eine Verbindung zum Server von YouTube in den USA hergestellt, sobald Sie eine unserer Internetseiten, auf der ein YouTube-Video eingebettet ist, aufrufen.</p>
		        <p>Diese Verbindung ist erforderlich, um das jeweilige Video auf unserer Internetseite über Ihren Internet-Browser darstellen zu können. Im Zuge dessen wird YouTube zumindest Ihre IP-Adresse, das Datum nebst Uhrzeit sowie die von Ihnen besuchte Internetseite erfassen und verarbeiten. Zudem wird eine Verbindung zu dem Werbenetzwerk DoubleClick von Google hergestellt.</p>
		        <p>Sollten Sie gleichzeitig bei YouTube eingeloggt sein, weist YouTube die Verbindungsinformationen Ihrem YouTube-Konto zu. Wenn Sie das verhindern möchten, müssen Sie sich entweder vor dem Besuch unseres Internetauftritts bei YouTube ausloggen oder die entsprechenden Einstellungen in Ihrem YouTube-Benutzerkonto vornehmen.</p>
		        <p>Zum Zwecke der Funktionalität sowie zur Analyse des Nutzungsverhaltens speichert YouTube dauerhaft Cookies über Ihren Internet-Browser auf Ihrem Endgerät. Falls Sie mit dieser Verarbeitung nicht einverstanden sind, haben Sie die Möglichkeit, die Speicherung der Cookies durch eine Einstellung in Ihrem Internet-Browsers zu verhindern. Nähere Informationen hierzu finden Sie vorstehend unter Cookies.</p>
		        <p>Weitergehende Informationen über die Erhebung und Nutzung von Daten sowie Ihre diesbezüglichen Rechte und Schutzmöglichkeiten hält Google in den unter</p>
		        <p><a target="_blank" rel="noopener" href="https://policies.google.com/privacy">https://policies.google.com/privacy</a></p>
		        <p>abrufbaren Datenschutzhinweisen bereit.</p>
				<p><a target="_blank" href="https://www.ratgeberrecht.eu/leistungen/muster-datenschutzerklaerung.html">Muster-Datenschutzerklärung</a> der <a target="_blank" href="https://www.ratgeberrecht.eu/">Anwaltskanzlei Weiß &amp; Partner</a></p>
			</article>
		</section>
		<footer>
			<div>
				<button class="button-back" onclick="zurueck()"><i class="far fa-arrow-alt-circle-left fa-2x"></i></button>
			</div>
		</footer>
    </body>
</html>