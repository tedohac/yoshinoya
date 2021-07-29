<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Master_user;
use Validator;
use Session;
use Auth;
use Hash;

class LoginController extends Controller
{
    public function form()
    {
        if(Auth::check()) return redirect()->route('/');
        
        // echo Hash::make('karyawan');
        return view('login');
    }
    
    public function process(Request $request)
    {
        $data = [
            'username_email'=> $request->user_email,
            'password'  => $request->user_password
        ];

        if(!Auth::attempt($data))
        {
            //Login Fail
            Session::flash('error', 'Email atau password salah');
            return redirect()->route('login')->withInput($request->all);
        }

        Session::flash('success', 'Selamat datang, '.Auth::user()->user_role.'!');
        if(Auth::check()) return redirect()->route('/');
    }
    
    public function logout()
    {
        Auth::logout();
        Session::flash('success', 'Logout berhasil, sampai jumpa!');
        return redirect()->route('login');
    }
}
