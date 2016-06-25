$(document).ready(function(){
	var item_no = 0;
	$('body').on('click', 'button[id^=\'search_btn\']', function() {
			$('#search_person_div').empty();
			$('#search_person_div').append(
			'<div class="well">'+
				'<form  method="post" id="search_person_form">'+
						'<div id="search_person_row">'+
								'<div class="row" id = "item_row'+item_no+'">'+
										'<div class="col-md-3">'+
												'<div class="form-group">'+
														'<select class="select form-control" name="0[attribute]" id="attribute_id">'+
															'<option value="">Attribute</option>'+
															'<option value="name">name</option>'+
															'<option value="dob">dob</option>'+
															'<option value="gender">gender</option>'+
															'<option value="type">type</option>'+
															'<option value="profile_pic">picture</option>'+
														'</select>'+
												'</div>'+
										'</div>'+
										'<div class="col-md-3">'+
												'<div class="form-group">'+
														'<select class="select form-control" name="0[operator]" id="type_edit">'+
															'<option value="">Operator</option>'+
															'<option value="=">= (numeric only)</option>'+
															'<option value=">">&gt; (numeric only)</option>'+
															'<option value=">=">&gt;= (numeric only)</option>'+
															'<option value="<">&lt; (numeric only)</option>'+
															'<option value="<=">&lt;= (numeric only)</option>'+
															'<option value="!=">!= (numeric only)</option>'+
															'<option value="LIKE">Like</option>'+
															'<option value="NOT LIKE">Not Like</option>'+
															'<option value="LIKE %...%">Contains</option>'+
															'<option value="NOT LIKE %...%">Not Contains</option>'+
															'<option value="IN (...)">IN (...)</option>'+
															'<option value="NOT IN (...)">NOT IN (...)</option>'+
															'<option value="IS NULL">IS NULL</option>'+
															'<option value="IS NOT NULL">IS NOT NULL</option>'+
														'</select>'+
												'</div>'+
										'</div>'+
										'<div class="col-md-4">'+
												'<div class="form-group">'+
														'<input type="text" class="form-control" name="0[value]">'+
												'</div>'+
										'</div>'+
										// '<div class="col-md-2">'+
										// 		'<div class="form-group">'+
										// 			'<button id = "btn_del_item'+item_no+'" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span></button>'+
										// 		'</div>'+
										// '</div><br/>'+
								'</div>'+
						'</div>'+
						'<div class="row">'+
								// '<div class="col-md-2">'+
								// 		'<div class="form-group">'+
								// 		'</div>'+
								// '</div>'+
								'<div class="col-md-4">'+
										'<div class="form-group">'+
											'<button  id = "add_search_items" class="btn btn-info"><span class="glyphicon glyphicon-plus"></span></button>&nbsp;&nbsp;'+
											'<button  id = "trigger_search_items" class="btn btn-warning">Search</button>&nbsp;&nbsp;'+
											'<button  id = "add_search_items" class="btn btn-info glyphicon glyphicon-export">Export</button>'+
										'</div>'+
								'</div>'+
								'<div class="col-md-4">'+
										'<div class="form-group">'+
										'</div>'+
								'</div>'+
						'</div>'+										
				'</form>'+
			'</div>'
			);
	});

	$('body').on('click', 'button[id^=\'add_search_items\']', function() {
		if(item_no <= 4){

		item_no = item_no + 1;
		$('#search_person_row').append(
						'<div class="row" id = "item_row'+item_no+'">'+
								'<div class="col-md-3">'+
										'<div class="form-group">'+
												'<select class="select form-control" name="'+item_no+'[attribute]" id="type_edit">'+
													'<option value="">Attribute</option>'+
													'<option value="name">name</option>'+
													'<option value="dob">dob</option>'+
													'<option value="gender">gender</option>'+
													'<option value="type">type</option>'+
													'<option value="profile_pic">picture</option>'+
												'</select>'+
										'</div>'+
								'</div>'+
								'<div class="col-md-3">'+
										'<div class="form-group">'+
														'<select class="select form-control" name="'+item_no+'[operator]" id="operator_id">'+
															'<option value="">Operator</option>'+
															'<option value="=">= (numeric only)</option>'+
															'<option value=">">&gt; (numeric only)</option>'+
															'<option value=">=">&gt;= (numeric only)</option>'+
															'<option value="<">&lt; (numeric only)</option>'+
															'<option value="<=">&lt;= (numeric only)</option>'+
															'<option value="!=">!= (numeric only)</option>'+
															'<option value="LIKE">Like</option>'+
															'<option value="NOT LIKE">Not Like</option>'+
															'<option value="LIKE %...%">Contains</option>'+
															'<option value="NOT LIKE %...%">Not Contains</option>'+
															'<option value="IN (...)">IN (...)</option>'+
															'<option value="NOT IN (...)">NOT IN (...)</option>'+
															'<option value="IS NULL">IS NULL</option>'+
															'<option value="IS NOT NULL">IS NOT NULL</option>'+
														'</select>'+
										'</div>'+
								'</div>'+
								'<div class="col-md-4">'+
										'<div class="form-group">'+
												'<input type="text" class="form-control" name="'+item_no+'[value]">'+
										'</div>'+
								'</div>'+
								'<div class="col-md-2">'+
										'<div class="form-group">'+
											'<button id = "btn_del_item'+item_no+'" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span></button>'+
										'</div>'+
								'</div><br/>'+
		'</div>'
		);
		}
		event.preventDefault();
	});

	$('body').on('click', 'button[id^=\'btn_del_item\']', function() {
		item_no = item_no-1;
			var itemNo = this.id.slice(12, this.id.length);
			// $('#item_row'+itemNo).delay(500).hide(1000).remove();
			$('#item_row'+itemNo).fadeOut("slow", function() {
	            $(this).remove();
	        });
		event.preventDefault();
	});
	$('body').on('click', 'button[id^=\'trigger_search_items\']', function() {
			var formData = new FormData($('form#search_person_form')[0]);    
			$.ajax({
				type 		: 'POST', 
				url 		: 'person/search',
				data 		: formData, 
		        contentType	: false,
		        processData	: false,
			}).done(function(data) {
				$('#tbody_person').empty();
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
				console.log(data);
			}).fail(function(data){

			});

		event.preventDefault();
	});

});