@extends('welcome')
@section('contenido')
@section('cliente-active', 'active')
@section('titulo', 'Lista de Clientes')
<div class="row">
    <div class="col-md-12">
        <button class="btn btn-primary float-right mb-2 btn-agregar" type="button">Agregar Cliente</button>

    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover" id="tblNotaSalidad">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th scope="col" class="text-center">Cliente</th>
                        <th scope="col">Dni</th>
                        <th scope="col">Edad</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Telefono</th>
                        <th scope="col">Acciones</th>

                    </tr>
                </thead>
                <tbody>
                    @foreach ($clientes as $cliente)
                        <tr>
                            <td>{{ $cliente->id }}</td>
                            <td>{{ $cliente->nombres . ' ' . $cliente->apellidos }}</td>
                            <td>{{ $cliente->dni }}</td>
                            <td>{{ $cliente->edad }}</td>
                            <td>{{ $cliente->correo }}</td>
                            <td>{{ $cliente->telefono }}</td>
                            <td>
                                <button class="btn btn-warning btn-sm" onclick="editar('{{ $cliente->id }}')"
                                    type="button"><i class="fa fa-pencil" aria-hidden="true"></i> Editar</button>
                                <button class="btn btn-danger btn-sm" onclick="eliminar('{{ $cliente->id }}')"
                                    type="button"><i class="fa fa-trash" aria-hidden="true"></i>Eliminar</button>
                                <button class="btn btn-primary btn-sm" onclick="analisis('{{ $cliente->id }}')"
                                    type="button"><i class="fa fa-list" aria-hidden="true"></i>Analisis</button>
                            </td>
                        </tr>
                        <div class="modal fade" id="editarCliente{{ $cliente->id }}" tabindex="-1" role="dialog"
                            aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <form action="{{ route('cliente.update', $cliente->id) }}" method="post">
                                        @csrf
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Crear Cliente </h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <label for="">Nombres</label>
                                                    <input type="text" name="nombres" id="nombres"
                                                        class="form-control" placeholder=""
                                                        value="{{ $cliente->nombres }}">
                                                </div>
                                                <div class="col-md-12">
                                                    <label for="">Apellidos</label>
                                                    <input type="text" name="apellidos" id="apellidos"
                                                        class="form-control" placeholder=""
                                                        value="{{ $cliente->apellidos }}">
                                                </div>
                                                <div class="col-md-12">
                                                    <label for="">Correo</label>
                                                    <input type="email" name="correo" id="correo" class="form-control"
                                                        placeholder="" value="{{ $cliente->correo }}">
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="">Edad</label>
                                                    <input type="number" name="edad" id="edad" class="form-control"
                                                        placeholder="" value="{{ $cliente->edad }}">
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="">Telefono</label>
                                                    <input type="number" name="telefono" id="telefono"
                                                        class="form-control" placeholder=""
                                                        value="{{ $cliente->telefono }}">
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="">Dni</label>
                                                    <input type="number" name="dni" id="dni" class="form-control"
                                                        placeholder="" value="{{ $cliente->dni }}">
                                                </div>

                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-dismiss="modal">Cerrar</button>
                                            <button type="submit" class="btn btn-primary">Guardar</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="modal fade" id="crearCliente" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="{{ route('cliente.store') }}" method="post">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Crear Cliente </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <label for="">Nombres</label>
                            <input type="text" name="nombres" id="nombres" class="form-control" placeholder="">
                        </div>
                        <div class="col-md-12">
                            <label for="">Apellidos</label>
                            <input type="text" name="apellidos" id="apellidos" class="form-control" placeholder="">
                        </div>
                        <div class="col-md-12">
                            <label for="">Correo</label>
                            <input type="email" name="correo" id="correo" class="form-control" placeholder="">
                        </div>
                        <div class="col-md-6">
                            <label for="">Edad</label>
                            <input type="number" name="edad" id="edad" class="form-control" placeholder="">
                        </div>
                        <div class="col-md-6">
                            <label for="">Telefono</label>
                            <input type="number" name="telefono" id="telefono" class="form-control" placeholder="">
                        </div>
                        <div class="col-md-6">
                            <label for="">Dni</label>
                            <input type="number" name="dni" id="dni" class="form-control" placeholder="">
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="analisis" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <form action="{{ route('analisis') }}" method="get">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Analizar Cliente</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="id" id="id">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card shadow">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="">Gastos de Luz</label>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="basic-addon1">
                                                        <i class="fa fa-bolt" aria-hidden="true"></i>
                                                    </span>
                                                </div>
                                                <input type="text" name="gastoLuz" id="gastoLuz"
                                                    class="form-control form-control-sm" placeholder="">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="">Gastos de Agua</label>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="basic-addon1">
                                                        <i class="fa fa-tint" aria-hidden="true"></i>
                                                    </span>
                                                </div>
                                                <input type="text" name="gastoAgua" id="gastoAgua"
                                                    class="form-control form-control-sm" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="">Gastos de Telefono</label>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="basic-addon1">
                                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                                    </span>
                                                </div>
                                                <input type="text" name="gastoTelefono" id="gastoTelefono"
                                                    class="form-control form-control-sm" placeholder="">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="">Gastos de Internet</label>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="basic-addon1">
                                                        <i class="fa fa-internet-explorer" aria-hidden="true"></i>
                                                    </span>
                                                </div>
                                                <input type="text" name="gastoInternet" id="gastoInternet"
                                                    class="form-control form-control-sm" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="">Gastos Diarios</label>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="basic-addon1">
                                                        <i class="fa fa-money" aria-hidden="true"></i>
                                                    </span>
                                                </div>
                                                <input type="text" name="gastoDiario" id="gastoDiario"
                                                    class="form-control form-control-sm" placeholder="">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="">Ingresos</label>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="basic-addon1">
                                                        <i class="fa fa-money" aria-hidden="true"></i>
                                                    </span>
                                                </div>
                                                <input type="text" name="Ingreso" id="Ingresos"
                                                    class="form-control form-control-sm" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card shadow">
                                <div class="card-body">
                                        <label for="">Referencias Sociales</label>
                                        <select name="social" id="social" class="form-control form-control-sm">
                                            <option value="buenas">Buenas</option>
                                            <option value="malas">Malas</option>
                                        </select>
                                        <label for="">Referencias Financieras</label>
                                        <select name="financiera" id="financiera" class="form-control form-control-sm">
                                            <option value="buenas">Buenas</option>
                                            <option value="malas">Malas</option>
                                        </select>
                                        <label for="">Riesgo</label>
                                        <select name="riesgo" id="riesgo" class="form-control form-control-sm">
                                            <option value="nulo">Ninguno</option>
                                            <option value="bajo">Bajo</option>
                                            <option value="medio">Medio</option>
                                            <option value="alto">Alto</option>
                                        </select>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary btn-sm">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
@section('estilos')
<style>
    div.dt-buttons {
        float: right;
        margin-left: 10px;
        margin-top: 30px;
    }

</style>
<link rel="stylesheet" type="text/css"
    href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.25/b-1.7.1/b-colvis-1.7.1/b-html5-1.7.1/b-print-1.7.1/fh-3.1.9/r-2.2.9/datatables.min.css" />
@endsection
@section('script')
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script type="text/javascript"
src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.25/b-1.7.1/b-colvis-1.7.1/b-html5-1.7.1/b-print-1.7.1/fh-3.1.9/r-2.2.9/datatables.min.js">
</script>
<script>
    var table = $('#tblNotaSalidad').DataTable({
        "bPaginate": true,
        responsive: true,
        "bLengthChange": true,
        "bFilter": true,
        "bInfo": true,
        "bAutoWidth": false,
        "processing": true,
        language: {
            "url": "Spanish.json",
        },

    })
    $(".btn-agregar").click(function(e) {
        e.preventDefault();
        $("#crearCliente").modal('show');
    });

    function editar(id) {
        $("#editarCliente" + id).modal('show');
    }

    function eliminar(id) {
        var url = "{{ route('cliente.destroy', ':id') }}"
        url = url.replace(":id", id)
        window.location.href = url
    }

    function analisis(id) {
        $("#analisis #id").val(id)
        $("#analisis").modal('show');
    }
</script>
@endsection