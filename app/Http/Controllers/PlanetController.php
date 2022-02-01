<?php

namespace App\Http\Controllers;

use App\Models\Planet;

class PlanetController
{

    public function index()
    {
        return view('planets', [
            'planets' => Planet::with('SolarSystem')->get()->toArray()
        ]);
    }

    public function specific($planet)
    {
        return view('planets', [
            'planets' => Planet::with('SolarSystem')->get()->where('name', $planet)->toArray()
        ]);
    }

}