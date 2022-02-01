<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\SolarSystem;

class Planet extends Model
{
    protected $table = 'planets';

    public function solarSystem()
    {
        return $this->belongsTo('App\Models\SolarSystem');
    }
}
