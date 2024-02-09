<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;

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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::get('/getUserRole', [AuthController::class, 'getUserRole']);
// Route::get('/users/all', [UserController::class, 'allusers']);

// Route::group(['prefix' => 'admin'], function(){ // old
Route::prefix('admin')->group(function () {
    Route::middleware('auth:sanctum')->get('/user', [AuthController::class, 'user']);
    Route::middleware('auth:sanctum')->get('/users/all', [UserController::class, 'allusers']);
    // Route::middleware('auth:sanctum')->get('/user/role', [AuthController::class, 'getUserRole']);
    Route::middleware('auth:sanctum')->post('/logout', [AuthController::class, 'logout']);
    Route::middleware('auth:sanctum')->get('/branches', [BranchController::class, 'getallbranches']);
    Route::middleware('auth:sanctum')->get('/testcodes', [TestCodeController::class, 'getalltestcodes']);
    Route::middleware('auth:sanctum')->get('/testgroups', [TestGroupController::class, 'getalltestgroups']);
    Route::middleware('auth:sanctum')->get('/getbranchforadduser', [AppController::class, 'getBranchForAddUser']);
    Route::middleware('auth:sanctum')->get('/getdepartmentforadduser', [AppController::class, 'getDepartmentForAddUser']);
    Route::middleware('auth:sanctum')->get('/getrolesforadduser', [AppController::class, 'getRolesForAddUser']);
    Route::middleware('auth:sanctum')->get('/getuserdetails/{id}', [UserController::class, 'getUserDetails']);
    Route::middleware('auth:sanctum')->post('/adduser', [AuthController::class, 'register']);
});

