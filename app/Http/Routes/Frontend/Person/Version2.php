<?php

$router->group([
	// 'prefix' => 'V1',
	'namespace' => 'Version2'
], function() use ($router)
{
	/**
	 * views 
	 */
		get('/', 'ViewController@home')->name('person.home');

	/**
	 * api 
	 */
		resource('person', 'ApiController');
		resource('customer', 'CustomerApiController');
		resource('staff', 'StaffApiController');

	/**
	 * file 
	 */
		$router->group(['prefix' => 'file'], function() {
			get('picture/profile/{id}', 'FileController@profilePicture')->name('person.file.profile.pic');
			get('data/sample', 'FileController@sample')->name('person.file.sample');
			get('data', 'FileController@export')->name('person.file');
			post('data', 'FileController@import')->name('person.file');
		});

	/**
	 * other specific actions
	 */
		// Route::controller('/', 'SpecficController');
		post('search', 'SpecificController@search')->name('person.search');

});