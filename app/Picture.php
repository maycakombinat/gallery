<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Picture extends Model
{
 protected $table = 'pictures';
  
    protected $fillable = ['img', 'name', 'text', 'calendari']; 

     public function images(){
    	return $this->hasMany('App\Image', 'albiom_id');
    }
}
