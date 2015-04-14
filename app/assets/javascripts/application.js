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

$(function(){ $(document).foundation(); });

L.mapbox.accessToken = 'pk.eyJ1IjoidmlydHVhbC1tb25rIiwiYSI6Ijc2MkxoLVUifQ.0QGDsafsrp25jF3eN6eUeQ';
// Replace 'virtual-monk.ln2l3lfc' with your map id.
var mapboxTiles = L.tileLayer('https://{s}.tiles.mapbox.com/v4/virtual-monk.ln2l3lfc/{z}/{x}/{y}.png?access_token=' + L.mapbox.accessToken, {
    attribution: 'Terms & Feedback'
});

var map = L.map('map')
    .addLayer(mapboxTiles)
    .setView([42.3610, -71.0587], 15);
