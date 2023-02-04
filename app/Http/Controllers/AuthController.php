<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


class AuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login']]);
    }

    public function login() {
        $credentials = request()->validate(['email' => 'required|email', 'password' => 'required|string|max:25']);

        if (! $token = auth()->attempt($credentials)) {
            return $this->respondUnAuthorizedRequest(ApiCode::INVALID_CREDENTIALS);
        }

        return $this->respondWithToken($token);
    }

    private function respondWithToken($token) {
        // return $this->respond([
        //     'token' => $token,
        //     'access_type' => 'bearer',
        //     'expires_in' => auth()->factory()->getTTL() * 60
        // ], "Login Successful");

        return response()->json([
        'access_token' => $token,
        'token_type' => 'bearer',
        //'expires_in' => auth()->factory()->getTTL() * 60
        'expires_in' => auth('api')->factory()->getTTL() * 60
    ]);
    }


    public function logout() {
        auth()->logout();
        return response()->json(['message' => 'user is logged out successfully']);
    }


    public function refresh() {
        return $this->respondWithToken(auth()->refresh());
    }

    // public function me() {
    //     return $this->respond(auth()->user());
    // }

    public function profile(){

        return response()->json(auth()->user());
    }
}
