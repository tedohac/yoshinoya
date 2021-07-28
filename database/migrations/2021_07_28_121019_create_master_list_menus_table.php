<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMasterListMenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('master_list_menus', function (Blueprint $table) {
            $table->bigIncrements('id_menu');
            $table->string('menu_name', 50);
            $table->string('url_link', 100);
            $table->timestamps();
            $table->string('created_by', 50);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('master_list_menus');
    }
}
