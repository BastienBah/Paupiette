// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function toggleBurger(x){
  console.log(x);
  x.classList.toggle('open');
  document.getElementById('cheeseburger').classList.toggle('open');
}

var popup = document.querySelector('.pop-up');
var close = document.querySelector('.close-button');
var reservation = document.querySelector('.resbutton');

reservation.addEventListener("click",function(){
  popup.style.display = "block";
});

close.addEventListener("click",function(){
  popup.style.display = "none";
});

function popupInfos(){
  document.getElementById('popupInfos').style.display = "block";
}
