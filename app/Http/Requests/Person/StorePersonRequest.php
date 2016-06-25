<?php namespace App\Http\Requests\Person;

use App\Http\Requests\Request;

/**
 * Class StoreUserRequest
 * @package App\Http\Requests\Backend\Access\User
 */
class StorePersonRequest extends Request {

    /**
     * Determine if the Person is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return access()->can('create_person');
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'					=>  'required',
            'dob'					=>	'required',
            'profile_pic'				=>	'required|image',
        ];
    }
}