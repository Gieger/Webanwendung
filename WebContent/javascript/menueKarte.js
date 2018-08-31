function processMenueTagg()
{
    var menueTagg = document.getElementsByName("met");
    var selectedMenueTagg = [];
    for (var i = 0; i < menueTagg.length; i++)
    {
        if (menueTagg[i].checked) 
        {
        	selectedMenueTagg.push(menueTagg[i].value);
        }
    }
    // Setzt als Inhalt von hiddenSelectedMenueTagg Komma separiert die Strings von selectedMenueTagg
    var hiddenSelectedMenueTagg = document.getElementById("selectedMenueTagg");
    hiddenSelectedMenueTagg.value = selectedMenueTagg.join(","); 
    // Submit die form von der js aus.
    var form = document.getElementById("met");
    form.submit();        
}