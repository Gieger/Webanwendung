function dropDown() {
	var x = document.getElementById("dropdown");
    var divText = document.getElementById('dropbtn').firstChild;
    var text = divText.textContent;
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}