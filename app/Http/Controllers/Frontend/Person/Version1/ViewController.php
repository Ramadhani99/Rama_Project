<?php namespace App\Http\Controllers\Frontend\Person\Version1;

use App\Http\Controllers\Controller;
// use App\Http\Requests\Person\CreatePersonRequest;
// use App\Http\Requests\Person\StorePersonRequest;
use App\Person;

/**
 * Class DashboardController
 * @package App\Http\Controllers\Backend
 */
class ViewController extends Controller {
	
	/**
	 * @return \Illuminate\View\View
	 */
	public function home(){
		return view('frontend.person.version2.index');
	}

}