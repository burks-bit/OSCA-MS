<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Member;

class MemberController extends Controller
{
    public function getallmembers()
    {
        $members = Member::paginate(10);
        return response()->json($members);
    }
}
