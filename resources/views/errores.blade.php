@if($carrito->pagoimgcarri)
		@if(auth()->user()->tipo === 'Administrador')
			@if($carrito->pagoimgcarri->estado === 'Esperando')
				<form action=" " method="POST">
					@csrf
					<input type="hidden" name="pedido" value="carrito">
					<button type="submit" class="btn btn-sm btn-block btn-success mt-2" target="_blanck">
                     Validar Pago
                	</button>
				</form>
			@else
				<span  class="btn btn-sm btn-block btn-info" data-respu="{{ $carrito->pagoimgcarri->respuesta }}" data-toggle="modal" data-target="#resPago" >
					<strong>Pago {{ $carrito->pagoimgcarri->estado }}</strong>
				</span>
			@endif
		@else
			@if($carrito->pagoimgcarri->estado === 'Esperando')
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
    	@endif
    @else