// magic.js
$(document).ready(function() {	
	$('#add_person_form_div').hide();
	populatePersons();
	$('#reloadButton').click(function  () {
		populatePersons();
		$('#search_person_div').empty();
	});
	$('#add_person_btn').click(function  () {
		var formData =  new FormData($('form#add_person_form')[0]);
		if ($('form#add_person_form').parsley().validate()) {
			$.ajax({
					type 		: 'POST', 
					url 		: 'person/person',
					data 		: formData, 
					enctype		: 'multipart/form-data',
					contentType	: false,
					processData	: false
			}).done(function(data) {
				$('#alert-info').html(
					'<div class="alert alert-success">'+
                        'Person added successfully.'+
                    '</div>');
				$('#alert-info').delay(1000).hide(500);
				$('form#add_person_form')[0].reset();
				populatePersons();
			   $('#person_addModal').modal("hide");
			}).fail(function (data) {
					console.log(data);
					var errormsg = '<ul>';
					data = JSON.parse(data.responseText);
					for(var key in data){
						for (var j = data[key].length - 1; j >= 0; j--) {
							errormsg = errormsg + '<li>' + data[key][j] + '</li>';
						};
					}
					errormsg = errormsg + '</ul>';
					$('#alert-info-add').html('<div class="alert alert-danger" role="alert"> <strong>Sorry!</strong></br>'+errormsg+' </div>');
			});
		} else{
		};
		event.preventDefault();
	});
	
$('#import_excel_csv_btn').click(function  () {		
		var formData =  new FormData($('form#excel_file_form')[0]);
			$.ajax({
					type 		: 'POST', 
					url 		: 'person/file/data',
					data 		: formData, 
					enctype		: 'multipart/form-data',
					contentType	: false,
					processData	: false
			}).done(function(data) {
				if(data == 1){
				 	$('#person_importexcelModal').modal("hide");
					populatePersons();
				 	$('#alert-info').html(
								'<div class="alert alert-success">'+
		                            'file has been imported successfully'+
		                        '</div>');
				 	$('#alert-info').delay(500).hide(1000);
				 }
			}).fail(function(data){
				var errormsg = "data";
				$('#alert-info-add').html('<div class="alert alert-danger" role="alert"> <strong>Sorry!</strong></br>'+errormsg+' </div>');
			});
});


	$("input[type = 'file']").change(function(){
		var str = this.id;
	    // readImage(this, '#'+str.slice(0 , -5));
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
								  '<td class ="operation">'+
										 '<button id = "btnShowPreview'+value.id+'" class="btn btn-info" data-toggle = "modal" data-target ="#modalPreviewPerson"><span class="glyphicon glyphicon-eye">preview</span></button>'+
										 '<button id = "btnShowEdit'+value.id+'" class="btn btn-info" data-toggle = "modal" data-target ="#person_editModal"><span class="glyphicon glyphicon-cog">edit</span></button>'+
	                                     '<button id = "btnShowHide'+value.id+'" class="btn btn-warning"  data-toggle="modal" data-target="#personModal_hide"><span class="glyphicon glyphicon-eye-close">hide</span></button>'+
	                                     '<button id = "btnShowDelete'+value.id+'" class="btn btn-danger"  data-toggle="modal" data-target="#personModal_del"><span class="glyphicon glyphicon-trash">delete</span></button>'+
								  	    
								  	    '<input id = "person_pic'+value.id+'" type = "hidden" value = "'+value.profile_pic+'">'+
								  	    '</td>'+	
								'</tr>';
						}else{
							var tr = '<tr><td id = "name'+value.id+'">'+value.name+'</td><td id = "dob'+value.id+'">'+value.dob+'</td><td id = "gender'+value.id+'">'+value.gender+'</td><td id = "type'+value.id+'">'+value.type+'</td>'+
									'<td class ="operation">'+
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
