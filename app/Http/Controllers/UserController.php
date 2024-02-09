<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class UserController extends Controller
{
    public function allusers()
    {
        // $users = User::all();
        $users = User::paginate(10);
        return response()->json($users);
    }

    public function getUserDetails(Request $request, $id)
    {
        $result = User::find($id);
        return response()->json($result);
    }
}
