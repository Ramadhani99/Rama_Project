<?php namespace App\Http\Controllers\Frontend\Person\Version2;

use App\Http\Controllers\Controller;
use App\Http\Requests\Person\CreatePersonRequest;
use App\Http\Requests\Person\StorePersonRequest;
use App\Person;

/**
 * Class DashboardController
 * @package App\Http\Controllers\Backend
 */
class StaffApiController extends Controller {
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
     
        $persons = Person::where('type', 'staff')->get();
        return Response()->json(array(
            'errof' => false,
            'persons' => $persons->toArray()),
            200
        );
    }
     
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        // Make sure current user owns the requested resource
        $person = Person::where('id', $id)
                ->take(1)
                ->get();
     
        return Response()->json(array(
            'error' => false,
            'persons' => $person->toArray()),
            200
        );
    }
    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(StorePersonRequest $request)
    {
        $inputs =  \Input::all();
        $person = new Person;
        $person->name = $inputs['name'];
        $person->dob  = $inputs['dob'];
        $person->gender = $inputs['gender'];
        $person->type = $inputs['user_type'];
        $file = \Input::file('profile_pic');
        if ($file != ''){
            $destinationPath = '../images/';
            $filename = uniqid().'-'.$file->getClientOriginalName();
            $file->move($destinationPath, $filename);
            $person->profile_pic = $filename;
        }
        $person->save();


        return Response()->json(array(
            'error' => false,
            'person' => $person->toArray()),
            200
        );
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        $person = Person::find($id);
        $filename = $person->profile_pic;
        if ($filename == "") {
        }else {
            $file_name = '../images/'.$filename;
            if(file_exists($file_name)){
                $deleteStatus = unlink($file_name);
                // $deleteStatus = delete($file_name);
                if ($deleteStatus) {
                    $person->delete();
                    return Response()->json(array('error' => false, 'message' => 'person deleted with image'), 200
                    );
                } else {
                    return Response()->json(array('error' => true, 'message' => 'picture in use'), 500 );
                }
            } else {
                $person->delete();
                return Response()->json(array('error' => true, 'message' => 'picture not found'), 200 );
            }
        }
        $person->delete();
        return Response()->json(array(
            'error' => true,
            'message' => 'picture not found'),
            200
            );
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id)
    {
        $person = Person::find($id);
        $inputs =  \Input::all();
        if (isset($inputs['name']) && $inputs['name'] != '') {
            $person->name = $inputs['name'];
        }
        if (isset($inputs['dateOfBirth']) && $inputs['dateOfBirth'] != '') {
            $person->dob = $inputs['dateOfBirth'];
        }
        if (isset($inputs['gender']) && $inputs['gender'] != '') {
            $person->gender = $inputs['gender'];
        }
        if (isset($inputs['type']) && $inputs['type'] != '') {
            $person->type = $inputs['type'];
        }
        if (isset($inputs['visibility']) && $inputs['visibility'] != '') {
            $person->visibility = $inputs['visibility'];
        }
        $file = \Input::file('profilePicture');
        if ($file != ''){
            //save image file
            $destinationPath = '../images/';
            $filename = uniqid().'-'.$file->getClientOriginalName();
            $file->move($destinationPath, $filename);
            $person->profile_pic = $filename;
            
        }

        $person->save();
     
        return Response()->json(array(
            'error' => false,
            'sent' => $inputs,
            'person' => $person,
            'message' => 'url updated'),
            200
        );
    }
}