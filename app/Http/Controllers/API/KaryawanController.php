<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Karyawan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class KaryawanController extends controller {

    public function index()
    {
        $karyawans = Karyawan::latest()->get();

        $result = $karyawans->map(function ($data){
            
            return [
                'id' => $data->id,
                'name'=>$data->name,
                'no_bp'=>$data->no_bp,
                'no_hp'=>$data->no_hp,
                'email'=>$data->email,
                'input_date'=>$data->input_date,
            ];

        });

        return response()->json(['message' => 'Data Berhasil di Akses', 'result'=>$result], 200);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'no_bp' => 'required',
            'no_hp' => 'required',
            'email' => 'required',
            'input_date' => 'required',
        ]);

        $karyawans = Karyawan::create([
            'name' => $request->name,
            'no_bp' => $request->no_bp,
            'no_hp' => $request->no_hp,
            'email' => $request->email,
            'input_date' => $request->input_date,
        ]);

        return response()->json(['message' => 'Data Berhasil di Tambahkan', 'karyawans' => $karyawans], 201);
    }

    public function update(Request $request, Karyawan $karyawans)
    {
        $request->validate([
            'name' => 'required',
            'no_bp' => 'required',
            'no_hp' => 'required',
            'email' => 'required',
            'input_date' => 'required',
        ]);

        $karyawans->update([
            'name' => $request->name,
            'no_bp' => $request->no_bp,
            'no_hp' => $request->no_hp,
            'email' => $request->email,
            'input_date' => $request->input_date,
        ]);

        return response()->json(['message' => 'Data Berhasil di Ubah', 'karyawans' => $karyawans], 200);
    }

    public function destroy(Karyawan $karyawans)
    {
        $karyawans->delete();

        return response()->json(['message' => 'Data Berhasil di Hapus'], 200);
    }

    public function show(Karyawan $karyawans)
    {
        return response()->json(['karyawans' => $karyawans], 200);
    }


}