@extends('layouts.front')

@section('title')
    Checkout
@endsection

@section('content')

    <div class="py-3 mb-4 shadow-sm bg-warning border-top">
        <div class="container">
            <h6 class="mb-0">
                <a href="{{ url('/') }}">
                    Inicio
                </a> /
                <a href="{{ url('checkout') }}">
                    Orden
                </a>
            </h6>
        </div>
    </div>

    <div class="container mt-3">
        <form action="{{ url('place-order') }}" method="POST">
            {{ csrf_field() }}
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <h6>Datos Basicos</h6>
                            <hr>
                            <div class="row checkout-form">
                                <div class="col-md-6">
                                    <label for="">Nombres</label>
                                    <input type="text" required class="form-control firstname" value="{{ Auth::user()->name }}" name="fname" placeholder="Ingresa tus nombres">
                                    <span id="fname_error" class="text-danger"></span>
                                </div>
                                <div class="col-md-6">
                                    <label for="">Apellidos</label>
                                    <input type="text" required class="form-control lastname" value="{{ Auth::user()->lname }}" name="lname" placeholder="Ingresa tus apellidos">
                                    <span id="lname_error" class="text-danger"></span>
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Correo</label>
                                    <input type="text" required class="form-control email" value="{{ Auth::user()->email }}" name="email" placeholder="Ingresa tu Correo">
                                    <span id="email_error" class="text-danger"></span>

                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Telefono</label>
                                    <input type="text" required class="form-control phone" value="{{ Auth::user()->phone }}" name="phone" placeholder="Ingresa un numero telefonico">
                                    <span id="phone_error" class="text-danger"></span>
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Calle</label>
                                    <input type="text" required class="form-control address1" value="{{ Auth::user()->address1 }}" name="address1" placeholder="Ingresa direccion 1">
                                    <span id="address1_error" class="text-danger"></span>
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">No. de Casa</label>
                                    <input type="text" required class="form-control address2" value="{{ Auth::user()->address2 }}" name="address2" placeholder="Ingresa direccion  2">
                                    <span id="address2_error" class="text-danger"></span>
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Estado</label>
                                    <input type="text" required class="form-control city" value="{{ Auth::user()->city }}" name="city" placeholder="ingresa tu ciudad">
                                    <span id="city_error" class="text-danger"></span>
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Municipio</label>
                                    <input type="text" required class="form-control state" value="{{ Auth::user()->state }}" name="state" placeholder="ingresa tu estado">
                                    <span id="state_error" class="text-danger"></span>
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Comunidad/Localidad</label>
                                    <input type="text" required class="form-control country" value="{{ Auth::user()->country }}" name="country" placeholder="Ingresa tu comunidad">
                                    <span id="country_error" class="text-danger"></span>
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Codigo Postal</label>
                                    <input type="text" required class="form-control pincode" value="{{ Auth::user()->pincode }}" name="pincode" placeholder="Ingresa tu codigo postal">
                                    <span id="pincode_error" class="text-danger"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <h6>Detalles de la Orden</h6>
                            <hr>
                            @php $total = 0; @endphp
                            @if($cartitems->count() > 0)
                                <table class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Cantidad</th>
                                            <th>Precio</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($cartitems as $item)
                                        <tr>
                                            @php $total += ($item->products->selling_price * $item->prod_qty) @endphp
                                            <td>{{ $item->products->name }}</td>
                                            <td>{{ $item->prod_qty }}</td>
                                            <td>{{ $item->products->selling_price }}</td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <h6 class="px-2"> Total  <span class="float-end">$ {{ $total }} </span></h6>
                                <hr>
                                <input type="hidden" name="payment_mode" value="COD">
                                <button type="submit" class="btn btn-success w-100 mb-2">Enviar Orden</button>
                                
                                <div id="paypal-button-container"></div>
                            @else
                                <h4 class="text-center">No hay productos en el carrito</h4>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection
