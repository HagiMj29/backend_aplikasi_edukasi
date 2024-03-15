<?php

namespace App\Http\Controllers;

use App\Models\Berita;
use Illuminate\Http\Request;

class BeritaController extends Controller
{
    public function index(){

        $beritas = Berita::latest()->get();

        return view('berita.index',['beritas'=>$beritas]);
    }

    public function create(){
        
        return view('berita.create');

    }

    public function store(Request $request){
        
        $request->validate([
            'title'=>'required',
            'content'=>'required',
            'image'=>'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $imagePath = null;
        if ($request->hasFile('image')) {
        $image = $request->file('image');
        $imageName = time() . '.' . $image->getClientOriginalExtension();
        $imagePath = $request->file('image')->storeAs('uploads', $imageName, 'public');
    }

    // Simpan data ke dalam database
    Berita::create([
        'title' => $request->title,
        'content' => $request->content,
        'image' => $imagePath,
    ]);

    return redirect()->route('berita.index');


    }

    public function edit(Berita $beritas){
        
        return view('berita.edit', ['beritas'=>$beritas]);

    }

    public function update(Request $request, Berita $beritas){
        
        $request->validate([
            'title'=>'required',
            'content'=>'required',
            'image'=>'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $imagePath = null;
        if ($request->hasFile('image')) {
        $image = $request->file('image');
        $imageName = time() . '.' . $image->getClientOriginalExtension();
        $imagePath = $request->file('image')->storeAs('uploads', $imageName, 'public');
    }

    $beritas->update([
        'title' => $request->title,
        'content' => $request->content,
        'image' => $imagePath,
    ]);

    }

    public function destroy(Berita $beritas){

        $beritas->delete();
        return redirect()->route('berita.index')->with('success','Data Berhasil di Hapus');
        
    }
}
