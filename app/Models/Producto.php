<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    protected $fillable = ['nombre','slug','descripcion','precio','descuento','oferta','stock','estado','categoria_id'];

    // Aqui consultamos la categoria de un producto
    public function categoria(){
    	// Un producto pertenece a una categoria-->Relacion de muchos a una(Categoria)
    	return $this->belongsTo(Categoria::class);
    }

}
