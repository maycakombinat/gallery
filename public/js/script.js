
 	$('input[name="calendari"]').daterangepicker(
      {
      locale: {
       format: 'DD-MM-YYYY'
      },
      singleDatePicker: true,
    }, 
    function(start, end, label) {
        alert("A new date range was chosen: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
});

