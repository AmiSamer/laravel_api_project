<?php

namespace App\Http\Controllers;

use App\Model\Phone;
use Illuminate\Http\Request;
use App\Http\Resources\Phone\PhoneCollection;
use App\Http\Resources\Phone\PhoneResource;
use App\Model\Color;
use DB;

class PhoneController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       return PhoneCollection::collection(Phone::all());
    }

  
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Phone  $phone
     * @return \Illuminate\Http\Response
     */
    public function show(Phone $phone)
    {


        return new PhoneResource($phone);
    }

   

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Phone  $phone
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Phone $phone)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Phone  $phone
     * @return \Illuminate\Http\Response
     */
    public function destroy(Phone $phone)
    {
        //
    }
}
