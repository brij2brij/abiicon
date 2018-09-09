<?php
Route::group(['middleware'=>['web']],function(){
//users
Route::resource('users','userController');

//login
Route::get('auth/login', [ 'as' => 'login', 'uses' => 'Auth\LoginController@showLoginForm']);
Route::post('auth/login','Auth\LoginController@login');
Route::get('auth/logout',[ 'as' => 'logout','uses' =>'Auth\LoginController@userLogout']);
//password Reset
Route::post('password/email',['as'=>'password.email','uses'=>'Auth\ForgotPasswordController@sendResetLinkEmail']);
Route::post('password/reset', 'Auth\ResetPasswordController@reset');
Route::get('password/reset',['as'=>'password.request','uses'=> 'Auth\ForgotPasswordController@showLinkRequestForm']);
Route::get('password/reset/{token?}',['as'=>'password.reset','uses'=>'Auth\ResetPasswordController@showResetForm']);
//main
Route::get('/','PageController@getindex');
//register
Route::get('auth/register','Auth\RegisterController@showRegistrationForm');
Route::post('auth/register','Auth\RegisterController@register');

 });
 //admin
Route::prefix('admin')->group(function(){
Route::get('/login','Auth\AdminLoginController@showLoginForm')->name('admin.login');
Route::post('/login','Auth\AdminLoginController@login')->name('admin.login.submit');
Route::get('/','AdminController@index')->name('admin.dashboard');
Route::get('/logout','Auth\AdminLoginController@logout')->name('admin.logout');

//password Reset
Route::post('/password/email', 'Auth\AdminForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
Route::get('/password/reset', 'Auth\AdminForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
Route::post('/password/reset', 'Auth\AdminResetPasswordController@reset');
Route::get('/password/reset/{token}', 'Auth\AdminResetPasswordController@showResetForm')->name('admin.password.reset');
});
