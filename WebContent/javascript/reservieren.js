function validate()
{ 
	//Inhalt der Values in Variabeln
	var vorname = document.form.vorname.value;
	var nachname = document.form.nachname.value;
	var email = document.form.email.value;
	var plaetze = document.form.plaetze.value;
	var land = document.form.land.value;
	var stadt = document.form.stadt.value;
	var strasse = document.form.strasse.value;
	var hausnummer = document.form.hausnummer.value;
	var alter = document.form.alter.value;
	var agb = document.form.agb;
	var reservierungsdatum= document.form.reservierungsdatum.value;
	//Prüfung ob ein Value leer ist 
	if (vorname==null || vorname=="")
	{ 
		alert("Full Name can't be blank"); 
		return false; 
	}
	else if (email==null || email=="")
	{ 
		alert("Email can't be blank"); 
		return false; 
	}
	else if (nachname==null || nachname=="")
	{ 
		alert("Username can't be blank"); 
		return false; 
	}
	else if (reservierungsdatum==null || reservierungsdatum=="")
	{ 
		alert("Reservierungsdatum can't be blank"); 
		return false; 
	}
	else if (plaetze== null || plaetze=="")
	{ 
		alert("plaetze can't be blank"); 
		return false; 
	}
	else if (alter== null || alter=="")
	{ 
		alert("alter can't be blank"); 
		return false; 
	}
	else if (land==null || land=="")
	{ 
		alert("Land can't be blank"); 
		return false; 
	}
	else if (stadt==null || stadt=="")
	{ 
		alert("Stadt can't be blank"); 
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
	else if (!(agb.checked))
	{ 
		alert("agb can't be blank"); 
		return false; 
	}
}