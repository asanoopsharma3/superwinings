<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Plan extends Model
{
    protected $fillable = ['name', 'price', 'duration', 'question_limit'];

    public function users()
    {
        return $this->hasMany(User::class);
    }
}
