<?php

namespace App\Http\Controllers;

use App\Cliente;
use Illuminate\Http\Request;

class InicioController extends Controller
{
    public function index()
    {
        $clientes=Cliente::get();
        return view('Cliente.inicio',compact('clientes'));
    }
}
