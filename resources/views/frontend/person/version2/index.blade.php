@extends('frontend.layouts.master')

@section('content')
<div class="well">
	<div class="row">	
		<div class="col-md-8">
			
			<button  id="add_top_btn" class="btn btn-info" data-toggle="modal" data-target="#person_addModal"><span class="glyphicon glyphicon-plus">Add</span></button>
			
			<button  id="add_staff_top_btn" class="btn btn-info" data-toggle="modal" data-target="#person_staff_addModal"><span class="glyphicon glyphicon-plus">Add Staff</span></button>
			
			<button  id="import_excel_csv" class="btn btn-info" data-toggle="modal" data-target="#person_importexcelModal"><span class="glyphicon glyphicon-import" >Import</span></button>
			<button  class="btn btn-info" id="search_btn"><span class="glyphicon glyphicon-search">Search</span></button>
			<button  id="reloadButton" class="btn btn-info"><span class="glyphicon glyphicon-refresh">Reload</span></button>
		</div>
	</div><br/><br/>
	<div id="alert-info"></div>
	<div class="row">	
		<div class="col-md-11" id="search_person_div">

		</div>

	</div>
</div>

<br>
<br>

@permission('view-staff')
	@include('frontend.person.version2.tables.staffs')
@endauth

<!-- check parmission for viewing clients -->
	@include('frontend.person.version2.tables.clients')
	@include('frontend.person.version2.tables.customer')

@include('frontend.person.version2.modals.person_add')

@include('frontend.person.version2.modals.person_staff_add')


<div class="modal fade" id="person_editModal" tabindex="-1" role="modal" aria-labelledby="myModalLabel" aria-hidden="true">
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
									<input type="text" class="form-control" name="name" id="name_edit" required>
									<input type="hidden" class="form-control" name="person_id_edit" id="editId">
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
									<input type="text" class="form-control" name="dateOfBirth" id="dob_edit" pattern="/[0-3][0-9]\/[0-1][0-9]\/[1-2][0-9][0-9][0-9]/g"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
									</div>
								</div>
							</div>
						</div>
						<br/>
						<div class="row">	
							<div class="form-group">
								<label class="col-md-4 control-label">Gender</label>
								<div class="col-md-4" id="gender_div"> 
									<input class="genderinp" type="radio" name="gender" id="gender_edit" value = "male" checked="checked">Male
									<input class="genderinp" type="radio" name="gender" value="female">Female
								</div>
							</div>
						</div>
						<br/>
						<div class="row">	
							<div class="form-group">
								<label class="col-md-4 control-label">Type</label>
								<div class="col-md-4"> 
									<select class="select" name="type" id="type_edit">
										<option selected="selected" value="manager">Manager</option>
										<option value="admin">Admin</option>
										<option value="user">User</option>
									</select>
								</div>
							</div>
						</div>
						<br/>
						<div class="row">	
							<div class="form-group">
								<label class="col-md-4 control-label">Upload image</label>
								<div class="col-md-4"> 
									<div class="fileinput fileinput-new" data-provides="fileinput">
								        <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
								          <img  data-src="holder.js/100%x100%" alt="noprofilepic.png" id="gen3Image" style="height: 100%; width: 100%; display: block;">
								        </div>
								        <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 10px;"></div>
								        <div>
								          <span class="btn btn-default btn-file">
								          	<span class="fileinput-new">Select image</span>
								          	<span class="fileinput-exists">Change</span>
								          	<input type="hidden" value="" name="">
								          	<input type="file" name="profilePicture" >
								          </span>
								          <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
								        </div>
								     </div>
								</div>
							</div>
							<br/>
						</div>
						<div class="row">	<br>
							<div class="form-group">
								<div class="col-md-4"> 
									<button id="btnRequestEdit" class="btn btn-info" type="button">Edit person</button>
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
				<div class="well">
					<div class="row">
						<input type="hidden" id="hideId">
						<table class="detail-view table table-striped table-condensed" >
							<tbody>
								<tr class="odd"><th>Name</th><td id="name_hide" >Mark</td></tr>
								<tr class="even"><th>Date Of Birth</th><td id="dob_hide" >12/12/2012</td></tr>
								<tr class="odd"><th>Gender</th><td  id="gender_hide" >Male</td></tr>
								<tr class="even"><th>Type</th><td id="type_hide" >Manager</td></tr>
								<tr class="odd">
									<th>Picture</th>
									<td>
										<div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
								          <img data-src="" alt="noprofilepic.png" id="hideImage" style="height: 100%; width: 100%; display: block;">
								        </div>
								    </td>
								</tr>
							</tbody>
						</table>
					</div>					
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" id="btnRequestHide" >Proceed Hiding</button>
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
				<div class="well">
					<div class="row">
						<input type="hidden" id="showId">
						<table class="detail-view table table-striped table-condensed" >
							<tbody>
								<tr class="odd"><th>Name</th><td id="name_show" >Mark</td></tr>
								<tr class="even"><th>Date Of Birth</th><td id="dob_show" >12/12/2012</td></tr>
								<tr class="odd"><th>Gender</th><td  id="gender_show" >Male</td></tr>
								<tr class="even"><th>Type</th><td id="type_show" >Manager</td></tr>
								<tr class="odd">
									<th>Picture</th>
									<td>
										<div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
								          <img data-src="" alt="noprofilepic.png" id="showImage" style="height: 100%; width: 100%; display: block;">
								        </div>
								    </td>
								</tr>
							</tbody>
						</table>
					</div>					
				</div>					
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" id="btnRequestShow" >Proceed Showing</button>
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
				<div class="well">
					<div class="row">
						<input type="hidden" id="deleteId">
						<table class="detail-view table table-striped table-condensed" >
							<tbody>
								<tr class="odd"><th>Name</th><td id="name_delete" >Mark</td></tr>
								<tr class="even"><th>Date Of Birth</th><td id="dob_delete" >12/12/2012</td></tr>
								<tr class="odd"><th>Gender</th><td  id="gender_delete" >Male</td></tr>
								<tr class="even"><th>Type</th><td id="type_delete" >Manager</td></tr>
								<tr class="odd">
									<th>Picture</th>
									<td>
										<div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
								          <img data-src="" alt="noprofilepic.png" id="image_delete" style="height: 100%; width: 100%; display: block;">
								        </div>
								    </td>
								</tr>
							</tbody>
						</table>
					</div>					
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" id="btnRequestDelete" >Proceed to delete</button>
			</div>
		</div>

		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<div class="modal fade" id="modalPreviewPerson" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabelPreviewPerson">Name</h4>
			</div>
			<div class="modal-body">
				<div class="well">
					<div class="row">
						<input type="hidden" id="deleteId">
						<table class="detail-view table table-striped table-condensed" >
							<tbody>
								<tr class="odd"><th>Name</th><td id="name_preview" >Mark</td></tr>
								<tr class="even"><th>Date Of Birth</th><td id="dob_preview" >12/12/2012</td></tr>
								<tr class="odd"><th>Gender</th><td  id="gender_preview" >Male</td></tr>
								<tr class="even"><th>Type</th><td id="type_preview" >Manager</td></tr>
								<tr class="odd"><th>Visibility</th><td id="visibility_preview" >Hidden</td></tr>
								<tr class="even">
									<th>Picture</th>
									<td>
										<div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
								          <img data-src="" alt="noprofilepic.png" id="previewImage" style="height: 100%; width: 100%; display: block;">
								        </div>
								    </td>
								</tr>
							</tbody>
						</table>
					</div>					
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
			<div class="well">
					<form method="post" id="excel_file_form">
					
					<!-- File Button --> 
					<div class=" row form-group">
					  <label class="col-md-4 control-label" for="filebutton">File Button</label>
					  <div class="col-md-4">
							<input type="file" class="input-file" name = "excel_file" id="excel_file" accept=".csv">
					    <!-- <input id="filebutton" name="filebutton" class="input-file" type="file"> -->
					  </div>
					</div>

					<!-- Multiple Radios -->
					<div class="row form-group">
					  <label class="col-md-4 control-label" for="firstRow">First Row</label>
					  <div class="col-md-4">
					  <div class="radio">
					    <label for="firstRow-0">
					      <input type="radio" name="firstRow" id="firstRow-0" value="column" checked="checked">
					      Column Names
					    </label>
						</div>
					  <div class="radio">
					    <label for="firstRow-1">
					      <input type="radio" name="firstRow" id="firstRow-1" value="data">
					      Data
					    </label>
						</div>
					  </div>
					</div>
					</form>
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
	{!! HTML::script('js/jasny-bootstrap.min.js') !!}
	{!! HTML::script('js/frontend/person/version2/manage.js') !!}
	{!! HTML::script('js/frontend/person/version2/export_csv.js') !!}
	{!! HTML::script('js/frontend/person/version2/add.js') !!}
	{!! HTML::script('js/frontend/person/version2/main.js') !!}
	{!! HTML::script('js/frontend/person/version2/search.js') !!}
@stop


@section('before-styles-end')
	{!! HTML::style('css/bootstrap-datepicker.min.css') !!}
	{!! HTML::style('css/jasny-bootstrap.min.css') !!}
@stop



















