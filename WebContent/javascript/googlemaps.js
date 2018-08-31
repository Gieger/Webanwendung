function initMap() {
  // der Standort wird festgelegt
  var suderburg = {lat: 52.898, lng: 10.443};
  // den geünschten ort zentriert anzeigen lassen
  var map = new google.maps.Map(
      document.getElementById("map"), { center: suderburg,zoom: 12});
  // marker für den gewünschten Standort setzten
  var marker = new google.maps.Marker({map: map,position: suderburg });
}