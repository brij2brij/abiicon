<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('comments', function (Blueprint $table) {
            $table->increments('id');
            $table->string('user_id');
            $table->text('comment');
            $table->integer('article_id')->unsigned();
            $table->timestamps();


        });
          Schema::table('comments', function ($table) {
              $table->foreign('article_id')->references('id')->on('articles')->onDelete('cascade');
          });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('comments');
        Schema::dropForeign(['article_id']);
    }
}
