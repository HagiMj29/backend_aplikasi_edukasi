<?php

use App\Http\Controllers\API\BeritaController;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\KaryawanController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::get('/user',[UserController::class, 'index']);
Route::post('/users', [UserController::class, 'store']);
Route::get('/users/{user}', [UserController::class, 'show']);
Route::put('/users/{user}', [UserController::class, 'update']);
Route::delete('/users/{user}', [UserController::class, 'destroy']);


Route::post('/login', [UserController::class, 'login']);
Route::post('/logout', [UserController::class, 'logout']);

Route::post('/register', [UserController::class, 'register']);

Route::get('/berita',[BeritaController::class, 'index']);
Route::get('/galeri',[BeritaController::class, 'galeri']);

Route::get('/karyawan',[KaryawanController::class, 'index']);
Route::post('/karyawan',[KaryawanController::class, 'store']);
Route::get('/karyawan/{karyawans}', [KaryawanController::class, 'show']);
Route::put('/karyawan/{karyawans}', [KaryawanController::class, 'update']);
Route::delete('/karyawan/{karyawans}', [KaryawanController::class, 'destroy']);
