
// magic.js
$(document).ready(function() {	
	$('.input-group.date.date-dob').datepicker({
	    autoclose: true,
	    startView: 2,
	    format: "dd/mm/yyyy",
	    todayHighlight: true,
	    defaultViewDate: { year: 1980, month: 04, day: 25 }
	});
});
