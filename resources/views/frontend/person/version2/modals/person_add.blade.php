<div class="modal fade" id="person_addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Add new person2</h4>
			</div>
			<div class="modal-body">
				<div id="alert-info-add"></div>
				<form name="add_person" method="post" id="add_person_form">
					<div class="well">
				<h4>Person Details</h4>
					<div class="col-md-6">
						<div class="row">	
							<div class="form-group">
									<input type="text" class="form-control" name="name" required placeholder="Name">
									<input type="hidden" class="form-control" name="person_id" id="person_id">
							</div>
							<br/>
							<br/>	
					
						</div>
						<div class="row">	
							<div class="form-group">
									<div class="input-group date date-dob">
										<input type="text" class="form-control" placeholder="date of birth" name="dob" pattern="/[0-3][0-9]\/[0-1][0-9]\/[1-2][0-9][0-9][0-9]/g" id="__dob"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
									</div>
							</div>
						</div>	
						<br/>
						<div class="row">	
							<div class="form-group">
								<label class="row control-label">Gender</label>
								<div class="row" id="gender_div"> 
									<input class="genderinp" type="radio" name="gender" value = "male" checked="checked">Male
									<input class="genderinp" type="radio" name="gender" value="female">Female
								</div>
							</div>
						</div>
						<br/>
						<div class="row">	
							<div class="form-group">
								<label class="row control-label">Type</label>
								<div class="row"> 
									<select class="select" name="user_type">
										<option selected="selected" value="manager">Manager</option>
										<option value="admin">Admin</option>
										<option value="user">User</option>
									</select>
								</div>
							</div>
						</div>
						<br/>
					</div>
					<div class="col-md-6">
						<div class="row">	
							<div class="form-group">
									<div class="fileinput fileinput-new" data-provides="fileinput">
									  <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;"></div>
									  <div>
									    <span class="btn btn-default btn-file"><span class="fileinput-new">Select image</span><span class="fileinput-exists">Change</span><input type="file" name="profile_pic" name ="gen2Image" id="gen2ImageInput"></span>
									    <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
									  </div>
									</div>
							</div>
							<br/>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<div class="col-md-4"> 
								<button id="add_person_btn" class="btn btn-info" type="button">Add staff</button>
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