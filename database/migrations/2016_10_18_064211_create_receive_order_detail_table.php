<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReceiveOrderDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('receive_order_details', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('order_no');
            $table->integer('receive_id');
            $table->string('item_code', 30);
            $table->string('description',100);
            $table->integer('tax_type_id');
            $table->double('unit_price')->default(0);
            $table->double('quantity')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('receive_order_details');
    }
}
