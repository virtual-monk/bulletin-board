// :javascript
//     // Replace 'virtual-monk.ln2l3lfc' with your map id.
//     var mapboxTiles = L.tileLayer('https://{s}.tiles.mapbox.com/v4/virtual-monk.ln2l3lfc/{z}/{x}/{y}.png?access_token=' + L.mapbox.accessToken, {
//         attribution: 'Terms & Feedback'
//     });

//     var map = L.map('map')
//         .addLayer(mapboxTiles)
//         .setView([42.3610, -71.0587], 15);

// http://leaflet-extras.github.io/leaflet-providers/preview/
$(window).onload(function() {
  //only execute if there is a div to put map in
  if( document.getElementById('map') != null ) {
    L.mapbox.accessToken = 'pk.eyJ1IjoidmlydHVhbC1tb25rIiwiYSI6Ijc2MkxoLVUifQ.0QGDsafsrp25jF3eN6eUeQ';
    var mapboxTiles = L.tileLayer('https://{s}.tiles.mapbox.com/v4/virtual-monk.ln2l3lfc/{z}/{x}/{y}.png?access_token=' + L.mapbox.accessToken, {
        attribution: 'Terms & Feedback'
    });

    //set map default view to Boston
    var map = L.map('map', {
        center: [42.3610, -71.0587]
        zoom: 15
      });

    L.control.layers({
        'Wheatpaste': mapboxTiles.addTo(map)
    }).addTo(map);

    //get projects data from database
    // $.get( "/maps", function( data ) {
    //   var coordsArray = [];
    //   for (i=0; i<data.length; i++) {
    //     var coordinatesArray =  data[i].coordinates.split(",");
    //     coordsArray.push(coordinatesArray);
    //     var marker = L.marker([coordinatesArray[0],coordinatesArray[1]]);
    //     marker.addTo(map);
    //     //build up popup content html string
    //     // var popupHTML = "<h5>" + data[i].title + "</h5>";
    //     // popupHTML += "<p>" + data[i].date + "</p>";
    //     // popupHTML += "<a href='" + data[i].path +"'><p>View Project</p></a>";
    //     // marker.bindPopup(popupHTML);
    //   }
    //   if (coordsArray.length > 0) {
    //     //set map view to include all projects
    //     map.fitBounds(coordsArray);
    //     //FIXME: zoom level not set properly
    //     map.setZoom(12);
    //   }
    // });

    // //fix to load all map tiles on index page
    // $("#map-tab").click(function() {
    //   map.invalidateSize();
    // });
  }
});
