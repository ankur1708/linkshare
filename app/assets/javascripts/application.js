// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function () {
	
	var header_text = $(".container > .row > .span12 > .breadcrumb > .notice").html();
	if (header_text == "Logged in!") 
	{
		$("#menu-item-login").html('<a href=/logout" data-method="delete">Logout</a>');
	}
	else if (header_text == "Logged out!")
	{
		$("#menu-item-login").html('<a data-toggle="modal" href="#betaModal">Login</a>');
	}
	
	window.setTimeout(function () {
    	$(".container > .row > .span12 > .breadcrumb").html('Welcome to CrowdLink. For any query, shoot a mail to pornpapa69@gmail.com');
	}, 3000);
	
});