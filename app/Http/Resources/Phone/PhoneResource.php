<?php

namespace App\Http\Resources\Phone;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Color;
use App\Model\Storage;
use App\Model\Phone;

class PhoneResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
       
        $color_id = $this->color_id;
        $color = Color::select('color_name')->where('id',$color_id)->first();
        $color_name = $color['color_name'];


        $storage_id = $this->storage_id;
        $storage = Storage::select('storage_capacity')->where('id',$storage_id)->first();
        $storage_capacity = $storage['storage_capacity'];


         return [

            'id' => $this->id,
            'model' => $this->model_name,
            'specification' => $this->description,
            'price (BDT)' => $this->price,
            'brand' =>  $this->brand,
            'color family' => $color_name,
            'storage' => $storage_capacity,
            'color filter' => route('colors.show',$color_id),
            'storage filter' => route('storage.show',$storage_id)

        ];


    }
}
