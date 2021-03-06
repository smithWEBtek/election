let myLatlng = new google.maps.LatLng(41.38, 2.18);
let myOptions = {
	zoom: 13,
	center: myLatlng
}
let map = new google.maps.Map(document.getElementById("map-canvas"), myOptions);
let geocoder = new google.maps.Geocoder();

google.maps.event.addListener(map, 'click', function (event) {
	geocoder.geocode({
		'latLng': event.latLng
	}, function (results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			if (results[0]) {
				alert(results[0].formatted_address);
			}
		}
	});
});