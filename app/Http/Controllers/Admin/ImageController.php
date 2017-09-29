<?php
namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Picture;
use App\Image;

class ImageController extends Controller
{
	// Detail Images in Alibom 
	public function detail($id){

		$photos = Image::where('albiom_id', $id)->orderBy('id', 'DESC')->get();
		return view('backend.photo', compact('photos'));

	}

	// All Images
	public function images(){
		$photos = Image::orderBy('id', 'DESC')->get();
		return view('backend.all-photo', compact('photos'));

	}

	// Create Photo View
    public function create(){

    	// Category Alibom
		$albioms = Picture::select(['name', 'id'])->get();
    	return view('backend.create-photo', compact('albioms'));
	}

	// Create Photo in DataBase
     public function store(Request $request){
    	if ($request->isMethod('post')) {
	        //Upload
	        if ($request->hasFile('img')) {
	            $file = $request->file('img');
	            $input['img'] = $file->getClientOriginalName(); 
	            $file->move(public_path().'/images/photo', $input['img']);
	        }
	        $image = new Image();
	        $image->name = $request->get('name');
	        $image->albiom_id = $request->get('albiom_id');
	        $image->fill($input);
	        $message = 'Post published successfully';
	        $image->save(); 
	        return redirect('admin/photo')->withMessage($message);
		}
    }
}    

