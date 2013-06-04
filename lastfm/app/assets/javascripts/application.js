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
function buscarAlbum(){
	location.href="http://127.0.0.1:3000/listalbum?album=" + $('#txtbuscar').val();
}

<<<<<<< HEAD
function buscarArtista(){
	location.href="http://127.0.0.1:3000/listartist?artist=" + $('#txtbuscar').val();
=======
function buscarTrack(){
	location.href="http://127.0.0.1:3000/listTrack?track=" + $('#txtbuscar').val();
>>>>>>> 4de87d22c70c8b0a9ab0bcefad1af370b81ab674
}