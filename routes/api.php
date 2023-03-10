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



Route::middleware(['api'])->group(function ($router) {
    Route::post('/login', 'AuthController@login');
    Route::post('/logout', 'AuthController@logout');
    Route::post('/refresh', 'AuthController@refresh');
    // Route::get('/me', 'AuthController@me')->middleware('log.route');
    Route::post('/profile', 'AuthController@profile');
});






//color routes
Route::apiResource('/colors','ColorController');


//storage routes
Route::apiResource('/storage','StorageController');


//phone routes
Route::apiResource('/phones','PhoneController');


//employee routes
Route::apiResource('/employees','EmployeeController');

