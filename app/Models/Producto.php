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

    //Accesor para imagen por defecto
    public function getFavoritoImagenUrlAttribute()
    {
        /*$imgFavorito = $this->fotos()->where('favorito',true)->first();

        if(!$imgFavorito){ //En caso que la imagen no sea destacada
            $imgFavorito = $this->fotos()->first();
        }
        if($imgFavorito){
            return $imgFavorito->url;//del otro mutator que hicimos en el modelo ProductImage
        }*/
        return '/img/default.jpg';
    }

}
