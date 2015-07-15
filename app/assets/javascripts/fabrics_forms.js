function lengthSlider(currVal) {
  $("#slider").slider({
    value: currVal,
    min: .125,
    max: 10,
    step: .125,
    slide: function(event, ui) {
      yardage = decToEighths(ui.value)
      $("#slider_display").html(yardage)
      $( "#amount" ).val(ui.value);
    }
  });
  $( "#amount" ).val($( "#slider" ).slider( "value" ) );
}

   function decToEighths(value) {
      var eighths = { 0: [''], .125: ['1/8'], .25: ['1/4'], .375: ['3/8'], .5: ['1/2'], .625: ['5/8'], .75: ['3/4'], .875: ['7/8']};
    if (value < 1) {
      yardage = eighths[value];
      return yardage;
    } else {
      var wholeYards = Math.floor(value)
      var partialYards = eighths[value - wholeYards]
      var yardage = wholeYards + " " + partialYards
      return yardage;
    }   
   }

   function whichAction(action) {
      console.log(action);
   }