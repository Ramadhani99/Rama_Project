@extends ('backend.layouts.master')
@section('content')
@foreach($person->get() as $person) 
@endforeach()
<div class="well">
	<div class="row">	
		<div class="col-md-8">

				<form name="add_person" method="post" id="add_person_form">
				      <!-- <div class="well"> -->
				        <div class="row">	
						        <div class="form-group">
						            <label class="col-md-4 control-label">Name</label>
						            <div class="col-md-4"> 
						            	<input type="text" class="form-control" name="name" value="{{$person->name}}">
						            </div>
						 </div>
						<br/>
						<br/>	
						 <div class="row">	
						        </div><!--form control-->	
						        <div class="form-group">
						            <label class="col-md-4 control-label">date of birth</label>
						            <div class="col-md-4"> 
						            	<input type="text" class="form-control" name="dob" value="{{$person->dob}}">
						            </div>
						        </div>
						</div>
						<br/>
						<div class="row">	
						         <div class="form-group">
						            <label class="col-md-4 control-label">Gender</label>
						            <div class="col-md-4"> 
						            	<input type="radio" name="gender" value = "male" checked="checked">Male
						            	<input type="radio" name="gender" value="female">Female
						            </div>
						        </div>
						 </div>
						<br/>
						<div class="row">	
						         <div class="form-group">
						            <label class="col-md-4 control-label">Type</label>
						            <div class="col-md-4"> 
						            	  <select class="select" name="user_type">
										    <option value="{{$person->type}}" selected="selected">{{$person->type}}</option>
										    <option value="manager">Manager</option>
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
							            	<input type="file" name="profile_pic" name ="gen2Image" id="gen2ImageInput">
							            	<img src="/loadpic/{{$person->profile_pic}}" id="gen2Image">
							            </div>
							 </div>
							<br/>
						</div>
						<div class="row">	
							 <div class="form-group">
							            <div class="col-md-4"> 
							            	<button id="add_person_btn" class="btn-primary" type="button">Add person</button>
							            </div>
							 </div>
							<br/>
						</div>
						
				</form>
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


<div class="modal fade" id="personModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4 class="modal-title" id="myModalLabel">Are you sure you want to hide</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-md-5">
                                                            <img class="slide-image img-thumbnail pull-right" id="personImage" alt="">
                                                        </div>
                                                        <div class="col-md-7">Description</div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-primary" id="proceed_btn" >Proceed Hiding</button>
                                                </div>
                                            </div>
                                            
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>			
@stop
<script type="text/javascript" src="{{asset('js/backend/added/jquery.js')}}"></script>
<script type="text/javascript" src="{{asset('js/backend/added/add_person.js')}}"></script>
<script type="text/javascript" src="{{asset('js/backend/added/managePerson.js')}}"></script>
















