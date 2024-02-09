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
        Log::info($role);
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

    // Get user role
    // public function getUserRole()
    // {   
    //     Log::info('==========================');
    //     // Log::info(auth()->user()->role);
    //     Log::info('==========================');
    //     return response()->json(['role' => 0]);
    // }
    public function getUserRole()
    {
        // Get the authenticated user
        $user = auth()->user();

        // Check if the user is authenticated
        if ($user) {
            // Retrieve the role from the users table
            $role = $user->role; // Assuming 'role' is the column name for the role in the users table
            
            // Return the role in JSON format
            return response()->json(['role' => $role]);
        } else {
            // User is not authenticated, return an error or default role
            return response()->json(['error' => 'User not authenticated']);
        }
    }

    // User logout
    public function logout(Request $request)
    {
        $request->user()->tokens()->delete();
        return response()->json(['message' => 'Logged out successfully']);
    }
}