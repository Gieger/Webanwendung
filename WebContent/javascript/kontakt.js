function validate()
{ 
	//Inhalt der Values in Variabeln einlesen  
	var vorname = document.form.vorname.value;
	var nachname = document.form.nachname.value;
	var besuchsdatum = document.form.besuchsdatum.value;
	var land = document.form.land.value;
	var strasse = document.form.strasse.value;
	var hausnummer = document.form.hausnummer.value;
	var stadt = document.form.stadt.value;
	var email = document.form.email.value;
	var anmerkung = document.form.anmerkung.value;
	var age = document.form.age.value;
	//Prüfung ob eines der Values keinen Wert hat wenn ja wird eine Meldung gegeben
	if (vorname==null || vorname=="")
	{ 
		alert("Vorname can't be blank"); 
		return false; 
	}
	else if (nachname==null || nachname=="")
	{ 
		alert("Nachname can't be blank"); 
		return false; 
	}
	else if (besuchsdatum==null || besuchsdatum=="")
	{ 
		alert("Besuchsdatum can't be blank"); 
		return false; 
	}
	else if (land==null || land=="")
	{ 
		alert("Land can't be blank"); 
		return false; 
	}
	else if (strasse==null || strasse=="")
	{ 
		alert("Straße can't be blank"); 
		return false; 
	}
	else if (hausnummer==null || hausnummer=="")
	{ 
		alert("Hausnummer can't be blank"); 
		return false; 
	}
	else if (stadt==null || stadt=="")
	{ 
		alert("Stadt can't be blank"); 
		return false; 
	}
	else if (email==null || email=="")
	{ 
		alert("Email can't be blank"); 
		return false; 
	}	 
	else if (anmerkung==null || anmerkung=="")
	{ 
		alert("Anmerkung can't be blank"); 
		return false; 
	}
	else if (age==null || age=="")
	{ 
		alert("Alter can't be blank"); 
		return false; 
	}	  
} 