let map;
let markers = [];
let locations = [];
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
	console.log(locations);
	// figure out how to remove marker, and add marker back
	// also need to remove duplicates from location array
  }
function addMarker(location, title){
	const marker = new google.maps.Marker({
	  position: {lat: location[0], lng: location[1]},
	  title: title,
	});
	console.log(marker);
	markers.push(marker);
	marker.setMap(map);
}

function removeAllMarkers(){
	markers.forEach((marker) => {
		marker.setMap(null);
	});
}

function removeOneMarker(index){
	markers[index].setMap(null);
}

// collect lat and lng from address
function getLatLng(address, myCallback, title){
	geocoder = new google.maps.Geocoder();
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
function collecter(location, title){
	locations.push([location[0], location[1], title]);
	addMarker(location, title);
}
  window.initMap = initMap;