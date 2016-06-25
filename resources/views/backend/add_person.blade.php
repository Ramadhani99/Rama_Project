@extends ('backend.layouts.master')
@section('content')
<div class="well">
	<div class="row">	
		<div class="col-md-8">
		    <button  id="add_top_btn" class="btn btn-info" data-toggle="modal" data-target="#person_addModal"><span class="glyphicon glyphicon-plus">Add</span></button>
		    <button  id="import_excel_csv" class="btn btn-info"><span class="glyphicon glyphicon-import" data-toggle="modal" data-target="#person_importexcelModal">Import</span></button>
		    <button  class="btn btn-info"><span class="glyphicon glyphicon-search">Search</span></button>
		</div>
	</div><br/><br/>
	<div id="alert-info"></div>
	<div class="row">	
		<div class="col-md-8" id="add_person_form_div">
				
		</div>
		</div>
</div>

<br>
<br>
<div class="row">
	<div class="col-md-12">		
			<div class="table-responsive">
				  <table class="table table-bordered table-hover table-striped">
					  <thead>			  	
						   	<th>Name</th>
						   	<th>Date of birth</th>
						   	<th>Gender</th>
						   	<th>Type</th>
						   	<th>Operations</th>
					  </thead>
					  <tbody id="tbody_person">
					  
					  </tbody>			  	
					  	
						
				  </table>
			</div>
	</div>
</div>


<div class="modal fade" id="person_addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
             <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Add new person</h4>

            </div>
            <div class="modal-body">
            <div id="alert-info"></div>
       			 <form name="add_person" method="post" id="add_person_form">
				      <div class="well">
				        <div class="row">	
						        <div class="form-group">
						            <label class="col-md-4 control-label">Name</label>
						            <div class="col-md-4"> 
						            	<input type="text" class="form-control" name="name" required>
						            	<input type="hidden" class="form-control" name="person_id" id="person_id">
						            </div>
						 </div>
						<br/>
						<br/>	
						 <div class="row">	
						        </div>	
						        <div class="form-group">
						            <label class="col-md-4 control-label">date of birth</label>
						            <div class="col-md-4"> 
						            	<div class="input-group date date-dob">
										  <input type="text" class="form-control" name="dob" pattern="/[0-3][0-9]\/[0-1][0-9]\/[1-2][0-9][0-9][0-9]/g" id="__dob"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
										</div>
						            </div>
						        </div>
						</div>
						<br/>
						<div class="row">	
						         <div class="form-group">
						            <label class="col-md-4 control-label">Gender</label>
						            <div class="col-md-4" id="gender_div"> 
						            	<input class="genderinp" type="radio" name="gender" value = "male" checked="checked">Male
						            	<input class="genderinp" type="radio" name="gender" value="female">Female
						            </div>
						        </div>
						 </div>
						<br/>
						<div class="row">	
						         <div class="form-group">
						            <label class="col-md-4 control-label">Type</label>
						            <div class="col-md-4"> 
						            	  <select class="select" name="user_type">
										    <option selected="selected" value="manager">Manager</option>
										    <option value="admin">Admini</option>
										    <option value="user">User</option>
										  </select>
						            </div>
						        </div>
						 </div>
						<br/>
						<div class="row">	
							 <div class="form-group">
							            <label class="col-md-4 control-label">Apload image</label>
							            <div class="col-md-4"> 
							            	<input type="file" name="profile_pic" accept="text/csv" name ="gen2Image" id="gen2ImageInput">
							            	<img src="" id="gen2Image">
							            </div>
							 </div>
							<br/>
						</div>
						<div class="row">	<br>
							 <div class="form-group">
							            <div class="col-md-4"> 
							            	<button id="add_person_btn" class="btn btn-info" type="button">Add person</button>
							            </div>
							            <div class="col-md-4" id="edit_btn_div"> 
							            </div>
							 </div>
							<br/>
						</div>	
					</div>					
				</form>
			</div>
    </div>
    
    <!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>

<div class="modal fade" id="person_editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
             <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelEdit_person">Edit person</h4>

            </div>
            <div class="modal-body">
       			 <form name="add_person" method="post" id="edit_person_form">
				      <div class="well">
				        <div class="row">	
						        <div class="form-group">
						            <label class="col-md-4 control-label">Name</label>
						            <div class="col-md-4"> 
						            	<input type="text" class="form-control" name="name_edit" id="name_edit" required>
						            	<input type="hidden" class="form-control" name="person_id_edit" id="person_id_edit">
						            </div>
						 </div>
						<br/>
						<br/>	
						 <div class="row">	
						        </div>	
						        <div class="form-group">
						            <label class="col-md-4 control-label">date of birth</label>
						            <div class="col-md-4"> 
						            	<input type="text" class="form-control" name="dob_edit" id="dob_edit" pattern="/[0-3][0-9]\/[0-1][0-9]\/[1-2][0-9][0-9][0-9]/g">
						            </div>
						        </div>
						</div>
						<br/>
						<div class="row">	
						         <div class="form-group">
						            <label class="col-md-4 control-label">Gender</label>
						            <div class="col-md-4" id="gender_div"> 
						            	<input class="genderinp" type="radio" name="gender_edit" id="gender_edit" value = "male" checked="checked">Male
						            	<input class="genderinp" type="radio" name="gender_edit" value="female">Female
						            </div>
						        </div>
						 </div>
						<br/>
						<div class="row">	
						         <div class="form-group">
						            <label class="col-md-4 control-label">Type</label>
						            <div class="col-md-4"> 
						            	  <select class="select" name="user_type_edit" id="type_edit">
										    <option selected="selected" value="manager">Manager</option>
										    <option value="admin">Admini</option>
										    <option value="user">User</option>
										  </select>
						            </div>
						        </div>
						 </div>
						<br/>
						<div class="row">	
							 <div class="form-group">
							            <label class="col-md-4 control-label">Apload image</label>
							            <div class="col-md-4"> 
							            	<input type="file" name="profile_pic_edit" name ="gen3Image" id="gen3ImageInput">
							            	<img src="" id="gen3Image">
							            </div>
							 </div>
							<br/>
						</div>
						<div class="row">	<br>
							 <div class="form-group">
							            <div class="col-md-4"> 
							            	<button id="edit_person_btn" class="btn btn-info" type="button">Edit person</button>
							            </div>
							            <div class="col-md-4" id="edit_btn_div"> 
							            </div>
							 </div>
							<br/>
						</div>	
					</div>					
				</form>
			</div>
    </div>
    
    <!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>

<div class="modal fade" id="personModal_hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4 class="modal-title" id="myModalLabel_hide">Are you sure you want to hide</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-md-5">
	                                                        <input type="hidden" id="hide_input_id">
                                                            <img class="slide-image img-thumbnail pull-right" id="personImage_hide" alt="">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-primary" id="proceed_btn_hide" >Proceed Hiding</button>
                                                </div>
                                            </div>
                                            
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="personModal_show" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4 class="modal-title" id="myModalLabel_show">Are you sure you want to show</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-md-5">
	                                                        <input type="hidden" id="show_input_id">
                                                            <img class="slide-image img-thumbnail pull-right" id="personImage_show" alt="">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-primary" id="proceed_showBtn" >Proceed Showing</button>
                                                </div>
                                            </div>
                                            
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="personModal_del" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4 class="modal-title" id="myModalLabel_del">Are you sure you want to delete</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-md-5">
	                                                        <input type="hidden" id="del_input_id">
                                                            <img class="slide-image img-thumbnail pull-right" id="personImage_del" alt="">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-primary" id="proceed_btn_del" >Proceed to delete</button>
                                                </div>
                                            </div>
                                            
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="person_importexcelModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4 class="modal-title" id="myModalLabel">Import an excel file</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                      <div class="col-md-5">
										       			 <form method="post" id="excel_file_form">
                                                        	<input type="file" name = "excel_file" id="excel_file">
                                                        </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-info" id="import_excel_csv_btn" >Upload</button>
                                                </div>
                                            </div>
                                            
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
</div>			
@stop

 @section('after-scripts-end')
{!! HTML::script('js/vendor/bootstrap-datepicker.min.js') !!}
{!! HTML::script('js/vendor/parsley.min.js') !!}
<script type="text/javascript" src="{{asset('js/backend/added/add_person.js')}}"></script>
<script type="text/javascript" src="{{asset('js/backend/added/managePerson.js')}}"></script>
<script type="text/javascript" src="{{asset('js/backend/added/action_triggers.js')}}"></script>
<script type="text/javascript">
	$('.input-group.date.date-dob').datepicker({
	    autoclose: true,
	    startView: 2,
	    todayHighlight: true,
	    defaultViewDate: { year: 1980, month: 04, day: 25 }
	});
</script>
 @stop
 @section('before-styles-end')
 {!! HTML::style('css/bootstrap-datepicker.min.css') !!}
 @stop



















