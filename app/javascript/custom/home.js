let map;
let markers = [];
let locations = [];
let geocoder = new google.maps.Geocoder();
let counter = 0;
let even = true;
// initialize map
function initMap() {
	// The location of Waltham
	const waltham = { lat: 42.3765, lng: -71.2356 };
	map = new google.maps.Map(document.getElementById("map"), {
	  zoom: 15,
	  center: waltham,
	});
	getLatLng("603 Main St, Waltham, MA 02452", collecter, "Peshawri Kebabs");
	getLatLng("10 Crescent St, Waltham, MA 02453", collecter, "Karibu Restaurant");
	getLatLng("146 Lexington St, Waltham, MA 02452", collecter, "Boston Kebab - Waltham");
	// figure out how to remove marker, and add marker back to map
	// may need to try marker clusterer
	// https://developers.google.com/maps/documentation/javascript/marker-clustering
}
// add marker to map without lat and long
function addMarker(location, title){
	
	const marker = new google.maps.Marker({
	  position: {lat: location[0], lng: location[1]},
	  title: title,
	});
	markers.push(marker);
	// remove duplicates from markers array based on title
	removeDuplicates(markers, "title");
	console.log("index for marker: " + counter);
	const contentString = '<div>'+
		'<div>'+
		'</div>'+
		'<h4>'+ title +'</h4>'+
		'<div>'+
		'<p>Click<a href="/restaurants/'+ counter +'"> here </a>to view the restaurant!</p>'+
		'</div>'+
		'</div>';

	const infowindow = new google.maps.InfoWindow({
		content: contentString,
		ariaLabel: title,
	  });
	marker.addListener("click", () => {
		infowindow.open({
		  anchor: marker,
		  map,
		});
	  });
	marker.setMap(map);
	// to fix the double marker issue
	if(even){
		counter++;
		even = false;
	}
	else{
		even = true;
	}
	
}

// add marker to map with lat and long
// function addMarker(marker){
// 	markers.push(marker);
// 	// remove duplicates from markers array based on title
// 	removeDuplicates(markers, "title");
// 	marker.setMap(map);
// }
// remove all markers from markers array
function removeAllMarkers(){
	markers.forEach((marker) => {
		marker.setMap(null);
	});
}
// remove one marker from markers array
function removeOneMarker(marker){
	console.log("The marker to delete: " + marker);
	marker.setMap(null);
}

// collect lat and lng from address
function getLatLng(address, myCallback, title){
	// geocoder = new google.maps.Geocoder();
	let latitude;
	let longitude;
	geocoder.geocode( { 'address': address}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			latitude = results[0].geometry.location.lat();
            longitude = results[0].geometry.location.lng();
			myCallback([latitude, longitude], title);
			
		} else {
			alert("Geocode was not successful for the following reason: " + status);
		}
	});
}
// collecter function from getLatLng (callback function)
function collecter(location, title){
	locations.push([location[0], location[1], title]);
	removeDuplicates(locations, 0);
	addMarker(location, title);
}
// remove duplicates from array based on attribute
function removeDuplicates(arr, index){
	let i = 0;
	let j = 0;
	let len = arr.length;
	for(i = 0; i < len; i++){
		for(j = i + 1; j < len; j++){
			if(arr[i][index] === arr[j][index]){
				arr.splice(j, 1);
				len--;
				j--;
			}
		}
	}
	return arr;
}
// click a marker on the map to delete it
function deleteMarkerOnMap(){
	console.log("deleteMarkerOnMap");
	markers.forEach((marker) => {
		google.maps.event.addListener(marker, 'click', function() {
			removeOneMarker(marker);
		});
	});
}
// click a marker on the map to add it
function addMarkerOnMap(){
	console.log("addMarkerOnMap");
	markers.forEach((marker) => {
		google.maps.event.addListener(marker, 'click', function() {
			addMarker(marker);
		});
	});
}

window.initMap = initMap;