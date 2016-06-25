$(document).ready(function(){
	$('body').on('click', 'button[id^=\'hideBtn\']', function() {
		var personId = this.id.slice(7, this.id.length);
	    $('#myModalLabel_hide').html("do you want to hide "+$("#name"+personId).html()+" ?");
	    $('#hide_input_id').prop('value',personId);
	    $('#personImage_hide').attr('src','loadpic/'+$('#person_pic'+personId).val());
  });
 $('body').on('click', 'button[id^=\'proceed_btn_hide\']', function() {       
		var person_id = $('#hide_input_id').val();
		var name = $('#name'+person_id).html(); 
 	    var formData = new FormData();    
		formData.append( 'id', person_id);
		$.ajax({
			type 		: 'POST', 
			url 		: 'hidePerson',
			data 		: formData, 
	        contentType	: false,
	        processData	: false,
		}).done(function(data) {
		 $('#personModal_hide').modal("hide");
			console.log(data);
			populatePersons();
			 if(data == 1){
		 	$('#alert-info').html(
						'<div class="alert alert-success">'+
                            name+' Status changed to  hidden successfully.'+
                        '</div>');
		 	$('#alert-info').delay(500).hide(1000);

		 }
		}).fail(function(data){

		});

	 });

// Show person
 $('body').on('click', 'button[id^=\'showBtn\']', function() {
		var personId = this.id.slice(7, this.id.length);
	    $('#myModalLabel_show').html("do you want to show "+$("#name"+personId).html()+" ?");
	    $('#show_input_id').prop('value',personId);
	    $('#personImage_show').attr('src','loadpic/'+$('#person_pic'+personId).val());
		// alert('delete '+ personId)
  });
// modal click
 $('body').on('click', 'button[id^=\'proceed_showBtn\']', function() {       
		var person_id =  $('#show_input_id').val();
		var name = $('#name'+person_id).html(); 
 	    var formData = new FormData();    
		formData.append( 'id', person_id);
		$.ajax({
			type 		: 'POST', 
			url 		: 'showPerson',
			data 		: formData, 
	        contentType	: false,
	        processData	: false,
		}).done(function(data) {
		 $('#personModal_show').modal("hide");
			console.log(data);
			populatePersons();
			 if(data == 1){
		 	$('#alert-info').html(
						'<div class="alert alert-success">'+
                            name+' status changed to visible.'+
                        '</div>');
		 	$('#alert-info').delay(500).hide(1000);
		 }
		}).fail(function(data){

		});

	 });

 $('body').on('click', 'button[id^=\'delBtn\']', function() {
 	
		var personId = this.id.slice(6, this.id.length);
	    $('#myModalLabel_del').html("do you want to delete "+$("#name"+personId).html()+" ?");
	     $('#del_input_id').prop('value',personId);
	    $('#personImage_del').attr('src','loadpic/'+$('#person_pic'+personId).val());
  });
// modal click
 $('body').on('click', 'button[id^=\'proceed_btn_del\']', function() {       
		var person_id = $('#del_input_id').val();
 	    var formData = new FormData();    
		formData.append( 'id', person_id);
		$.ajax({
			type 		: 'POST', 
			url 		: 'delPerson',
			data 		: formData, 
	        contentType	: false,
	        processData	: false,
		}).done(function(data) {
		 $('#personModal_del').modal("hide");
		 if(data == 1){
		 	$('#alert-info').html(
						'<div class="alert alert-success">'+
                            'Person deleted successfully.'+
                        '</div>');
		 	$('#alert-info').delay(500).hide(1000);
		 }
			console.log(data);
			populatePersons();
		}).fail(function(data){

		});

	 });
// Edit person
  $('body').on('click', 'button[id^=\'editBtn\']', function() {
 	
		var personId = this.id.slice(7, this.id.length);
		var gender = $('#gender_edit'+personId).html();
		console.log(gender);
		$('#name_edit').prop('value',$('#name'+personId).html());
		$('#dob_edit').prop('value',$('#dob'+personId).html());
		$('#type_edit').prop($('#type'+personId).html());
		$('#gen3Image').prop('width','200');
		$('#gen3Image').prop('height','200');
		$('#gen3Image').prop('src','/loadpic/'+$('#person_pic'+personId).val());
		$('#person_id_edit').val(personId);	
		// $(this).click();
  });
 
 $('body').on('click', 'button[id^=\'edit_person_btn\']', function() {
  		 var formData =  new FormData($('form#edit_person_form')[0]);
		$('.form-group').removeClass('has-error'); 
		$.ajax({
				type 		: 'POST', 
				url 		: 'handleEditPerson',
				data 		: formData, 
				enctype		: 'multipart/form-data',
				contentType	: false,
				processData	: false
		}).done(function(data) {
				console.log(data); 	
				populatePersons();
				 if(data == 1){
		 	$('#alert-info').html(
						'<div class="alert alert-success">'+
                            'Person edited successfully.'+
                        '</div>');
		 	$('#person_editModal').modal("hide");
		 	$('#alert-info').delay(500).hide(1000);
		 }
				
				
		});
		event.preventDefault();
  });

function populatePersons(){
		$('#alert-info').show();
		$.get('getPersons', function() {
					$('#tbody_person').empty();
				}).done(function(data) {
					$.each(data,function(key,value){
						// console.log(value.name);
						if(value.visibility == 0){
							var tr = '<tr><td id = "name'+value.id+'">'+value.name+'</td><td id = "dob'+value.id+'">'+value.dob+'</td><td id = "gender'+value.id+'">'+value.gender+'</td><td id = "type'+value.id+'">'+value.type+'</td>'+
								  '<td>'+
										 '<button id = "editBtn'+value.id+'" class="btn btn-info" data-toggle = "modal" data-target ="#person_editModal"><span class="glyphicon glyphicon-cog">edit</span></button>'+
	                                     '<button id = "hideBtn'+value.id+'" class="btn btn-warning"  data-toggle="modal" data-target="#personModal_hide"><span class="glyphicon glyphicon-eye-close">hide</span></button>'+
	                                     '<button id = "delBtn'+value.id+'" class="btn btn-danger"  data-toggle="modal" data-target="#personModal_del"><span class="glyphicon glyphicon-trash">delete</span></button>'+
								  	    
								  	    '<input id = "person_pic'+value.id+'" type = "hidden" value = "'+value.profile_pic+'">'+
								  	    '</td>'+	
								'</tr>';
						}else{
							var tr = '<tr><td id = "name'+value.id+'">'+value.name+'</td><td id = "dob'+value.id+'">'+value.dob+'</td><td id = "gender'+value.id+'">'+value.gender+'</td><td id = "type'+value.id+'">'+value.type+'</td>'+
									'<td>'+
										 '<button id = "editBtn'+value.id+'" class="btn btn-info" data-toggle = "modal" data-target ="#person_editModal"><span class="glyphicon glyphicon-cog">edit</span></button>'+
	                                     '<button id = "showBtn'+value.id+'" class="btn"  data-toggle="modal" data-target="#personModal_show"><span class="glyphicon glyphicon-eye-close">show</span></button>'+
	                                     '<button id = "delBtn'+value.id+'" class="btn btn-danger"  data-toggle="modal" data-target="#personModal_del"><span class="glyphicon glyphicon-trash">delete</span></button>'+
								  	    
								  	    // '<a class="btn btn-danger" href="profile/hotel/"><span class="glyphicon glyphicon-trash"> delete</span></a>'+
								  	    '<input id = "person_pic'+value.id+'" type = "hidden" value = "'+value.profile_pic+'">'+
								  	    '</td>'+	
								'</tr>';
						}	
						$('#tbody_person').append(tr);
					}); 
			    }).fail(function() {
				    // alert( "error" );
			    });		
		
	}

});