// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

$(function(){ $(document).foundation();
  var map = L.map('map').setView([42.351776, -71.061371], 14);
  accessToken = 'pk.eyJ1IjoidmlydHVhbC1tb25rIiwiYSI6Ijc2MkxoLVUifQ.0QGDsafsrp25jF3eN6eUeQ';
  L.tileLayer('https://{s}.tiles.mapbox.com/v4/virtual-monk.ln2l3lfc/{z}/{x}/{y}.png?access_token=' + accessToken, {
      attribution: '<a href="http://www.mapbox.com/about/maps/" target="_blank">Terms &amp; Feedback</a>'
  }).addTo(map);

  $.get( "/events.json", function( data ) {
    showCoordinates = []
    for (i=0; i<data.length; i++) {
      var coordinatesArray =  [data[i].latitude, data[i].longitude];
      var marker = L.marker([coordinatesArray[0],coordinatesArray[1]]);
      marker.addTo(map);
      var popup = "<h1>" + data[i].title + "</h1>"
      popup += "<h3>" + data[i].date + "</h3>"
      popup += "<h3>" + data[i].start_time + "-" + data[i].end_time + "</h3>"
      marker.bindPopup(popup);
    }
    map.fitBounds(showCoordinates)
  });
});
