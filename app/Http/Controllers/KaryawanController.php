<?php

namespace App\Http\Controllers;

use App\Models\Karyawan;
use Illuminate\Http\Request;

class KaryawanController extends Controller
{
    public function index(){

        $karyawans = Karyawan::latest()->get();

        return view('karyawan.index',['karyawans'=>$karyawans]);

    }

    public function create(){

        return view('karyawan.create');
        
    }

    public function store(Request $request){

        $request->validate([
            'name'=>'required',
            'no_bp'=>'required',
            'no_hp'=>'required',
            'email'=>'required',
            'input_date'=>'required',
        ]);

        Karyawan::create([
            'name'=>$request->name,
            'no_bp'=>$request->no_bp,
            'no_hp'=>$request->no_hp,
            'email'=>$request->email,
            'input_date'=>$request->input_date,
        ]);

        return redirect()->route('karyawan.index')->with('success','Data Berhasil di Tambahkan');
        
    }

    public function edit(Karyawan $karyawans){

        return view('karyawan.edit', ['karyawans'=>$karyawans]);
        
    }

    public function update(Request $request, Karyawan $karyawans){

        $request->validate([
            'name'=>'required',
            'no_bp'=>'required',
            'no_hp'=>'required',
            'email'=>'required',
            'input_date'=>'required',
        ]);

        $karyawans->update([
            'name'=>$request->name,
            'no_bp'=>$request->no_bp,
            'no_hp'=>$request->no_hp,
            'email'=>$request->email,
            'input_date'=>$request->input_date,
        ]);

        return redirect()->route('karyawan.index')->with('success','Data Berhasil di Ubah');
        
    }

    public function destroy(Karyawan $karyawans){

        $karyawans->delete();
        return redirect()->route('karyawan.index')->with('success','Data Berhasil di Hapus');
        
    }
}
