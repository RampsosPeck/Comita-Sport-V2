<?php

namespace App\Http\Controllers;

use App\Models\Talla;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class TallaController extends Controller
{
	public function index()
    {
        $tallas = Talla::orderBy('id', 'DESC')->paginate();
        return view('admin.tallas.index', compact('tallas'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nombre' => 'required'
        ]);
        //dd($request->all());
        $talla = new Talla();
        $talla->nombre = $request['nombre'];
        $talla->slug = Str::of($request['nombre'])->slug('-');
        $talla->descripcion = $request['descripcion'];
        $talla->save();

        return redirect('admin/tallas#')->with('success', 'Nueva talla creada correctamente');
    }

    public function edit($slug)
    {
    	$talla = Talla::where('slug',$slug)->first();
    	return view('admin.tallas.edit', compact('talla'));
    }

    public function update(Request $request, $slug)
    {
        $talla = Talla::where('slug',$slug)->first();
        $talla->nombre = $request['nombre'];
        $talla->descripcion = $request['descripcion'];
        $talla->save();
        return redirect('admin/tallas')->with('success', 'Talla actualizada correctamente');
    }

    public function destroy($slug)
    {
    	$talla = Talla::where('slug',$slug)->update(['estado'=>false]);

        return redirect('admin/tallas')->with('success', 'La categoria fue dada de Baja');
    }

}
