<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $USER_NUMBER=1000;

        echo "Start seeding $USER_NUMBER users...\n";
        \App\Models\User::factory($USER_NUMBER)->create();

        //foreach (range(1,100) as $index) {
            //echo "Batch #$index\n";
            //\App\Models\User::factory(1000)->create();
        //}
    }
}
