<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMasterRoleMenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('master_role_menus', function (Blueprint $table) {
            $table->bigIncrements('id_role_menu');
            $table->bigInteger('menu_id')->unsigned()->index();
            $table->bigInteger('role_id')->unsigned()->index();
            $table->timestamps();
            $table->string('created_by', 50);
            $table->foreign('menu_id')->references('id_menu')->on('master_list_menus');
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
        Schema::dropIfExists('master_role_menus');
    }
}
