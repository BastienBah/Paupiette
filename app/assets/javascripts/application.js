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


var buttons = document.getElementsByClassName('button-confirmation');

for (var i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener('click', displayConfirmation);
}



function toggleBurger(x){
  console.log(x);
  x.classList.toggle('open');
  document.getElementById('cheeseburger').classList.toggle('open');
}

function popupInfos(){
  document.getElementById('popupInfos').style.display = "block";
}

function displayConfirmation(e){
  buttonToHide = e.target;
  buttonToHide.style.opacity = "0";
  setTimeout(function(){buttonToHide.style.display = "none"}, 500);
}
