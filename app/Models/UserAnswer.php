<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserAnswer extends Model
{
    //
    protected $table = 'user_answers';
    protected $fillable = ['user_id', 'question_id', 'option_id'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
