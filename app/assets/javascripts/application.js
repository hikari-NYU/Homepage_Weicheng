// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

jQuery(window).load(function(){
	$("#language").css("opacity","0.0");
	$("#language").css("left","0%");
	$("#language").animate({"left":"40%",
							"opacity":"1.0"},"slow");
	$("#interlink a").css("margin-top","0%");
	$("#interlink a").css("margin-bottom","0%");
	$("#interlink a").css("opacity","0.0");
	$("#interlink a").animate({"marginTop":"35%",
								"marginBottom":"30%",
								"opacity":"1.0"},"slow");
});


$(document).on('click','#home_link',function (event){
	var source=document.getElementById('home_link').innerText;
	var destination="home";
	$('#load_cover').css("opacity","0.7");
	var msg="> Leaving "+source+"; Heading "+destination;
	var i=0;
	var c = document.getElementById("load_cover");
	var ctx = c.getContext("2d");
	ctx.font = "5px Arial";
	var id=setInterval(function() {
		sub=msg.slice(0,i);
		ctx.fillText(sub,10,50);
		i=i+1;
		if(i==msg.length) {
			clearInterval(id);
		}
	},30);
	event.preventDefault();
});