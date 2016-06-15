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

//= require_tree ./templates
//= require jquery
//= require jquery_ujs
//= require async
//= require angular/angular
//= require angular-route/angular-route
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
	$('#load_cover').css("z-index","10");
	$('#load_cover').css("opacity","1.0");
	$('#load_cover').css("backgroundColor","white");
	$('#load_cover').css("width","100%");
	$('#load_cover').css("height","100%");
	var msg="> Leaving "+source+"; Heading "+destination;
	var i=0;
	var c = document.getElementById("load_cover");
	var ctx = c.getContext("2d");
	ctx.font = "25px Times";
	var id=setInterval(function() {
		if(i<=msg.length) {
			sub=msg.slice(0,i);
		}
		else {
			sub=msg;
		}
		ctx.fillText(sub,10,50);
		i=i+1;
		if(i>msg.length+50) {
			
					clearInterval(id);
					window.location="index";
		}
		if(i>msg.length+51) {
					$('#load_cover').css("opacity","0.0");
					$('#load_cover').css("z-index","0");
					$('#load_cover').css("width","0%");
					$('#load_cover').css("height","0%");
			
		}
	},30);
	event.preventDefault();
});

$(document).on('click','#work_link',function (event){
	var source=document.getElementById('title').innerText;
	source=source.substring(0,source.indexOf('|'));
	var destination="Work";
	$('#load_cover').css("z-index","10");
	$('#load_cover').css("opacity","1.0");
	$('#load_cover').css("backgroundColor","white");
	$('#load_cover').css("width","100%");
	$('#load_cover').css("height","100%");
	var msg="> Leaving "+source+"; Heading "+destination;
	var i=0;
	var c = document.getElementById("load_cover");
	var ctx = c.getContext("2d");
	ctx.font = "25px Times";
	var id=setInterval(function() {
		if(i<=msg.length) {
			sub=msg.slice(0,i);
		}
		else {
			sub=msg;
		}
		ctx.fillText(sub,10,50);
		i=i+1;
		if(i>msg.length+50) {

					clearInterval(id);
					window.location="work";
		}
		if(i>msg.length+51) {
					$('#load_cover').css("opacity","0.0");
					$('#load_cover').css("z-index","0");
					$('#load_cover').css("width","0%");
					$('#load_cover').css("height","0%");

		}
	},30);
	event.preventDefault();
});

$(document).on('click','#interest_link',function (event){
	var source=document.getElementById('title').innerText;
	source=source.substring(0,source.indexOf('|'));
	var destination="Interest";
	$('#load_cover').css("z-index","10");
	$('#load_cover').css("opacity","1.0");
	$('#load_cover').css("backgroundColor","white");
	$('#load_cover').css("width","100%");
	$('#load_cover').css("height","100%");
	var msg="> Leaving "+source+"; Heading "+destination;
	var i=0;
	var c = document.getElementById("load_cover");
	var ctx = c.getContext("2d");
	ctx.font = "25px Times";
	var id=setInterval(function() {
		if(i<=msg.length) {
			sub=msg.slice(0,i);
		}
		else {
			sub=msg;
		}
		ctx.fillText(sub,10,50);
		i=i+1;
		if(i>msg.length+50) {
			var j=0;
			
					clearInterval(id);
					window.location="interest";
		}
		if(i>msg.length+51) {
					$('#load_cover').css("opacity","0.0");
					$('#load_cover').css("z-index","0");
					$('#load_cover').css("width","0%");
					$('#load_cover').css("height","0%");
					clearInterval(sid);

		}
	},30);
	event.preventDefault();
});

$(document).on('click','#cancel_pwd',function(event) {
	$('#pwd').val('');
});

		angular.module('displayapp',['ngAnimate','ngResource'])
		.config(['$compileProvider', function ($compileProvider) {
  			$compileProvider.debugInfoEnabled(false);
		}])
		.controller('display_controller',['$scope',function($scope) {
			self.$inject = ['$scope'];
			$scope.show_credential=function() {
				$scope.correct_pwd='hikariTGpass1';
				$scope.pwd='';
				$scope.disp_cred=true;
			}
			$scope.show_manage=function() {
				if($scope.pwd==$scope.correct_pwd) {
					$scope.disp_manage=true;
					$scope.pwd='';
				}
				$scope.disp_cred=false;
			}
			$scope.hide_manage=function() {
				$scope.disp_manage=false;
			}
			$scope.hide_credential=function() {
				$scope.disp_cred=false;
			}
			$scope.reading_click=function() {
				$scope.disp_reading=true;
			}
			$scope.publication_click=function() {
				$scope.disp_publication=true;
			}
			$scope.close_click=function() {
				$scope.disp_reading=false;
				$scope.disp_publication=false
			}
		}]);