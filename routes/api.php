<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


//color routes
Route::apiResource('/colors','ColorController');


//storage routes
Route::apiResource('/storage','StorageController');


//phone routes
Route::apiResource('/phones','PhoneController');


// //phone list routes according to color filter
// Route::group(['prefix'=>'colors'],function(){

// 	Route::apiResource('/{color}/phones','PhoneController');
// });


// //phone list routes according to storage filter
// Route::group(['prefix'=>'storage'],function(){

// 	Route::apiResource('/{storage}/phones','PhoneController');
// });

