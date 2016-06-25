<?php 
use App\Person;
/**
 * Switch between the included languages
 */
require(__DIR__ . "/Routes/Global/Lang.php");

/**
 * Frontend Routes
 * Namespaces indicate folder structure
 */
$router->group(['namespace' => 'Frontend'], function () use ($router)
{
	require(__DIR__ . "/Routes/Frontend/Person.php");
	require(__DIR__ . "/Routes/Frontend/Frontend.php");
	require(__DIR__ . "/Routes/Frontend/Access.php");
});

/**
 * Backend Routes
 * Namespaces indicate folder structure
 */
$router->group(['namespace' => 'Backend'], function () use ($router)
{
	$router->group(['prefix' => 'admin', 'middleware' => 'auth'], function () use ($router)
	{
		/**
		 * These routes need view-backend permission (good if you want to allow more than one group in the backend, then limit the backend features by different roles or permissions)
		 *
		 * Note: Administrator has all permissions so you do not have to specify the administrator role everywhere.
		 */
		$router->group(['middleware' => 'access.routeNeedsPermission:view-backend'], function () use ($router)
		{
			require(__DIR__ . "/Routes/Backend/Dashboard.php");
			require(__DIR__ . "/Routes/Backend/Access.php");
		});
	});
});



// Route::get('/test',function(){

// 	return view('backend.add_person');
// });
// Route::get('/getPersons',function(){
// 	return Person::all();
// });
// // Route::post('/handleAddPerson',function(){
// // 	// return'heee';
// // 	return Input::all();
// // });
// Route::get('edit_person/{id}','AddedController@edit_person');
// Route::post('handleAddPerson','AddedController@addPerson');
// Route::post('handleEditPerson','AddedController@handleEditPerson');
// Route::post('hidePerson','AddedController@hidePerson');
// Route::post('delPerson','AddedController@delPerson');
// Route::get('loadpic/{filename}','AddedController@loadpic');
// Route::post('showPerson','AddedController@showPerson');
// Route::post('handleImportExcel','AddedController@handleImportExcel');
// // Route::post('editPerson/','AddedController@editPerson');
