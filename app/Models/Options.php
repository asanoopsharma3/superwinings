<?php

namespace App\Models;
use App\Models\Question;

use Illuminate\Database\Eloquent\Model;


class Options extends Model
{
    //
    protected $table = 'options';

    protected $fillable = ['question_id', 'option_text', 'is_correct'];

    public function question()
    {
        return $this->belongsTo(Question::class);
    }
}
