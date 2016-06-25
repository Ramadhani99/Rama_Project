<?php namespace App\Http\Controllers\Frontend\Person\Version1;

use DB;
use App\Http\Controllers\Controller;
use App\Http\Requests\Person\CreatePersonRequest;
use App\Http\Requests\Person\StorePersonRequest;
use App\Person;

/**
 * Class DashboardController
 * @package App\Http\Controllers\Backend
 */
class SpecificController extends Controller {
    
   
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function search()
    {
        $inputs = \Input::all();
        $conditionQuery = '';
        foreach ($inputs as $condition) {
            if ($condition['operator'] == '=' || 
                $condition['operator'] == '>' || 
                $condition['operator'] == '<' || 
                $condition['operator'] == '<='|| 
                $condition['operator'] == '>='|| 
                $condition['operator'] == '!=') {
                $conditionQuery = $conditionQuery . ' '. $condition['attribute'].' '.
                    $condition['operator'].' '.$condition['value'].' AND';
            } else if (
                $condition['operator'] == 'LIKE' ||
                $condition['operator'] == 'NOT LIKE' 
                ){
                $conditionQuery = $conditionQuery . ' '. $condition['attribute'].' '.
                    $condition['operator'].' \''.$condition['value'].'\' AND';
            }  else if (
                $condition['operator'] == 'IS NULL' ||
                $condition['operator'] == 'IS NOT NULL' 
                ){
                $conditionQuery = $conditionQuery . ' '. $condition['attribute'].' '.
                    $condition['operator'].' AND';
            } else if (
                $condition['operator'] == 'LIKE %...%' 
                ){
                $conditionQuery = $conditionQuery . ' '. $condition['attribute'].' LIKE '.
                ' \'%'.$condition['value'].'%\' AND';
            }else if (
                $condition['operator'] == 'NOT LIKE %...%' 
                ){
                $conditionQuery = $conditionQuery . ' '. $condition['attribute'].' NOT LIKE '.
                ' \'%'.$condition['value'].'%\' AND';
            }
            
        }
        // $person  = DB::raw('select * from person where '.substr($conditionQuery, 0, -3).';');
        $person  = DB::select('select * from person where '.substr($conditionQuery, 0, -3).';');
        return $person;
     
    }
   
}