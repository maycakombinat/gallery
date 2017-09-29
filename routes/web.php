<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', ['uses' => 'FrontEndController@index'])->name('homePage');
Route::get('photo/{id}', ['uses' => 'FrontEndController@show'])->name('allImg');

//ADMIN
Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function(){
	Route::get('/', function(){
		return view('backend.index');
	})->name('homeAdmin');

	Route::get('create/alibom', ['uses' => 'Admin\AlibomController@create'])->name('createAlibom');
	Route::post('create/alibom', ['uses' => 'Admin\AlibomController@store'])->name('storeAlibom');

	Route::get('alibom', ['uses' => 'Admin\AlibomController@index'])->name('allAlibom');
	Route::get('photo', ['uses' => 'Admin\ImageController@images'])->name('allImages');
	Route::get('photo/{id}', ['uses' => 'Admin\ImageController@detail'])->name('allImage');


	Route::get('create/image', ['uses' => 'Admin\ImageController@create'])->name('createImage');
	Route::post('create/image', ['uses' => 'Admin\ImageController@store'])->name('storeImage');

});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
