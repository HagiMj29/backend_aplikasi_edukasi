@extends('layouts.main')
@section('container')

<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Form</h6>
        </div>
        <div class="card-body">
            <form action="{{route('karyawan.update',['karyawans'=>$karyawans->id])}}" method="POST">
                @csrf
                @method('post')
                <div class="mb-3">
                    <label for="name">Name</label>
                    <input class="form-control" name="name" value="{{old('name',$karyawans->name)}}" type="text" placeholder="Masukkan Nama">
                </div>
                <div class="mb-3">
                    <label for="name">No BP</label>
                    <input class="form-control" name="no_bp" value="{{old('no_bp',$karyawans->no_bp)}}" type="text" placeholder="Masukkan Nama">
                </div>
                <div class="mb-3">
                    <label for="name">No HP</label>
                    <input class="form-control" name="no_hp" type="text" value="{{old('no_hp',$karyawans->no_hp)}}" placeholder="Masukkan Nama">
                </div>
                <div class="mb-3">
                    <label for="name">Email</label>
                    <input class="form-control" name="email" type="text" value="{{old('email',$karyawans->email)}}" placeholder="Masukkan Nama">
                </div>
                <div class="mb-3">
                    <label for="input_date">Tanggal Data Masuk</label>
                    <input type="datetime-local" value="{{old('input_date',$karyawans->input_date)}}" name="input_date">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success">Submit Data</button>
                </div>
            </form>

        </div>

    </div>

</div>
    
@endsection

