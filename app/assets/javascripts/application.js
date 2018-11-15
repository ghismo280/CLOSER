//= require rails-ujs
//= require_tree .

/*
if (document.getElementById('user_latitude')) {
 navigator.geolocation.getCurrentPosition(function(position) {
    document.getElementById('user_latitude').value = position.coords.latitude;
    document.getElementById('user_longitude').value = position.coords.longitude;

    document.getElementById("button_signup_user").disabled = false;
  });
}*/

if (document.getElementById('refresh_button')) {
  navigator.geolocation.getCurrentPosition(function(position) {
    var link = document.getElementById('refresh_button').href;
    var newLink = link + "?latitude=" + position.coords.latitude + "&longitude=" + position.coords.longitude;

    document.getElementById('refresh_button').href = newLink;
    document.getElementById("refresh_button").disabled = false;
  });
}
