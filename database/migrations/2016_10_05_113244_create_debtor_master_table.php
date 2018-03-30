<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDebtorMasterTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('debtors_master', function (Blueprint $table) {
            $table->increments('debtor_no');
            $table->string('name', 50);
            $table->string('email', 50);
            $table->string('password', 30);
            $table->text('address');
            $table->string('phone', 15);
            $table->integer('sales_type');
            $table->string('remember_token');
            $table->tinyInteger('inactive')->default(0);
            $table->string('vat_no', 100);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('debtors_master');
    }
}
