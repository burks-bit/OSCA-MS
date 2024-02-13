<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\MemberController;

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


// authenticity
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::middleware('auth:sanctum')->post('/logout', [AuthController::class, 'logout']);

// admin - users
Route::middleware('auth:sanctum')->get('/user', [AuthController::class, 'user']);
Route::middleware('auth:sanctum')->get('/users/all', [UserController::class, 'allusers']);

// client - Members
Route::middleware('auth:sanctum')->get('/members/all', [MemberController::class, 'getallmembers']);
Route::middleware('auth:sanctum')->get('/members/getDetails', [MemberController::class, 'getDetails']);



// default
// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// supposed to be the routing format
// Route::group(['prefix' => 'admin', 'middleware'=>'auth:sanctum'], function(){
//     Route::get('/user', [AuthController::class, 'user']);
//     Route::get('/users/all', [UserController::class, 'allusers']);
// });

// Route::group(['prefix' => 'client', 'middleware'=>'auth:sanctum'], function(){
//     Route::get('/members/all', [MemberController::class, 'getallmembers']);
//     Route::post('/members/get_member_details', [MemberController::class, 'get_member_details']);
// });
    

