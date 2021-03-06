@extends('layouts.master')

@section('titulo','Pedidos aprobados')

@section('cabecera')
<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0 text-dark"><strong>PEDIDOS APROBADOS</strong></h1>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"> <a href="{{ route('admin') }}">Inicio</a></li>
					<li class="breadcrumb-item"> <a href="{{ route('admin.pedidos.index') }}">Pedidos</a></li>
					<li class="breadcrumb-item active">Pedidos aprobados</li>
				</ol>
			</div>
		</div>
	</div>
</div>
@endsection

@section('contenido')

@include('pagos.pagocarri')
@include('pagos.pagocoti')

<section class="content">
	<div class="container-fluid">
		<div class="col-12 col-sm-12 col-lg-12 mx-auto">
			<div class="card card-widget widget-user">
              	<div class="widget-user-header text-white"
                   	style="background: url('/img/welcome/potosi4.jpg') center center;">
                	<h3 class="widget-user-username text-right">APROBADOS</h3>
                	<h5 class="widget-user-desc text-right">Sport La Comita</h5>
              	</div>
              <div class="widget-user-image">
                <img style="border:none;" src="{{ asset('img/welcome/aceptados.svg') }}" alt="User Avatar">
              </div>
                <div class="card-body   pt-0" >
              		<div class="text-center p-2">
              			<strong>LISTA DE PEDIDOS APROBADOS</strong>
              		</div>
					<ul class="nav nav-tabs bg-light" id="myTab" role="tablist">
					  <li class="nav-item col-md-6 text-center" role="presentation">
					     <a class="nav-link active text-white" id="carritos-tab" data-toggle="tab" href="#carritos" role="tab" aria-controls="carritos" aria-selected="true">CARRITO DE COMPRAS</a>
					  </li>
					  <li class="nav-item col-md-6 text-center" role="presentation">
					    <a class="nav-link text-white" id="cotizaciones-tab" data-toggle="tab" href="#cotizaciones" role="tab" aria-controls="cotizaciones" aria-selected="false">COTIZACIONES</a>
					  </li>
					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="carritos" role="tabpanel" aria-labelledby="carritos-tab">
							<div class="p-2 text-center">
								<strong>Lista del carrito de compras</strong>
							</div>
							<div class="table-responsive" >
								<table class="table table-striped" id="tabla-tallas">
									<thead style="background-color:#0a2b4e; color: cyan; ">
										<tr class="text-center">
											<th scope="col">#</th>
											<th scope="col">Nombre/Código</th>
											<th scope="col">Estado</th>
											<th scope="col">Pago</th>
											<th scope="col">Total</th>
											<th scope="col">Acciones</th>
										</tr>
									</thead>
									<tbody>
										@foreach($carritos as $key => $carrito)
										<tr>
											<td class="" style="text-align: center">{{ ++$key }}</td>
											<td class="col-sm-5 col-md-5">
												<div class="media">
						                            <a class="thumbnail pull-left pr-2" href="{{ route('admin.pedidos.show', [$carrito->id]) }}" target="_blanck">
						                            	<img class="media-object" src="{{ $carrito->carrito_detalles->first()->producto->detalleimagenurl }}" style="width: 70px; height: 70px; border:2px solid cyan;">
						                            </a>
						                            <div class="media-body ">
						                                <div class="title_prodetalle">
						                                	<h1 style="font-size: 1em;" class="mb-0  ">
						                                		{{ $carrito->user->fullname }}
						                                	</h1>
						                                </div>
						                                <div class="product-talla">
									                        @if($carrito->fecha_entrega)
									                        	<strong>Entrega:</strong>
									                        	<label class="checkbox-btn mb-0">
																	<span class="btn btn-light-checkbox" > {{ $carrito->fecha_entrega->format('M d') }} </span>
																</label>
									                            @else
									                            <strong>Orden:</strong>
									                        	<label class="checkbox-btn mb-0">
									                            	<span class="btn btn-light-checkbox" > {{ $carrito->fecha_orden->format('M d') }} </span>
									                            </label>
									                            @endif
									                        </label>
									                    </div>
														<small class="text-justify text-sm-left text-muted">
		                                                  {{ $carrito->codigo }}
		                                                </small>
		                                                <a href="{{ route('admin.pedidos.show', [$carrito->id]) }}" class="btn btn-outline-secondary btn-sm" target="_blanck">
							                        	Cantidad: <strong>{{ $carrito->carrito_detalles->count() }}</strong>
							                        	</a>
						                            </div>
						                        </div>
											</td>
											<td class="col-sm-1 col-md-1 text-center">
												<label class="checkbox-btn mb-0 " >
                                                    <span class="btn btn-light-checkbox bg-success" style="font-size: 15px;"> {{ $carrito->estado }} </span>
                                                </label>

											</td>
											<td class="col-sm-2 col-md-2 text-center">
												@if($carrito->anticipo)
													<strong>Bs. {{ $carrito->anticipo }}</strong>
												@else
													<span style="color:red;"> <strong>Sin pago</strong> </span>
												@endif
												Deuda: {{ $carrito->total_bs - $carrito->anticipo }} Bs.
												@can('viewAny', auth::user())
												<button type="button" class="btn btn-sm btn-outline-success" data-carritoid="{{ $carrito->id }}" data-carritofecha="{{ $carrito->fecha_entrega ? $carrito->fecha_entrega->format('d M Y') : '' }}" data-toggle="modal" data-target="#pagarDeuda">
									                <i class="far fa-money-bill-alt"> </i> ¿Pagar?
									            </button>
									            @endcan
											</td>
											<td class="col-sm-2 col-md-2 text-center">
												<strong>Bs. {{ $carrito->total_bs }}</strong>
												@if($carrito->anticipo < $carrito->total_bs)
													@can('viewAny', auth::user())
													<button type="button" class="btn btn-sm btn-outline-secondary" data-carritoid="{{ $carrito->id }}" data-carritofecha="{{ $carrito->fecha_entrega ? $carrito->fecha_entrega->format('d M Y') : '' }}" data-toggle="modal" data-target="#pagarDeuda">
										                Deuda: {{ $carrito->total_bs - $carrito->anticipo }} Bs.
										            </button>
										            @endcan
									            @endif
											</td>
											<td class="col-sm-1 col-md-1 text-center  " >
											  	<a href="{{ route('admin.pedidos.show', [$carrito->id]) }}" class="btn btn-sm btn-block btn-comita" target="_blanck">
				                                    <span class="text-white">Ver Pedido</span>
				                                </a>
				                                 @if($carrito->pagoimgcarri)
													@if($carrito->pagoimgcarri->estado === 'Pendiente')
														<span  class="btn btn-sm btn-block btn-warning" >
															<strong>Validando Pago</strong>
														</span>
													@elseif($carrito->pagoimgcarri->estado === 'Aceptado')
														<span class="btn btn-sm btn-block btn-success" data-respu="{{ $carrito->pagoimgcarri->respuesta }}" data-toggle="modal" data-target="#resPago">
															<strong >Pago Aceptado</strong>
														</span>
													@else
														<span class="btn btn-sm btn-block btn-danger" data-respu="{{ $carrito->pagoimgcarri->respuesta }}" data-toggle="modal" data-target="#resPago">
															<strong >Pago Rechazado</strong>
														</span>
			                                		@endif
			                                	@else
			                                		<a href="{{ route('aprobados.pagar.carrito',$carrito->id) }}" class="btn btn-sm btn-block btn-outline-success">
									            		<i class="far fa-images"></i> Enviar imagen de pago
									            	</a>
									            @endif
											</td>
										</tr>
										@endforeach
									</tbody>
								</table>
							</div>
						</div>
						<div class="tab-pane fade" id="cotizaciones" role="tabpanel" aria-labelledby="cotizaciones-tab">
							<div class="p-2 text-center">
								<strong>Lista de las cotizaciones</strong>
							</div>
							<div class="table-responsive " >
								<table class="table table-striped" id="tabla-tallas">
									<thead style="background-color:#0a2b4e; color: cyan; ">
										<tr class="text-center">
											<th scope="col">#</th>
											<th scope="col">Nombre/Código</th>
											<th scope="col">Estado</th>
											<th scope="col">Pago</th>
											<th scope="col">Precio</th>
											<th scope="col">Acciones</th>
										</tr>
									</thead>
									<tbody>
										@foreach($cotizaciones as $key => $cotizacion)
										<tr>
											<td class="" style="text-align: center">{{ ++$key }}</td>
											<td class="col-sm-5 col-md-5">
												<div class="media">
						                            <a class="thumbnail pull-left pr-2" href=" " target="_blanck">
						                            	<img class="media-object" src="{{ asset($cotizacion->fotoimagen) }}" style="width: 70px; height: 70px; border:2px solid cyan;">
						                            </a>
						                            <div class="media-body">
						                                <div class="title_prodetalle">
						                                	<h1 style="font-size: 1em;" class="pb-0 mb-0">
						                                		{{ $cotizacion->user->fullname }}
						                                    </h1>
						                                </div>
						                                <div class="product-talla pt-0 mt-0">
									                    	<strong>Entrega:</strong>
									                        <label class="checkbox-btn pt-0 mt-0 pb-0 mb-0">
									                            <span class="btn btn-light-checkbox" > {{ $cotizacion->fecha->format('d M') }} </span>
									                        </label>
									                    </div>
														<small class="text-sm-left text-muted pb-0 mb-0 ">
		                                                  {{ $cotizacion->codigo }}
		                                                </small>
														<a href="{{ route('admin.pedidos.detallecoti',[$cotizacion->slug]) }}" class="btn btn-sm   btn-outline-success " data-toggle="tooltip" data-placement="right" title="Ver cotización." target="__blanck"  >
															<i class="far fa-eye"></i>
								                        </a>
						                            </div>
						                        </div>
											</td>
											<td class="col-sm-1 col-md-1 text-center">
												<label class="checkbox-btn" >
                                                    <span class="btn btn-light-checkbox" style="background-color: cyan; font-size: 15px;"> {{ $cotizacion->estado }} </span>
                                                </label>
											</td>
											<td class="col-sm-2 col-md-2 text-center">
												@if($cotizacion->anticipo)
													<strong>Bs. {{ $cotizacion->anticipo }}</strong>
												@else
													<span style="color:red;"> <strong>Sin pago</strong> </span>
													Deuda: {{ $cotizacion->precio - $cotizacion->anticipo }} Bs.
												@endif
												@can('viewAny', auth::user())
		                                        <button type="button" class="btn btn-sm btn-block  btn-outline-success" data-cotizacionid="{{ $cotizacion->id }}" data-toggle="modal" data-target="#pagarDecoti">
									                <i class="far fa-money-bill-alt"> </i> ¿PAGAR?
									            </button>
									            @endcan
		                                    </td>
											<td class="col-sm-2 col-md-2 text-center">
												<strong>Bs. {{ $cotizacion->precio }}</strong>
												@if($cotizacion->anticipo < $cotizacion->precio)
													@can('viewAny', auth::user())
													<button type="button" class="btn btn-sm btn-outline-secondary" data-cotizacionid="{{ $cotizacion->id }}" data-toggle="modal" data-target="#pagarDecoti">
										                Deuda: {{ $cotizacion->precio - $cotizacion->anticipo }} Bs.
										            </button>
										            @endcan
									            @endif
											</td>
											<td class="col-sm-1 col-md-1 text-white " >
												<a href="{{ route('admin.pedidos.detallecoti',[$cotizacion->slug]) }}" class="btn btn-sm btn-block btn-comita" target="_blanck">
				                                    <span class="text-white">Ver Cotización</span>
				                                </a>
									            @if($cotizacion->pagoimgcoti)
													@if($cotizacion->pagoimgcoti->estado === 'Pendiente')
														<span  class="btn btn-sm btn-block btn-warning" >
															<strong>Validando Pago</strong>
														</span>
													@elseif($cotizacion->pagoimgcoti->estado === 'Aceptado')
														<span class="btn btn-sm btn-block btn-success" data-respu="{{ $cotizacion->pagoimgcoti->respuesta }}" data-toggle="modal" data-target="#resPago">
															<strong >Pago Aceptado</strong>
														</span>
													@else
														<span class="btn btn-sm btn-block btn-danger" data-respu="{{ $cotizacion->pagoimgcoti->respuesta }}" data-toggle="modal" data-target="#resPago">
															<strong >Pago Rechazado</strong>
														</span>
			                                		@endif
			                                	@else
			                                		 <a href="{{ route('aprobados.pagar.cotizacion',$cotizacion->slug) }}" class="btn btn-sm btn-block  btn-outline-success">
										            	<i class="far fa-images"></i> Enviar imagen de pago
										            </a>
									            @endif
											</td>
										</tr>
										@endforeach
									</tbody>
								</table>
							</div>
						</div>
					</div>
                </div>
	        </div>
	    </div>
	</div>
</section>
@endsection


@push('styles')
<style>
.widget-user-header{
    background-position: center center !important;
    background-size: cover !important;
    height: 200px !important;
}

.widget-user .widget-user-image {
    /*position: absolute;*/
    top: 100px !important;
    /*left: 50%;
    margin-left: -45px;*/
}
.nav-link.active{
	background-color: #0a2b4e !important;
	color: cyan !important;
	border: 2px solid cyan !important;
}
.nav-tabs {
    border-bottom: 1px solid cyan;
}
.btn-light-checkbox {
	font-size: 12px;
	padding: 0.0rem 0.3rem;
}


</style>
@endpush


@push('scripts')

<script>
$custom-file-text: (
  es: "Elegir"
);
</script>

<script>
$('#pagarDeuda').on('show.bs.modal', function (event) {

	  var button = $(event.relatedTarget)
	  var ca_id = button.data('carritoid')
	  var ca_fe = button.data('carritofecha')
	  var modal = $(this)
	  modal.find('.modal-body #carrito_id').val(ca_id);
	  modal.find('.modal-body #fecha').val(ca_fe);
})
$('#pagarDecoti').on('show.bs.modal', function (event) {

	  var button = $(event.relatedTarget)
	  var co_id = button.data('cotizacionid')
	  var modal = $(this)
	  modal.find('.modal-body #cotizacion_id').val(co_id);
})
</script>
@endpush
