@extends('layouts.admin')

@section('content')
    <div class="card">
        <div class="card-header">
            <h4>Editar Producto</h4>
        </div>
        <div class="card-body">
            <form action="{{ url('update-product/'.$products->id) }}" method="POST" enctype="multipart/form-data">
                @method('PUT')
                @csrf
                <div class="row">
                    <div class="col-md-12 mb-3">
                        <label for="">Categoria</label>
                        <select class="form-select">
                            <option value="">{{ $products->category->name }}</option>
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Nombre</label>
                        <input type="text" class="form-control" value="{{ $products->name }}" name="name">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Calve</label>
                        <input type="text" class="form-control" value="{{ $products->slug }}" name="slug">
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Pequeña descripcion</label>
                        <textarea name="small_description" class="form-control">{{ $products->small_description }}</textarea>
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Descricion</label>
                        <textarea name="description" class="form-control">{{ $products->description }}</textarea>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Precio Original</label>
                        <input type="number" value="{{ $products->original_price }}" class="form-control" name="original_price" >
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Precio Actual</label>
                        <input type="number" value="{{ $products->selling_price }}" class="form-control" name="selling_price">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for=""></label>
                        <input type="number" value="{{ $products->tax }}"  class="form-control" name="tax" >
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Cantidad</label>
                        <input type="number" value="{{ $products->qty }}"  class="form-control" name="qty">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Status</label>
                        <input type="checkbox" {{ $products->status == "1" ? 'checked' : '' }} name="status" >
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Tendencia</label>
                        <input type="checkbox" {{ $products->trending == "1" ? 'checked' : '' }} name="trending">
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Meta Titulo</label>
                        <input type="text" value="{{ $products->meta_title }}"  class="form-control" name="meta_title">
                    </div>
                    <div class="col-md-12 mb-3">
                        <label for="">Meta Keywords</label>
                        <textarea name="meta_keywords" rows="3" class="form-control">{{ $products->meta_keywords }}</textarea>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="">Meta Descripcion</label>
                        <textarea name="meta_description" rows="3" class="form-control">{{ $products->meta_description }}</textarea>
                    </div>
                    @if($products->image)
                        <img src="{{ asset('assets/uploads/products/'.$products->image) }}" alt="">
                    @endif
                    <div class="col-md-12">
                        <input type="file" name="image" class="form-control">
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary">Actualizar</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection

