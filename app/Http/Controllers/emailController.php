<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class emailController extends Controller
{
    public function emailform(){
        return view("formularioemail");
    }

    public function emailsend(Request $request){
        $details = [
            'title'=> $request->input('asunto'),
            'body' => $request->input('contenido')
        ];
        \Mail::to($request->input('email'))->send(new \App\Mail\PruebaCorreo($details));
        return redirect()->route('formularioemail');
    }
}
