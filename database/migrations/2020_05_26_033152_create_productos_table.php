<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productos', function (Blueprint $table) {
            $table->id();
            $table->string('nombre');
            $table->string('slug')->unique();
            $table->string('codigo')->unique()->nullable();
            $table->text('descripcion')->nullable();
            $table->unsignedDecimal('precio',9,2)->nullable();
            $table->unsignedDecimal('descuento',9,2)->nullable();
            $table->unsignedInteger('cant_descuento')->nullable();
            $table->string('oferta')->nullable();
            $table->unsignedInteger('stock')->nullable(); //Esta es la cantidad del producto
            $table->boolean('estado')->default(0); //Agotado o Disponible
            //aqui se esta creando la columna que hara referencia a la tabla categorias
            $table->unsignedBigInteger('categoria_id')->nullable(); //UNSIGNED--> solo tendra valores positivos
            $table->foreign('categoria_id')->references('id')->on('categorias');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('productos');
    }
}
