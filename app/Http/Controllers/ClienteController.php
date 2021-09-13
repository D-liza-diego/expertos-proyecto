<?php

namespace App\Http\Controllers;

use App\Cliente;
use Illuminate\Http\Request;

class ClienteController extends Controller
{

    public function store(Request $request){
        $cliente=new Cliente();
        $cliente->nombres=$request->nombres;
        $cliente->apellidos=$request->apellidos;
        $cliente->dni=$request->dni;
        $cliente->edad=$request->edad;
        $cliente->correo=$request->correo;
        $cliente->telefono=$request->telefono;
        $cliente->save();
        return redirect()->route('inicio');
    }
    public function update(Request $request,$id){
        $cliente=Cliente::findOrFail($id);
        $cliente->nombres=$request->nombres;
        $cliente->apellidos=$request->apellidos;
        $cliente->dni=$request->dni;
        $cliente->edad=$request->edad;
        $cliente->correo=$request->correo;
        $cliente->telefono=$request->telefono;
        $cliente->save();
        return redirect()->route('inicio');
    }
    public function destroy($id)
    {
        Cliente::destroy($id);
        return redirect()->route('inicio');
    }
}
