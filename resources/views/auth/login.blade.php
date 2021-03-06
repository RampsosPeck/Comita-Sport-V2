@extends('layouts.principal')

@section('saludo')
<div class="col-md-6 animate__animated animate__fadeInDown ">
    <form method="POST" action="{{ route('login') }}" class=" shadow rounded py-3 px-4 comita-jaspeado ">
        @csrf
        <h6 class="text-white"><strong> INICIAR SESIÓN </strong></h6><hr class="linea-blanca">
        <div class="form-group row">
            <label for="email" class="col-sm-5 col-form-label text-md-right text-white"><strong></strong>{{ __('Cédula de identidad') }}</strong></label>

            <div class="col-sm-7">
                <input type="number" class="form-control bg-light border-0  @error('cedula') is-invalid @enderror" name="cedula" value="{{ old('cedula') }}"  autocomplete="cedula" autofocus placeholder="Ingrese su Cédula">

                @error('cedula')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>

        <div class="form-group row">
            <label for="password" class="col-sm-5 col-form-label text-md-right text-white">{{ __('Clave/contraseña') }}</label>

            <div class="col-sm-7">
                <input id="password" type="password" class="form-control bg-light border-0 @error('password') is-invalid @enderror" name="password"  autocomplete="current-password" placeholder="Ingrese su contraseña">

                @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>

        <div class="form-group row mb-0">
            <div class="col-md-7 offset-md-5">
                <button type="submit" class="btn btn-block  btn-outline-light btn-comita">
                    {{ __('INGRESAR') }}
                </button>
            </div>
        </div>
        <hr class="linea-blanca">
        <div class="form-group row">
            <div class="col-sm-6 pb-2">
                @if (Route::has('register'))
                    <a href="{{ route('register') }}" class="btn btn-sm btn-block  btn-outline-light">REGISTRARSE</a>
                @endif
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
