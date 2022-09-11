<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;
use App\User;
use App\Login_token;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        if($request->password != $request->con_password) {
            return $data = 'invalid field';
        }
        $validator = validator($request->all(), [
            'first_name' => 'required|alpha|min:2|max:20',
            'last_name' => 'required|alpha|min:2|max:20',
            'username' => 'required|string|min:5|max:12|unique:users',
            'password' => 'required|min:5|max:12',
        ]);
        if($validator->fails()) {
            dd($validator->errors());
            return $data = 'invalid field';
            return $validator->errors();
        }
        $generateToken = Str::random(80);
        $user = User::create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'username' => $request->username,
            'password' => bcrypt($request->password),
        ]);
        
        Login_token::create([
            'user_id' => $user->id,
            'token' => $generateToken
        ]);

        return redirect()->route('home');
    }

    public function login(Request $request)
    {
        if(auth()->attempt($request->only('username', 'password'))) {
            $user = auth()->user();
            $generateToken = Str::random(80);

            Login_token::create([
                'user_id' => $user->id,
                'token' => $generateToken
            ]);
            
            return redirect()->route('home');
        }
        return redirect()->route('login');
    }

    public function logout()
    {
        $token = auth()->user()->token;
        $token = Login_token::find($token->id);
        $token->delete();
        return response()->json([
            'message' => 'logout success'
        ]);
    }
}
