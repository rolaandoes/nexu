$(function(){

  $('#finder-btn').on('click', function (){

    var currentUserId = $(this).attr('data-id')
    
    $.ajax({
      url: '/users/' + currentUserId,
      data: { latitude: LatLng[0], longitude: LatLng[1] },
      type: 'get',
      success: function(data) {
        console.log("Patch Succesful!")
      },
      error: function(err) {
        console.log("Error Thrown")
      }
    });
  });
});


//update location for current_user

        LatLng = [];
        console.log(LatLng);

       var latitude = LatLng[0]
       var longitude = LatLng[1]



function geoFindMe() {
  var output = document.getElementById("out");

  if (!navigator.geolocation){
    output.innerHTML = "<p>Geolocation is not supported by your browser</p>";
    return;
  }

  function success(position) {
    var latitude  = position.coords.latitude;
    var longitude = position.coords.longitude;

    
    output.innerHTML = '<p>Latitude is ' + latitude + '° <br>Longitude is ' + longitude + '°</p>';

    var img = new Image();
    img.src = "https://maps.googleapis.com/maps/api/staticmap?center=" + latitude + "," + longitude + "&zoom=13&size=300x300&sensor=false";

    // console.log(longitude);
    // console.log(latitude);
    //PLUCK into Location TABLE
     
    // latitude = lat_Jon;
    // longitude = lon_Jon;

    LatLng.push(latitude);
    LatLng.push(longitude);

    
    output.appendChild(img);
  };

  function error() {
    output.innerHTML = "Unable to retrieve your location";
  };

  output.innerHTML = "<p>Locating…</p>";

  navigator.geolocation.getCurrentPosition(success, error);
}



console.log('I live to serveeeeee')

console.log('Scripts are in the Correct File');













