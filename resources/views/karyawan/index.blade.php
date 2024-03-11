@extends('layouts.main')
@section('container')

<div class="container-fluid">
    
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
    </div>
    <div class="card-body">
        <div class="panel-body">
            <a href="{{route('karyawan.create')}}" class="btn btn-md btn-success mb-3">TAMBAH DATA</a>
        </div>
        <div class="table-responsive w-100">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <th class="text-center">No</th>
                    <th class="text-center">Nama</th>
                    <th class="text-center">No BP</th>
                    <th class="text-center">No Hp</th>
                    <th class="text-center">Email</th>
                    <th class="text-center">Input Date</th>
                    <th class="text-center">Aksi</th>
                </thead>
                <tbody>
                    @php
                        $no = 1;
                    @endphp
                    @forelse ($karyawans as $data)
                        <tr>
                            <td class="text-center">{{ $no++}}</td>
                            <td class="text-center">{{ $data->name}}</td>
                            <td class="text-center">{{ $data->no_bp}}</td>
                            <td class="text-center">{{ $data->no_hp}}</td>
                            <td class="text-center">{{ $data->email}}</td>\
                            <td class="text-center">{{ $data->input_date}}</td>
                            <td class="text-center">
                                <form onsubmit="return confirm('Apakah Anda Yakin ?');", action="{{route('karyawan.destroy',['karyawans'=>$data->id])}}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger btn-circle">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </form>
                                <a href="{{route('karyawan.edit',['karyawans'=>$data->id])}}" class="btn btn-warning btn-circle">
                                    <i class="fas fa-pencil-alt"></i></i>
                                </a>
                            </td>
                        </tr>
                    @empty
                        
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
@endsection