<?php

use App\Http\Controllers\api\exchangeController;
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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('/addToy', [exchangeController::class, 'createToy']);
Route::put("/deactivate/{toyId}", [exchangeController::class, 'deactivate']);
Route::put("/reactive/{toyId}", [exchangeController::class, 'reactivate']);
Route::get('/listActiveToy', [exchangeController::class, 'listActiveToy']);
Route::get('/listActiveToy/per_page={number}', [exchangeController::class, 'listPerPageActive']);
Route::get('/listAllToy', [exchangeController::class, 'listAllToy']);
Route::get('/listAllToy/per_page={number}', [exchangeController::class, 'listAllToyPerPage']);
Route::get('/listDeactiveToy', [exchangeController::class, 'listDeactiveToy']);
Route::get('/listDeactiveToy/per_page={number}', [exchangeController::class, 'listPerPageDeactive']);

