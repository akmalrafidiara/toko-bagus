<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $guarded = [];

    public function rating()
    {
        return $this->hasOne(Reting::class);
    }

    public function review() {
        return $this->hasOne(Review::class);
    }
}
