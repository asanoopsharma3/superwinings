<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Options;

class Question extends Model
{
    //
    protected $table = 'questions';
    
    protected $fillable = ['question_text'];

    public function options()
    {
        return $this->hasMany(Options::class);
    }
}
