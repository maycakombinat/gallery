<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Picture;
use App\Image;

//Frontend picture
class FrontEndController extends Controller
{
    public function index(){

    	$pictures = Picture::orderBy('calendari', 'DESC')->paginate(6);

    	return view('frontend.index', ['pictures' => $pictures]);
	}
   
    public function show($id){
		$photos = Image::where('albiom_id', $id)->orderBy('id', 'DESC')->get();
		return view('frontend.photo', compact('photos'));
	}
}
