// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap-sprockets
//= require jquery.tablesorter
//= require jquery.tablesorter.widgets

$(document).ready(function(){
    $('.carousel').each(function(){
        $(this).carousel({
            interval: 5000,
        });
    });

    $.each($(".later-display"), function(index, value){
      $(value).attr("id","answer-" + index.toString());
    });

    $(".original-display").click(function(){

      var target = $(this).parent().data('answer');

      if ($(target).css('display') == 'none') {
        $(target).slideDown('fast');
        $(this).find('.plus-sign').text('X');
        $(this).find('.plus-sign').addClass("x-sign-mods");
      }
      else {
        $(target).slideUp('fast');
        $(this).find('.plus-sign').text('+');
        $(this).find('.plus-sign').removeClass("x-sign-mods");
      }
    });
    
});

