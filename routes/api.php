<?php

use Illuminate\Http\Request;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('auth/register', 'Api\AuthController@register');
Route::post('auth/login', 'Api\AuthController@login');

Route::middleware('verifyToken')->group(function() {
    Route::post('auth/logout', 'Api\AuthController@logout');

    Route::get('book', 'Api\BookController@index');
    Route::get('book/{id}', 'Api\BookController@show');
    Route::post('book', 'Api\BookController@store');
    Route::post('book/{id}/rating', 'Api\BookController@storeRating');
    Route::post('book/{id}/review', 'Api\BookController@storeReview');
});