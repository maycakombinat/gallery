<?php
namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Picture;

class AlibomController extends Controller
{
	//View Create Alibom
    public function create(){

    	return view('backend.create-alibom');
    }

    //Create Alibom in Database
    public function store(Request $request){
    	if ($request->isMethod('post')) {
	        //Upload
	        if ($request->hasFile('img')) {
	            $file = $request->file('img');
	            $input['img'] = $file->getClientOriginalName();
	            $file->move(public_path().'/images/alibom', $input['img']);
	        }
	        $album = new Picture();
	        $album->name = $request->get('name');
	        $album->calendari = $request->get('calendari');
	        $album->text = $request->get('text');
	        $album->fill($input);
	        $message = 'Post published successfully';
	        $album->save(); 
	        return redirect('admin/alibom')->withMessage($message);
		}
    }

    // All Alibom
    public function index(){

    	$pictures = Picture::orderBy('calendari', 'DESC')->paginate(6);
    	return view('backend.alibom', ['pictures' => $pictures]);
    }

}
