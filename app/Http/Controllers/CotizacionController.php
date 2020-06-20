<?php

namespace App\Http\Controllers;

use App\Models\Cotizacion;
use App\Models\CotizacionFoto;
use App\Models\Material;
use App\Models\Talla;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class CotizacionController extends Controller
{


	public function index()
	{
		$cotizaciones = Cotizacion::get();
		return view('cotizaciones.index', compact('cotizaciones'));
	}

	public function store(Request $request)
    {
        $this->validate($request, [
            'nombre' => 'required|min:5|max:100'
        ]);
        $cotizacion = new Cotizacion;
        $cotizacion->nombre = $request['nombre'];
        $cotizacion->slug = Str::of($request['nombre'])->slug('-');
        $cotizacion->save();

        return redirect()->route('admin.cotizaciones.edit', $cotizacion->slug);

    }

    public function edit($slug)
    {
        //dd($slug);
        $cotizacion = Cotizacion::where('slug',$slug)->first();
        //Le mandamos tambien las tallas
        $tallas = Talla::all();
        $materiales = Material::all();
        //Con compact enviamos datos
        $fotos = CotizacionFoto::where('cotizacion_id',$cotizacion->id)->get();

        return view('cotizaciones.edit', compact('cotizacion','tallas','materiales','fotos'));

    }

    public function update(Request $request, $slug)
    {
    	//dd($request->all());
        $this->validate($request, [
            'cantidad' => 'required|min:1',
            'materiales' => 'required',
            'tallas' => 'required',
        ]);

         $cotizacion = Cotizacion::where('slug',$slug)->first();
         $cotizacion->nombre = $request['nombre'];
         $cotizacion->codigo = $cotizacion->id.'/'.date('Y-M-d h:m').'/'.auth()->user()->id;
         $cotizacion->descripcion = $request['descripcion'];
         $cotizacion->cantidad = $request['cantidad'];
         $cotizacion->estado = 'Pendiente';
         $cotizacion->save();

         $cotizacion->tallas()->sync($request->get('tallas'));
         $cotizacion->materiales()->sync($request->get('materiales'));

         return redirect('/admin/cotizaciones')->with('success', 'La cotización fue creada  correctamente!');

    }

}
