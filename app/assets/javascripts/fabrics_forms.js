function lengthSlider() {
  $(function() {
    $( "#slider" ).slider({
      value: 0,
      min: .125,
      max: 10,
      step: .125,
      
      slide: function( event, ui ) {
        $( "#amount" ).val(ui.value );
      }

    });
    
    $( "#amount" ).val($( "#slider" ).slider( "value" ) );
  });
}

function widthDropDown() {
  
}