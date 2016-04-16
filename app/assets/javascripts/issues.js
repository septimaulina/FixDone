// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// Materialize.toast('I am a toast!', 4000) // 4000 is the duration of the toast

$(document).ready(function(){
    $('ul.tabs').tabs();
  });

$(document).ready(function(){
    $('ul.tabs').tabs('select_tab', 'tab_id');
  });