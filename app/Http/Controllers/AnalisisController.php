<?php

namespace App\Http\Controllers;

use App\Cliente;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Mail;

class AnalisisController extends Controller
{
    public function analisis(Request $request)
    {
        $gLuz = $request->gastoLuz;
        $gAgua = $request->gastoAgua;
        $gTelefono = $request->gastoTelefono;
        $gInternet = $request->gastoInternet;
        $gDiario = $request->gastoDiario;
        $ingresos = $request->Ingreso;
        $gs = $gLuz + $gAgua + $gTelefono + $gInternet;
        $comando = "inicio(" . $ingresos . "," . $gDiario . "," . $gs . "," . $request->riesgo . "," . $request->social . "," . $request->financiera . ",Resultado).";

        $salida = exec('swipl -s C:\Users\diego\Documents\GIT\PROYECTO-2021-EXPERTOS\expertos\app\Http\Controllers\rules.pl -g "' . $comando . '" -t halt.');
        $mensaje="nada";
        if ($salida) {
            $mensaje=$salida;
        }

        Config::set('mail.mailers.smtp.username', 'creditoexperto2021@gmail.com');
        Config::set('mail.mailers.smtp.password', 'xlrfspmuskleiwai');
        $cliente = Cliente::findOrFail($request->id);
        $data=array('mensaje'=>$mensaje,'user'=>$cliente);

        Mail::send('emails.mensaje', $data, function ($message) use ($cliente) {
            $message->to($cliente->correo, $cliente->nombres)
                ->subject("Analisis de Credito");
            $message->from("SE2021unt@gmail.com", "Analizador de Credito");
        });
        return redirect()->route('inicio');
    }
    public function prueba()
    {
        return view('emails.mensaje');
    }
}
