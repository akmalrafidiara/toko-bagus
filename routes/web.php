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

Route::get('/', 'BookController@index')->name('home');
Route::get('/login', function () {
    return view('login');
})->name('login_v');
Route::get('/add-book', function () {
    return view('add-book');
})->name('add_book');
Route::get('/book/{id}', 'BookController@show')->name('book');

Route::post('auth/register', 'AuthController@register')->name('register');
Route::post('auth/login', 'AuthController@login')->name('login');