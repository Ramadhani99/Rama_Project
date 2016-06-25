<?php namespace App\Http\Controllers\Frontend\Person\Version1;

use App\Http\Controllers\Controller;
// use App\Http\Requests\Person\CreatePersonRequest;
// use App\Http\Requests\Person\StorePersonRequest;
use App\Person;

/**
 * Class DashboardController
 * @package App\Http\Controllers\Backend
 */
class FileController extends Controller {
	
	/**
	 * @return \Illuminate\View\View
	 */
	public function profilePicture($id){
		$person = Person::find($id);
        $filename = $person->profile_pic;
        if ($filename == "") {
            $filename = './noprofilepic.png';
            $file_name = './noprofilepic.png';
        } else {
            $file_name = '../images/'.$filename;
            if(!file_exists($file_name)){
                $filename = './noprofilepic.png';
                $file_name = './noprofilepic.png';  
            }
        }
        $mime_types = array(
                "pdf"=>"application/pdf"
                ,"exe"=>"application/octet-stream"
                ,"zip"=>"application/zip"
                ,"docx"=>"application/msword"
                ,"doc"=>"application/msword"
                ,"xls"=>"application/vnd.ms-excel"
                ,"ppt"=>"application/vnd.ms-powerpoint"
                ,"gif"=>"image/gif"
                ,"png"=>"image/png"
                ,"jpeg"=>"image/jpg"
                ,"jpg"=>"image/jpg"
                ,"mp3"=>"audio/mpeg"
                ,"wav"=>"audio/x-wav"
                ,"mpeg"=>"video/mpeg"
                ,"mpg"=>"video/mpeg"
                ,"mpe"=>"video/mpeg"
                ,"mov"=>"video/quicktime"
                ,"avi"=>"video/x-msvideo"
                ,"3gp"=>"video/3gpp"
                ,"css"=>"text/css"
                ,"jsc"=>"application/javascript"
                ,"js"=>"application/javascript"
                ,"php"=>"text/html"
                ,"htm"=>"text/html"
                ,"html"=>"text/html"
        );
        $tmp = explode('.', $filename);
        $file_extension = end($tmp);
        $extension = strtolower($file_extension);   
        $mime = $mime_types[$extension];
        header("Content-Type: $mime");
        $file = file_get_contents($file_name);
        echo $file;
    }

    public function import(){
        $filename = \Input::file('excel_file');
        $file = $_FILES["excel_file"]["tmp_name"];
        $file_size = $_FILES["excel_file"]["size"];
        if($file_size > 0){   
            $allowed =  array('csv');
            $ext = pathinfo($_FILES['excel_file']['name'], PATHINFO_EXTENSION);
            if($ext != 'csv') {
                return 2;
            }else{
                $file = fopen($file, "r");
                while (($emapData = fgetcsv($file, 10000, ",")) !== FALSE){
                    $person = new Person;
                    $person->name = $emapData[0];
                    $person->dob  = $emapData[1];
                    $person->gender = $emapData[2];
                    $person->type = $emapData[3];
                    $person->save();
                }
                fclose($file);
                return 1;
            }
        }
    }
    public function export(){
        $output = fopen('php://output', 'w');
        fputcsv($output, array('Name', 'Gender', 'Dob'));
        $persons = Person::all();
        $data = "";
        foreach($persons as $person) {
          $data .= $person['name'].",".$person['gender'].",".$person['dob'].","."\n";
        }
        header('Content-Type: application/csv');
        header('Content-Disposition: attachement; filename="persons.csv"');
        return $data;
        exit();
     }
   

}