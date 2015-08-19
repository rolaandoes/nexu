        LatLng = [];
        // console.log(LatLng);

       // var latitude = LatLng[0]
       // var longitude = LatLng[1]

//

$(function(){

  $('#finder-btn').on('click', function (){ 
    navigator.geolocation.getCurrentPosition(success, error);


    var output = document.getElementById("out");
    if (!navigator.geolocation){
      output.innerHTML = "<p>Geolocation is not supported by your browser</p>";
      return;
    }

    function success(position) {
    var latitude  = position.coords.latitude;
    var longitude = position.coords.longitude;

    //Updating DOM
    output.innerHTML = '<p>Latitude is ' + latitude + '° <br>Longitude is ' + longitude + '°</p>';
    var img = new Image();
    img.src = "https://maps.googleapis.com/maps/api/staticmap?center=" + latitude + "," + longitude + "&zoom=13&size=300x300&sensor=false";
    output.appendChild(img);
    //Saving Position to Database
    var currentUserId = $(this).attr('data-id')
    
    $.ajax({
      url: '/users/' + currentUserId,
      data: { user: { latitude: latitude, longitude: longitude} },
      // dataType: 'json',
      type: 'patch',
      beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
      success: function(data) {
        console.log("Patch Succesful!")
      },
      error: function(err) {
        // console.log(latitude)
        console.log(LatLng[0], LatLng[1])
        console.log("Error Thrown")
      }
    });

    
    
  };

  function error() {
    output.innerHTML = "Unable to retrieve your location";
  };
  });
});


//update location for current_user

       //  LatLng = [];
       //  console.log(LatLng);

       // var latitude = LatLng[0]
       // var longitude = LatLng[1]



function geoFindMe() {


  

  output.innerHTML = "<p>Locating…</p>";
  //find-button onClick >> in success go to Database
  
}



console.log('I live to serveeeeee')

console.log('Scripts are in the Correct File');













