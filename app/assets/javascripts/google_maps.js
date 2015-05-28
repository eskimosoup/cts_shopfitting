$(document).ready(function(){
  var map;
  function initialize() {
  var myLatlng = new google.maps.LatLng(53.731082, -0.371555);
  var mapOptions = {
      zoom: 14,
      center: myLatlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    var myLatlng
    map = new google.maps.Map(document.getElementById('map-canvas'),
        mapOptions);

    var marker = new google.maps.Marker({
        position: myLatlng,
        map: map,
        title: 'CTS Shopfitting Ltd'
    });
  }

  google.maps.event.addDomListener(window, 'load', initialize);
});
