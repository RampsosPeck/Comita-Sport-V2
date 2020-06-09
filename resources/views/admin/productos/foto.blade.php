<div class="modal fade" id="foto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header btn-comita text-white">
        <h5 class="modal-title" id="exampleModalLabel">Subir imagenes del producto</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div class="modal-body">
        	<input type="hidden" id="producto_id" name="producto_id" >
			<div class="dropzone btn-comita text-white"></div>
      	</div>
    </div>
  </div>
</div>



@push('scripts')
<script src="https://rawgit.com/enyo/dropzone/master/dist/dropzone.js"></script>
<script type="text/javascript">


 var myDropzone = new Dropzone('.dropzone', {
    url: '/admin/users/ /edit',
    paramName: 'foto',
    acceptedFiles: 'image/*',
    maxFilesize: 1,
    maxFiles: 3,
    headers: {
      'x-CSRF-TOKEN': '{{ csrf_token() }}'
    },
    dictDefaultMessage: 'Arrastra las fotos aquí para enviarlas',
    dictMaxFilesExceeded: 'Solo se permiten subir 3 imágenes.'
  });
  myDropzone.on('error', function(file, res){
    var msj = res.errors.foto[0];
    $('.dz-error-message:last > span').text(msj);
  });
  Dropzone.autoDiscover = false;


</script>

@endpush










