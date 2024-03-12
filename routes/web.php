<?php

use App\Http\Controllers\BeritaController;
use App\Http\Controllers\KaryawanController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('user.index');
});


Route::get('register', [UserController::class, 'showRegistrationForm'])->name('registerForm');
Route::post('register', [UserController::class, 'register']);

Route::get('login', [UserController::class, 'showLoginForm'])->name('login');
Route::post('login', [UserController::class, 'login']);


Route::post('logout', [UserController::class, 'logout'])->name('logout');

Route::get('user.index', [UserController::class, 'index'])->name('user.index');
Route::get('user.create', [UserController::class, 'create'])->name('user.create');
Route::post('user/store', [UserController::class, 'store'])->name('user.store');
Route::get('user/{user}/edit', [UserController::class, 'edit'])->name('user.edit');
Route::put('user/{user}', [UserController::class, 'update'])->name('user.update');
Route::delete('user/{user}', [UserController::class, 'destroy'])->name('user.destroy');

Route::get('berita.index', [BeritaController::class, 'index'])->name('berita.index');
Route::get('berita.create', [BeritaController::class, 'create'])->name('berita.create');
Route::post('berita.store', [BeritaController::class, 'store'])->name('berita.store');
Route::get('berita/{berita}/edit', [BeritaController::class, 'edit'])->name('berita.edit');
Route::put('berita/{berita}', [BeritaController::class, 'update'])->name('berita.update');
Route::delete('berita/{berita}', [BeritaController::class, 'destroy'])->name('berita.destroy');

Route::get('karyawan.index', [KaryawanController::class, 'index'])->name('karyawan.index');
Route::get('karyawan.create', [KaryawanController::class, 'create'])->name('karyawan.create');
Route::post('karyawan/store', [KaryawanController::class, 'store'])->name('karyawan.store');
Route::get('karyawan/{karyawans}/id', [KaryawanController::class, 'edit'])->name('karyawan.edit');
Route::put('karyawan/{karyawans}', [KaryawanController::class, 'update'])->name('karyawan.update');
Route::delete('karyawan/{karyawans}', [KaryawanController::class, 'destroy'])->name('karyawan.destroy');
