<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReceiveOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('receive_orders', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('order_no');
            $table->integer('person_id');
            $table->integer('supplier_id');
            $table->string('reference', 30);
            $table->string('location');
            $table->date('receive_date');
            $table->timestamps('created_at');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('receive_orders');
    }
}
