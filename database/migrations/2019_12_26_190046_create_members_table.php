<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('members', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('address');
            $table->text('status');
            $table->date('connected_date');
            $table->date('disconnected_date');
            $table->text('administration');
            $table->text('tect_concern_name');
            $table->text('contact_no');
            $table->text('email');
            $table->text('capacity');
            $table->text('ip_info');
            $table->text('ip_bdix');
            $table->text('switch_port');
            $table->text('remarks');
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
        Schema::dropIfExists('members');
    }
}
