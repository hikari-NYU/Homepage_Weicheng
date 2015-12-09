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
});


$(document).on('click','#home_link',function (event){
	var source=document.getElementById('title').innerText;
	source=source.substring(0,source.indexOf('|'));
	var destination="Home";
	$('#load_cover').css("opacity","1.0");
	$('#load_cover').css("backgroundColor","white");
	var msg="> Leaving "+source+"; Heading "+destination;
	var i=0;
	var c = document.getElementById("load_cover");
	var ctx = c.getContext("2d");
	ctx.font = "25px Times";
	var id=setInterval(function() {
		sub=msg.slice(0,i);
		ctx.fillText(sub,10,50);
		i=i+1;
		if(i>msg.length) {
			var j=0;
			var sid=setInterval(function() {
				j=j+1;
				if(j==1) {
					clearInterval(id);
					window.location="work";
				}
				if(j>1) {
					$('#load_cover').css("opacity","0.0");
					clearInterval(sid);
				}
			},100);
		}
	},30);
	event.preventDefault();
});

$(document).on('click','#work_link',function (event){
	var source=document.getElementById('title').innerText;
	source=source.substring(0,source.indexOf('|'));
	var destination="Work";
	$('#load_cover').css("opacity","1.0");
	$('#load_cover').css("backgroundColor","white");
	var msg="> Leaving "+source+"; Heading "+destination;
	var i=0;
	var c = document.getElementById("load_cover");
	var ctx = c.getContext("2d");
	ctx.font = "25px Times";
	var id=setInterval(function() {
		sub=msg.slice(0,i);
		ctx.fillText(sub,10,50);
		i=i+1;
		if(i>msg.length) {
			var j=0;
			var sid=setInterval(function() {
				j=j+1;
				if(j==1) {
					clearInterval(id);
					window.location="work";
				}
				if(j>1) {
					$('#load_cover').css("opacity","0.0");
					clearInterval(sid);
				}
			},100);
		}
	},30);
	event.preventDefault();
});

$(document).on('click','#interest_link',function (event){
	var source=document.getElementById('title').innerText;
	source=source.substring(0,source.indexOf('|'));
	var destination="Interest";
	$('#load_cover').css("opacity","1.0");
	$('#load_cover').css("backgroundColor","white");
	var msg="> Leaving "+source+"; Heading "+destination;
	var i=0;
	var c = document.getElementById("load_cover");
	var ctx = c.getContext("2d");
	ctx.font = "25px Times";
	var id=setInterval(function() {
		sub=msg.slice(0,i);
		ctx.fillText(sub,10,50);
		i=i+1;
		if(i>msg.length) {
			var j=0;
			var sid=setInterval(function() {
				j=j+1;
				if(j==1) {
					clearInterval(id);
					window.location="work";
				}
				if(j>1) {
					$('#load_cover').css("opacity","0.0");
					clearInterval(sid);
				}
			},100);
		}
	},30);
	event.preventDefault();
});
