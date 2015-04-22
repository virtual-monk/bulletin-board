var map = L.map('map').setView([42.351776, -71.061371], 14);
L.mapbox.accessToken = 'pk.eyJ1IjoidmlydHVhbC1tb25rIiwiYSI6Ijc2MkxoLVUifQ.0QGDsafsrp25jF3eN6eUeQ';
L.tileLayer('https://{s}.tiles.mapbox.com/v4/virtual-monk.ln2l3lfc/{z}/{x}/{y}.png?access_token=' + L.mapbox.accessToken, {
    attribution: '<a href="http://www.mapbox.com/about/maps/" target="_blank">Terms &amp; Feedback</a>'
}).addTo(map);

$.get( '/events.json', function( data ) {
      var coordsArray = [];
      for (i=0; i<data.length; i++) {
        var coordinatesArray =  [data[i].latitude, data[i].longitude];
        coordsArray.push(coordinatesArray);
        var marker = L.marker([coordinatesArray[0],coordinatesArray[1]]);
        var popupHTML = "<h1>" + data[i].title + "</h1>";
        marker.bindPopup("popupHTML");
        marker.addTo(map);
      }
    });
