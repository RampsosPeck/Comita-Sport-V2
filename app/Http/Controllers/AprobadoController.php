<?php

namespace App\Http\Controllers;

use App\Models\Carrito;
use App\Models\Cotizacion;
use Illuminate\Http\Request;

class AprobadoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $carritos = Carrito::where('estado','Procesando')->orderBy('id','DESC')->paginate();
        $cotizaciones = Cotizacion::where('estado','Procesando')->orderBy('id','DESC')->paginate();


        return view('aprobado.index', compact('carritos','cotizaciones' ));
    }

    public function indexview()
    {
        $carritos = Carrito::where('estado','Rechazado')->orderBy('id','DESC')->paginate();
        $cotizaciones = Cotizacion::where('estado','Rechazado')->orderBy('id','DESC')->paginate();


        return view('rechazado.index', compact('carritos','cotizaciones' ));
    }

    public function aprobado($id)
    {
        Carrito::where('id',$id)->update(['estado'=>'Procesando']);
        return redirect('/admin/aprobados')->with('success','El pedido fue aprobado.');
    }

    public function rechazado($id)
    {
        Carrito::where('id',$id)->update(['estado'=>'Rechazado']);
        return redirect('/admin/rechazados')->with('info','El pedido fue rechazado.');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
