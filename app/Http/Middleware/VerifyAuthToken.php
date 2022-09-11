<?php

namespace App\Http\Middleware;

use Closure;
use App\Login_token;

class VerifyAuthToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $token = $request->token;
        $getToken = Login_token::where('token', $token)->first();
        if($token == null || $getToken == null)
        {   
            return response()->json([
                'message' => 'unauthorized user'
            ], 401);
        }
        auth()->login($getToken->user);
        return $next($request);
    }
}
