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
//= require jquery.ui.datepicker
//= require jquery.ui.draggable
//= require jquery.ui.droppable
//= require jquery.ui.resizable
//= require jquery.ui.selectable
//= require twitter/bootstrap
//= require ckeditor/init
//= require fullcalendar
//= require jquery.rest
//= require_tree .

$(document).ready(function(){
  $('body').on('click', '.close', function(){
    $('#flash-section').hide();
  });
  $('body').on('click', 'table tr', function(){
    var _this = $(this);

    if (_this.hasClass('error') == false) {
      $('table tr').removeClass('active');
      _this.addClass('active');
    }
  })
});

$(function() {
  $( "#user_birthday" ).datepicker({
    showOn: "button",
    buttonImage: "../../../../assets/calendar.gif",
    buttonImageOnly: true,
    changeMonth: true,
    changeYear: true,
    yearRange: "1960:2013"
  });
});

$(document).ready(function(){
  $("#back-top").hide();
  $(function () {
    $(window).scroll(function () {
      if ($(this).scrollTop() > 50) {
        $('#back-top').fadeIn();
      } else {
        $('#back-top').fadeOut();
      }
    });
    $('#back-top a').click(function () {
      $('body,html').animate({
        scrollTop: 0
      }, 800);
      return false;
    });
  });
});
