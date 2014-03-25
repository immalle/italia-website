$(document).ready(function () {
    var $vorigElement;
    var getDagInfo = function (marker) {
        if ($vorigElement == null) { } else {$vorigElement.css({ 'background-color': '#ccc' });};

        var id = marker.id + 1;
        console.log(id);
        $("html, body").animate({ scrollTop: $(document).height() }, 1000);        
        $vorigElement = $('#' + id).css({ 'background-color': '#B0B0B0' });
    };

var locations = [
     [0, 'Immaculata', 51.302518, 4.734758, 1],
     [1, 'Pisa', 43.722731, 10.405369, 2],
     [2, 'Firenze', 43.773108, 11.255769, 3],
     [3, 'Assisi', 43.074421, 12.606314, 2],
     [4, 'Rome', 41.902085, 12.457452, 2],
     [5, 'Sienna', 43.318512, 11.331493],
     [6, 'Chianciano', 43.043865, 11.812091],
     [7, 'Lido Di Jesolo', 45.505655, 12.645042],
     [8, 'Venetie', 45.439297, 12.326288]];
// Markers + Textballon met naam
var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 6,
    center: new google.maps.LatLng(43, 12.457452),
    mapTypeId: google.maps.MapTypeId.ROADMAP
});

var infowindow = new google.maps.InfoWindow();

var marker, i;
for (i = 0; i < locations.length; i++) {
    marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][2], locations[i][3]),
        map: map,
        animation: google.maps.Animation.DROP,
        id: locations[i][0]
    });

    google.maps.event.addListener(marker, 'click', (function (marker, i) {
        
        return function () {
            infowindow.setContent(locations[i][1]);
            infowindow.open(map, marker);
            getDagInfo(marker);
            
        }
    })(marker, i));

}


});
