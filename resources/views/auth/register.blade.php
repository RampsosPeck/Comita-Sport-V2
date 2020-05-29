@extends('layouts.principal')

@section('saludo')
<div class="col-md-6 animate__animated animate__fadeInDown ">
    <form method="POST" action="{{ route('register') }}" class="shadow rounded py-3 px-4 was-validated comita-jaspeado">
        @csrf
        <h6 class="text-white"><strong> REGISTRO </strong></h6><hr class="linea-blanca">
        <div class="form-group row">
            <div class="col-sm-6">
                <input id="name" type="text" class="form-control bg-light shadow-sm @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus placeholder="Nombre completo">

                @error('name')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
            <div class="col-sm-6">
                <input id="cedula" type="text" class="form-control bg-light shadow-sm @error('cedula') is-invalid @enderror" name="cedula" value="{{ old('cedula') }}" required autocomplete="cedula" placeholder="Cédula de identidad">

                @error('cedula')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>

        <div class="form-group row">

            <div class="col-sm-6">
                <input id="telefono" type="text" class="form-control bg-light shadow-sm @error('telefono') is-invalid @enderror" name="telefono" value="{{ old('telefono') }}" required autocomplete="telefono" placeholder="Celular o Teléfono">

                @error('telefono')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
            <div class="col-sm-6">
                <input id="email" type="email" class="form-control bg-light shadow-sm @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" autocomplete="email" placeholder="Correo electrónico">

                @error('email')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>

        <div class="form-group row">

            <div class="col-sm-6">
                <input id="password" type="password" class="form-control bg-light shadow-sm @error('password') is-invalid @enderror" name="password" required autocomplete="new-password" placeholder="Contraseña">

                @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>

            <div class="col-sm-6">
                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password" placeholder="Repita su contraseña">
            </div>
        </div>

        <div class="form-group row mb-0">
            <div class="col-md-6 offset-md-3">
                <button type="submit" class="btn btn-block btn-sm btn-outline-light btn-comita">
                    {{ __('ENVIAR') }}
                </button>
            </div>
        </div>
        <hr class="linea-blanca">
        <div class="form-group row">
            <div class="col-sm-6 pb-2">
                <a href="{{ route('login') }}" class="btn btn-sm btn-block  btn-outline-light">{{ __('¿Ya tienes cuenta?') }}</a>
            </div>
            <div class="col-sm-6">
                @if (Route::has('password.request'))
                    <a class="btn btn-block btn-sm btn-outline-light" href="{{ route('password.request') }}">
                        {{ __('¿Olvidaste tu contraseña?') }}
                    </a>
                @endif
            </div>
        </div>
    </form>
</div>
@endsection
