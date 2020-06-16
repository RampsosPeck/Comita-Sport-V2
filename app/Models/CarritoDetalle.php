<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CarritoDetalle extends Model
{
    protected $table = 'carrito_detalles';
    protected $fillable = ['cantidad','producto_precio','descuento_pro','subtotal_bs','producto_id','carrito_id'];


    //Esta es la relacion para un carrito_detalle tenga un producto
    public function producto()
    {
        return $this->hasOne(Producto::class);
    }

    //un carrito detalle
    public function carrito()
    {
        return $this->belongsTo(Carrito::class);
    }


}
