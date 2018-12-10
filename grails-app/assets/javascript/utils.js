function Utils() {}

Utils.prototype.round = function( num, digits ) {

  var factor = Math.pow( 10, digits );
  return Math.ceil( num * factor ) / factor;

}// En dof method

function convertUppercase(nombre) {
    var filter = /[a-z\s\u00F1]/;
    if (filter.test(nombre.value)){
        nombre.value = nombre.value.toUpperCase();
    }
}

       function showProgressAnimation() {
        $("#loading-div-background").show();
      }

      function hideProgressAnimation() { 
        $("#loading-div-background").hide();
      }

      function writeLoad(){
      	$( 'body' ).append( "<div id='loading-div-background'>\n\
          <div class='preloader-wrapper big active'>\n\
            <div class='spinner-layer spinner-blue'>\n\
              <div class='circle-clipper left'>\n\
                <div class='circle'></div>\n\
              </div><div class='gap-patch'>\n\
                <div class='circle'></div>\n\
              </div><div class='circle-clipper right'>\n\
                <div class='circle'></div>\n\
              </div>\n\
            </div>\n\
            <div class='spinner-layer spinner-red'>\n\
              <div class='circle-clipper left'>\n\
                <div class='circle'></div>\n\
              </div><div class='gap-patch'>\n\
                <div class='circle'></div>\n\
              </div><div class='circle-clipper right'>\n\
                <div class='circle'></div>\n\
              </div>\n\
            </div>\n\
            <div class='spinner-layer spinner-yellow'>\n\
              <div class='circle-clipper left'>\n\
                <div class='circle'></div>\n\
              </div><div class='gap-patch'>\n\
                <div class='circle'></div>\n\
              </div><div class='circle-clipper right'>\n\
                <div class='circle'></div>\n\
              </div>\n\
            </div>\n\
            <div class='spinner-layer spinner-green'>\n\
              <div class='circle-clipper left'>\n\
                <div class='circle'></div>\n\
              </div><div class='gap-patch'>\n\
                <div class='circle'></div>\n\
              </div><div class='circle-clipper right'>\n\
                <div class='circle'></div>\n\
              </div>\n\
            </div>\n\
          </div>\n\
          <h2 id='loading-txt'>Cargando</h2>\n\
        </div>" );
      }