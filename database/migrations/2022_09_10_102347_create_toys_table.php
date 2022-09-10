<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateToysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('toys', function (Blueprint $table) {
            $table->integer('toy_id', true);
            $table->char('toy_name', 50)->nullable();
            $table->tinyInteger('status');
            $table->char('exchange_to', 50)->nullable();
            $table->integer('user_id')->index('FKtoys121080');
            $table->timestamps();

            $table->unique(['toy_id'], 'toy_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('toys');
    }
}
