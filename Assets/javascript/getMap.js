window.addEventListener("load", getLocation);
var x;

function getLocation() {
    x = document.getElementById("errorMsg");
    if (navigator.geolocation) {
        var options = {
            timeout: 60000
            , enableHighAccuracy: true
            , maximumAge: 0
        };
        navigator.geolocation.getCurrentPosition(showPosition, showError, options);
    }
    else {
        x.innerHTML = "unsupported browser.";
    }
}

function showPosition(position) {
    //    debugger;
    lat = 28.714786499999995;
    lon = 77.0847843;
    latlon = new google.maps.LatLng(lat, lon);
    mapholder = document.getElementById('mapholder');
    mapholder.style.height = '320px';
    mapholder.style.width = '550px';
    var myOptions = {
        center: latlon
        , zoom: 18
        , mapTypeId: google.maps.MapTypeId.ROAD
        , mapTypeControl: false
        , navigationControlOptions: {
            style: google.maps.NavigationControlStyle.SMALL
        }
    };
    var map = new google.maps.Map(document.getElementById("mapholder"), myOptions);
    var marker = new google.maps.Marker({
        position: latlon
        , map: map
        , title: "Your position " + lat + " " + lon
    });
}

function showError(error) {
    switch (error.code) {
    case error.PERMISSION_DENIED:
        x.innerHTML = "User denied the request for Geolocation."
        break;
    case error.POSITION_UNAVAILABLE:
        x.innerHTML = "Map Information is Unavailable."
        break;
    case error.TIMEOUT:
        x.innerHTML = "The request to get user location timed out."
        break;
    case error.UNKNOWN_ERROR:
        x.innerHTML = "An unknown error occurred."
        break;
    }
}