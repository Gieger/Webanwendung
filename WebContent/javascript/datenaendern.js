function validate()
{ 
	 var vorname = document.form.vorname.value;
	 var nachname = document.form.nachname.value;
	 var geschlecht = document.form.geschlecht.value;
	 var land = document.form.land.value;
	 var stadt = document.form.stadt.value;
	 var strasse = document.form.strasse.value;
	 var hausnummer = document.form.hausnummer.value;

	 
	 
	 if (vorname==null || vorname=="")
	 { 
		 alert("Vorname can't be blank"); 
		 return false; 
	 }
	 else if (nachname==null || nachname=="")
	 { 
		 alert("nachname can't be blank"); 
		 return false; 
	 
	 }
	
	 else if (land==null || land=="")
	 { 
		 alert("Land can't be blank"); 
		 return false; 
	 
	 }
	 else if (stadt==null || stadt=="")
	 { 
		 alert("stadt can't be blank"); 
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

	 else if (geschlecht!="Maenlich"&& geschlecht != "Weiblich" )
	 { 
		 alert("Geschlecht can't be blank"); 
		 return false; 
	 
	 }
	
	
 } 
