<?php

namespace App\Http\Controllers;

use App\Models\Carrito;
use App\Models\Categoria;
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
        //dd($cotizaciones);
        if(auth()->user()->tipo === 'Administrador'){
            $carritos = Carrito::where('estado','Procesando')->orderBy('id','DESC')->paginate();
            $cotizaciones = Cotizacion::where('estado','Procesando')->orderBy('id','DESC')->paginate();
        }else{
            $carritos = Carrito::where('user_id',auth()->user()->id)->where('estado','Procesando')->orderBy('id','DESC')->paginate();
            $cotizaciones = Cotizacion::where('user_id',auth()->user()->id)->where('estado','Procesando')->orderBy('id','DESC')->paginate();
        }

        return view('aprobado.index', compact('carritos','cotizaciones'));
    }

    public function indexview()
    {
        if(auth()->user()->tipo === 'Administrador'){
            $carritos = Carrito::where('estado','Rechazado')->orderBy('id','DESC')->paginate();
            $cotizaciones = Cotizacion::where('estado','Rechazado')->orderBy('id','DESC')->paginate();
        }else{
            $carritos = Carrito::where('user_id',auth()->user()->id)->where('estado','Rechazado')->orderBy('id','DESC')->paginate();
            $cotizaciones = Cotizacion::where('user_id',auth()->user()->id)->where('estado','Rechazado')->orderBy('id','DESC')->paginate();
        }

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
        return response()->json(['success'=>'El pedido fue rechazado.']);
    }

    public function cotiaprobado($id)
    {
        //dd($id);
        Cotizacion::where('id',$id)->update(['estado'=>'Procesando']);
        return redirect('/admin/aprobados')->with('success','El pedido fue aprobado.');
    }

    public function cotirechazado($id)
    {
        Cotizacion::where('id',$id)->update(['estado'=>'Rechazado']);
        return response()->json(['success'=>'La cotización fue rechazada.']);
    }
    public function calendario()
    {
        $this->authorize('viewAny', Categoria::class);
        $carritos = Carrito::where('estado','Procesando')->get();
        $cotizaciones = Cotizacion::where('estado','Procesando')->get();

        return view('calendario.index',compact('carritos','cotizaciones'));

    }


}