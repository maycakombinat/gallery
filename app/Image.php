<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
	protected $table = 'images';

 	protected $fillable = ['img', 'name', 'albiom_id']; 


    public function albiom(){
    	return $this->belongsTo('App\Picture', 'albiom_id');
    }
}
