@extends('layouts.admin')

@section('content')
    <div class="card py-5">
        <div class="card-body">
            <h1>StoreLine</h1>
            <hr>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body bg-primary">
                                <h4 class="font-weight-bold text-white font-weight-bold">Total Categories : {{ $category }} </h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body bg-secondary">
                                <h4 class="font-weight-bold text-white">Total de Productos : {{ $product }} </h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body bg-warning">
                                <h4 class="font-weight-bold ">Total de usuarios : {{ $users }} </h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body bg-info">
                                <h4 class="font-weight-bold text-white">Total Ordenes : {{ $total_orders }} </h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body bg-success">
                                <h4 class="font-weight-bold text-white">Ordenes Completas : {{ $completed_orders }} </h4>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body bg-danger">
                                <h4 class="font-weight-bold text-white">Ordenes Pendientes : {{ $pending_orders }} </h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

