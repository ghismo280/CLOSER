//= require rails-ujs
//= require_tree .

if (document.getElementById('user_latitude')) {
  navigator.geolocation.getCurrentPosition(function(position) {
    document.getElementById('user_latitude').value = position.coords.latitude;
    document.getElementById('user_longitude').value = position.coords.longitude;

    // alert("here the geoloc!")
    document.getElementById("button_signup_user").disabled = false;
  });
}

