<?php

namespace App\Http\Controllers\API;


use App\Http\Controllers\Controller;
use App\Models\Berita;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;


class BeritaController extends controller{

    public function index()
    {
        $beritas = Berita::latest()->get();

        $result = $beritas->map(function ($data){
            
            return [
                'title'=>$data->title,
                'content'=>$data->content,
                'image'=>$data->image,
            ];

        });

        return response()->json(['message' => 'Data Berhasil di Akses', 'result'=>$result], 200);
    }

    public function galeri()
    {
        $beritas = Berita::latest()->get();

        $result = $beritas->map(function ($data){
            
            return [
                'title'=>$data->title,
                'image'=>$data->image,
            ];

        });

        return response()->json(['message' => 'Data Berhasil di Akses', 'result'=>$result], 200);
    }

}