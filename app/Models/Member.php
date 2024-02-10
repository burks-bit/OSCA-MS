<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    use HasFactory;

    protected $fillable = [
        'first_name',
        'middle_name',
        'last_name',
        'suffix',
        'age',
        'gender',
        'address',
        'phone_number',
        'email',
        'date_of_birth',
        'emergency_contact_name',
        'emergency_contact_number',
        'blood_group',
        'marital_status',
        'is_veteran',
        // 'has_medical_condition',
    ];
}
