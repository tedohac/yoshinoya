<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMasterUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('master_users', function (Blueprint $table) {
            $table->bigIncrements('id_user');
            $table->string('username_email', 50);
            $table->bigInteger('role_id')->unsigned()->index();
            $table->string('user_password', 200);
            $table->string('active', 1);
            $table->string('block', 1);
            $table->timestamps();
            $table->string('created_by', 50);
            $table->foreign('role_id')->references('role_id')->on('master_roles');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('master_users');
    }
}
