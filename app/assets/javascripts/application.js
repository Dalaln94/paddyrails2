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
////= require jquery-ui
////= require jquery_ujs
//= require_tree .
////= require jquery.validate
////= require jquery.validate.additional-methods

$('.element').hover(function() {
     // do something here
});

<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>

    // main container
var $container = $( '#rm-container' ),                      
    // the cover, middle and right panels
    $cover = $container.find( 'div.rm-cover' ),
    $middle = $container.find( 'div.rm-middle' ),
    $right = $container.find( 'div.rm-right' ),
    // open and close elements
    $open = $cover.find('a.rm-button-open'),
    $close = $right.find('span.rm-close'),
    // the links for each recipe (photo and details)
    $details = $container.find( 'a.rm-viewdetails' ),
	
	init = function() {
 
        initEvents();
 
    },
initEvents = function() {
 
    $open.on( 'click', function( event ) {
 
        openMenu();
        return false;
 
    } );
 
    $close.on( 'click', function( event ) {
 
        closeMenu();
        return false;
 
    } );
 
    $details.on( 'click', function( event ) {
 
        $container.removeClass( 'rm-in' ).children( 'div.rm-modal' ).remove();
        viewDetails( $( this ) );
        return false;
 
    } );
     
},

openMenu = function() {
 
    $container.addClass( 'rm-open' );
 
},
closeMenu = function() {
 
    $container.removeClass( 'rm-open rm-nodelay rm-in' );
 
},

viewDetails = function( recipe ) {
 
    var title = recipe.text(),
        img = recipe.data( 'thumb' ),
        description = recipe.parent().next().text(),
        url = recipe.attr( 'href' );
 
    var $modal = $( '<div class="rm-modal"><div class="rm-thumb" style="background-image: url(' + img + ')"></div><h5>' + title + '</h5><p>' + description + '</p><a href="' + url + '">See the recipe</a><span class="rm-close-modal">x</span></div>' );
 
    $modal.appendTo( $container );
 
    var h = $modal.outerHeight( true );
    $modal.css( 'margin-top', -h / 2 );
 
    setTimeout( function() {
 
        $container.addClass( 'rm-in rm-nodelay' );
 
        $modal.find( 'span.rm-close-modal' ).on( 'click', function() {
 
            $container.removeClass( 'rm-in' );
 
        } );
     
    }, 0 );
 
};