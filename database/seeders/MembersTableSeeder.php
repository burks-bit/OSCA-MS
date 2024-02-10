<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Member;

class MembersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Create 30 sample data for members
        for ($i = 1; $i <= 30; $i++) {
            Member::create([
                'first_name' => 'Sample ' . $i,
                'middle_name' => 'Only ' . $i,
                'last_name' => 'Senior Citizen ' . $i,
                'suffix' => 'G. ' . $i,
                'age' => rand(60, 90),
                'gender' => rand(0, 1) ? 'Male' : 'Female',
                'address' => 'Address ' . $i,
                'phone_number' => '123-456-789' . $i,
                'email' => 'senior' . $i . '@example.com',
                'date_of_birth' => date('Y-m-d', strtotime('-' . rand(60, 90) . ' years')),
                'emergency_contact_name' => 'Emergency Contact ' . $i,
                'emergency_contact_number' => '987-654-321' . $i,
                'blood_group' => ['A+', 'B+', 'O+', 'AB+'][rand(0, 3)],
                'marital_status' => ['Single', 'Married', 'Widowed'][rand(0, 2)],
                'is_veteran' => (bool)rand(0, 1),
                // 'has_medical_condition' => (bool)rand(0, 1),
            ]);
        }
    }
}
