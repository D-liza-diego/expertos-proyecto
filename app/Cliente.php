<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    protected $table="cliente";
    protected $fillable=[
        'nombres',
        'apellidos',
        'dni',
        'edad',
        'correo',
        'telefono'
    ];
    public $timestamps=true;
}
