<?php

use App\Http\Controllers\AnalisisController;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\InicioController;
use Illuminate\Support\Facades\Route;

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

Route::get('/',[InicioController::class,'index'])->name('inicio');

Route::get('/cliente/eliminar/{id}',[ClienteController::class,'destroy'])->name('cliente.destroy');
Route::post('/cliente/store',[ClienteController::class,'store'])->name('cliente.store');
Route::post('/cliente/update/{id}',[ClienteController::class,'update'])->name('cliente.update');

Route::get('/Analisis/analisis',[AnalisisController::class,'analisis'])->name('analisis');
Route::get('/prueba',[AnalisisController::class,'prueba'])->name('prueba');
