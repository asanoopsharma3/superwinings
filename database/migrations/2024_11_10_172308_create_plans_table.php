<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        if (!Schema::hasTable('plans')) {
            Schema::create('plans', function (Blueprint $table) {
                $table->id();
                $table->string('name');
                $table->decimal('price', 8, 2);
                $table->enum('duration', ['daily', 'weekly', 'monthly']);
                $table->integer('question_limit')->default(5); // Default number of questions per subscription period
                $table->timestamps();
            });
        }
        Schema::table('users', function (Blueprint $table) {
            $table->unsignedBigInteger('plan_id')->nullable();
            $table->date('plan_expiration')->nullable();
        });
        
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('plans');
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn(['plan_id', 'plan_expiration']);
        });
    }
};
