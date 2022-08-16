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
        \App\Models\User::factory(1000)->create();
        //foreach (range(1,100) as $index) {
            //echo "Batch #$index\n";
            //\App\Models\User::factory(1000)->create();
        //}
    }
}
