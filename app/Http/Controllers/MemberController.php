<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Models\Member;


class MemberController extends Controller
{
    public function getallmembers()
    {
        // $members = Member::paginate(10);
        $members = Member::paginate(5);
        return response()->json($members);
    }

    public function getDetails(){

        
        // my sample iteration of array
        for($i = 1; $i <= 5; $i++) {
            $randomAge = rand(60,100);
            $sampleUsers[$i] = array(
                'id' => rand(1,1000),
                'name' => 'sample sample sample',
                'age' => $randomAge,
                'gender' => 'Male'
            ); 
        }

        // Log::info($sampleUsers);
        
        return response()->json([
            'sampleUsers' => $sampleUsers
        ]);
    }
}
