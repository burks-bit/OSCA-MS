<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    // login
    public function login(Request $request) {
        $request->validate([
            'username' => 'required',
            'password' => 'required|string',
        ]);

        if (!Auth::attempt($request->only('username', 'password'))) {
            return response()->json([
                'status' => '401',
                'message' => 'Wrong Username or Password!',
            ]);
        }
        $user = User::where('username', $request->username)->firstOrFail();
        $role = $user->role;
        $token = $user->createToken('authToken')->plainTextToken;

        return response()->json([
            'role' => $role,
            'token' => $token
        ], 200);
    }

    // Get user details
    public function user(Request $request)
    {
        return $request->user();
    }

    // User logout
    public function logout(Request $request)
    {
        $request->user()->tokens()->delete();
        return response()->json(['message' => 'Logged out successfully']);
    }
}