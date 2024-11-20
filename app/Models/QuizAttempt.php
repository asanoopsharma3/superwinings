<?php

namespace App\Models;
use App\Models\User;

use Illuminate\Database\Eloquent\Model;

class QuizAttempt extends Model
{
    //
    protected $table = 'quiz_attempts';
    protected $fillable = ['user_id', 'correct_answers'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
