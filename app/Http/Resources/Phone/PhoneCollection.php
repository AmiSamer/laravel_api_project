<?php

namespace App\Http\Resources\Phone;

use Illuminate\Http\Resources\Json\JsonResource;

class PhoneCollection extends JsonResource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [

            'id' => $this->id,
            'model' => $this->model_name,
            'brand' =>  $this->brand,
            'price (BDT)' => $this->price,
            'details' => route('phones.show',$this->id)

        ];
    }
}
