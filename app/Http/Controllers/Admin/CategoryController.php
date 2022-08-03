<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;

class CategoryController extends Controller
{
    public function index()
    {
        $category = Category::all();
        return view('admin.category.index', compact('category'));
    }

    public function add()
    {
        return view('admin.category.add');
    }

    public function insert(Request $request)
    {
        $this -> validate($request,[
        'name' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/', 
        'slug' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/',
        'description' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/',
        'status' => 'required|',
        'popular' => 'required|',
        'image' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/',
        'meta_title' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/',
        'meta_descrip' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/',
        'meta_keywords' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/' ,
        ]);

        $category = new Category();
        if($request->hasFile('image'))
        {
            $file = $request->file('image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('assets/uploads/category/',$filename);
            $category->image = $filename;
        }

        $category->name = $request->input('name');
        $category->slug = $request->input('slug');
        $category->description = $request->input('description');
        $category->status = $request->input('status') == TRUE ? '1':'0';
        $category->popular = $request->input('popular') == TRUE ? '1':'0';
        $category->meta_title = $request->input('meta_title');
        $category->meta_keywords = $request->input('meta_keywords');
        $category->meta_descrip = $request->input('meta_description');
        $category->save();
        return redirect('/categories')->with('status',"Categoria agregada correctamente");
    }

    public function edit($id)
    {
        $category = Category::find($id);
        return view('admin.category.edit', compact('category'));
    }

    public function update(Request $request, $id)
    {
    $this -> validate($request,[
        'name' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/', 
        'slug' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/',
        'description' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/',
        'status' => 'required|',
        'popular' => 'required|',
        'image' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/',
        'meta_title' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/',
        'meta_descrip' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/',
        'meta_keywords' => 'required| regex:/^[A-Z][A-Z,a-z, ,á,é,í,ó,ú,ñ]+$/' ,
        ]);

        $category = Category::find($id);
        if($request->hasFile('image'))
        {
            $path = 'assets/uploads/category/'.$category->image;
            if(File::exists($path))
            {
                File::delete($path);
            }
            $file = $request->file('image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('assets/uploads/category/',$filename);
            $category->image = $filename;
        }
        $category->name = $request->input('name');
        $category->slug = $request->input('slug');
        $category->description = $request->input('description');
        $category->status = $request->input('status') == TRUE ? '1':'0';
        $category->popular = $request->input('popular') == TRUE ? '1':'0';
        $category->meta_title = $request->input('meta_title');
        $category->meta_keywords = $request->input('meta_keywords');
        $category->meta_descrip = $request->input('meta_description');
        $category->update();
        return redirect('categories')->with('status',"Categoria actualizada correctamente");
    }


    public function destroy($id)
    {
        $category = Category::find($id);
        if($category->image)
        {
            $path = 'assets/uploads/category/'.$category->image;
            if(File::exists($path))
            {
                File::delete($path);
            }
        }
        $category->delete();
        return redirect('categories')->with('status',"Categoria eliminada correctamente");
    }

}
