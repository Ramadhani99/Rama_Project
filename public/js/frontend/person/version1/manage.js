$(document).ready(function(){
 $('body').on('click', 'button[id^=\'btnShowPreview\']', function() {
		var personId = this.id.slice(14, this.id.length);
	    $('#myModalLabelPreviewPerson').html($("#name"+personId).html());
		$('#name_preview').html($('#name'+personId).html());
		$('#dob_preview').html($('#dob'+personId).html());
		$('#type_preview').html($('#type'+personId).html());
	   	$('#previewImage').prop('src','person/file/picture/profile/'+personId); 
		var img=$('#previewImage');
	    var src=img.attr('src');
	    var i=src.indexOf('?dummy=');
	    src=i!=-1?src.substring(0,i):src;
	    d = new Date();
	    img.attr('src', src+'?dummy='+d.getTime() );
 });
 $('body').on('click', 'button[id^=\'btnShowHide\']', function() {
		var personId = this.id.slice(11, this.id.length);
	    $('#myModalLabel_hide').html("do you want to hide "+$("#name"+personId).html()+" ?");
	    $('#hideId').prop('value',personId);
		$('#name_hide').html($('#name'+personId).html());
		$('#dob_hide').html($('#dob'+personId).html());
		$('#type_hide').html($('#type'+personId).html());
	   	$('#hideImage').prop('src','person/file/picture/profile/'+personId); 
		var img=$('#hideImage');
	    var src=img.attr('src');
	    var i=src.indexOf('?dummy=');
	    src=i!=-1?src.substring(0,i):src;
	    d = new Date();
	    img.attr('src', src+'?dummy='+d.getTime() );
 });
 $('body').on('click', 'button[id^=\'btnRequestHide\']', function() {       
		var personId = $('#hideId').val();
		var name = $('#name'+personId).html(); 
 	    var formData = new FormData();    
		formData.append( 'visibility', 1);
		formData.append( '_method', 'PUT');
		$.ajax({
			type 		: 'POST', 
			url 		: 'person/person/'+personId,
			data 		: formData,
	        contentType	: false,
	        processData	: false,
		}).done(function(data) {
		 $('#personModal_hide').modal("hide");
			console.log(data);
			populatePersons();
		 	$('#alert-info').html(
						'<div class="alert alert-success">'+
                            name+' Status changed to  hidden successfully.'+
                        '</div>');
		 	$('#alert-info').delay(500).hide(1000);
		}).fail(function(data){

		});

	 });

// Show person
 $('body').on('click', 'button[id^=\'btnShowShow\']', function() {
		var personId = this.id.slice(11, this.id.length);
		var gender = $('#gender_show'+personId).html();
	    $('#myModalLabel_show').html("do you want to show "+$("#name"+personId).html()+" ?");
	    $('#showId').prop('value',personId);
		$('#name_show').html($('#name'+personId).html());
		$('#dob_show').html($('#dob'+personId).html());
		$('#type_show').html($('#type'+personId).html());
		$('#showImage').prop('src','person/file/picture/profile/'+personId);
		var img=$('#showImage');
	    var src=img.attr('src');
	    var i=src.indexOf('?dummy=');
	    src=i!=-1?src.substring(0,i):src;
	    d = new Date();
	    img.attr('src', src+'?dummy='+d.getTime() );
  });
// modal click
 $('body').on('click', 'button[id^=\'btnRequestShow\']', function() {       
		var personId =  $('#showId').val();
		var name = $('#name'+personId).html(); 
 	    var formData = new FormData();    
		formData.append( 'visibility', 0);
		formData.append( '_method', 'PUT');
		$.ajax({
			type 		: 'POSt', 
			url 		: 'person/person/'+personId,
			data 		: formData,
			contentType: false,
	        processData	: false,
		}).done(function(data) {
		 $('#personModal_show').modal("hide");
			console.log(data);
			populatePersons();
		 	$('#alert-info').html(
			'<div class="alert alert-success">'+
                name+' status changed to visible.'+
            '</div>');
		 	$('#alert-info').delay(500).hide(1000);
		}).fail(function(data){

		});

	 });

 $('body').on('click', 'button[id^=\'btnShowDelete\']', function() {
 	
		var personId = this.id.slice(13, this.id.length);
	    $('#myModalLabel_del').html("do you want to delete "+$("#name"+personId).html()+" ?");
	    $('#deleteId').prop('value',personId);
		$('#name_delete').html($('#name'+personId).html());
		$('#dob_delete').html($('#dob'+personId).html());
		$('#type_delete').html($('#type'+personId).html());
		$('#person_id_edit').val(personId);	
	 	$('#image_delete').prop('src','person/file/picture/profile/'+personId);
	 	var img=$('#image_delete');
	    var src=img.attr('src');
	    var i=src.indexOf('?dummy=');
	    src=i!=-1?src.substring(0,i):src;
	    d = new Date();
	    img.attr('src', src+'?dummy='+d.getTime() );
  });
// modal click
 $('body').on('click', 'button[id^=\'btnRequestDelete\']', function() {       
		var personId =  $('#deleteId').val();
		var name = $('#name'+personId).html();
		var formData = new FormData();    
		formData.append( '_method', 'DELETE');
		$.ajax({
			type 		: 'POST', 
			url 		: 'person/person/'+personId,
			data 		: formData, 
	        contentType	: false,
	        processData	: false,
		}).done(function(data) {
		 $('#personModal_del').modal("hide");
		 	$('#alert-info').html(
						'<div class="alert alert-success">'+
                            'Person deleted successfully.'+
                        '</div>');
		 	$('#alert-info').delay(500).hide(1000);
			console.log(data);
			populatePersons();
		}).fail(function(data){

		});

	 });
// Edit person
  $('body').on('click', 'button[id^=\'btnShowEdit\']', function() {
		var personId = this.id.slice(11, this.id.length);
		var gender = $('#gender_edit'+personId).html();
		$('#name_edit').prop('value',$('#name'+personId).html());
		$('#dob_edit').prop('value',$('#dob'+personId).html());
		$('#type_edit').prop($('#type'+personId).html());
		$('#editId').val(personId);	
		$('#gen3Image').prop('src','person/file/picture/profile/'+personId);
		var img=$('#gen3Image');
	    var src=img.attr('src');
	    var i=src.indexOf('?dummy=');
	    src=i!=-1?src.substring(0,i):src;
	    d = new Date();
	    img.attr('src', src+'?dummy='+d.getTime() );

  });
 
 $('body').on('click', 'button[id^=\'btnRequestEdit\']', function() {
 	var personId =  $('#editId').val();
	var formData =  new FormData($('form#edit_person_form')[0]);
	formData.append( '_method', 'PUT');
	$('.form-group').removeClass('has-error'); 
	$.ajax({
			type 		: 'POST', 
			url 		: 'person/person/'+personId,
			data 		: formData, 
			enctype		: 'multipart/form-data',
			contentType	: false,
			processData	: false
	}).done(function(data) {
		console.log(data); 	
		populatePersons();
	 	$('#alert-info').html(
					'<div class="alert alert-success">'+
                        'Person edited successfully.'+
                    '</div>');
	 	$('#person_editModal').modal("hide");
	 	$('#alert-info').delay(500).hide(1000);
	});
	$('form#edit_person_form')[0].reset();
	event.preventDefault();
  });

function populatePersons(){
		$('#alert-info').hide();
		$.get('person/person', function() {
					$('#tbody_person').empty();
				}).done(function(data) {
					data = data.persons;
					$.each(data,function(key,value){
						// console.log(value.name);
						if(value.visibility == 0){
							var tr = '<tr><td id = "name'+value.id+'">'+value.name+'</td><td id = "dob'+value.id+'">'+value.dob+'</td><td id = "gender'+value.id+'">'+value.gender+'</td><td id = "type'+value.id+'">'+value.type+'</td>'+
								  '<td>'+
										 '<button id = "btnShowPreview'+value.id+'" class="btn btn-info" data-toggle = "modal" data-target ="#modalPreviewPerson"><span class="glyphicon glyphicon-eye">preview</span></button>'+
										 '<button id = "btnShowEdit'+value.id+'" class="btn btn-info" data-toggle = "modal" data-target ="#person_editModal"><span class="glyphicon glyphicon-cog">edit</span></button>'+
	                                     '<button id = "btnShowHide'+value.id+'" class="btn btn-warning"  data-toggle="modal" data-target="#personModal_hide"><span class="glyphicon glyphicon-eye-close">hide</span></button>'+
	                                     '<button id = "btnShowDelete'+value.id+'" class="btn btn-danger"  data-toggle="modal" data-target="#personModal_del"><span class="glyphicon glyphicon-trash">delete</span></button>'+
								  	    
								  	    '<input id = "person_pic'+value.id+'" type = "hidden" value = "'+value.profile_pic+'">'+
								  	    '</td>'+	
								'</tr>';
						}else{
							var tr = '<tr><td id = "name'+value.id+'">'+value.name+'</td><td id = "dob'+value.id+'">'+value.dob+'</td><td id = "gender'+value.id+'">'+value.gender+'</td><td id = "type'+value.id+'">'+value.type+'</td>'+
									'<td>'+
										 '<button id = "btnShowPreview'+value.id+'" class="btn btn-info" data-toggle = "modal" data-target ="#modalPreviewPerson"><span class="glyphicon glyphicon-eye">preview</span></button>'+
										 '<button id = "btnShowEdit'+value.id+'" class="btn btn-info" data-toggle = "modal" data-target ="#person_editModal"><span class="glyphicon glyphicon-cog">edit</span></button>'+
	                                     '<button id = "btnShowShow'+value.id+'" class="btn"  data-toggle="modal" data-target="#personModal_show"><span class="glyphicon glyphicon-eye-close">show</span></button>'+
	                                     '<button id = "btnShowDelete'+value.id+'" class="btn btn-danger"  data-toggle="modal" data-target="#personModal_del"><span class="glyphicon glyphicon-trash">delete</span></button>'+
								  	    
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