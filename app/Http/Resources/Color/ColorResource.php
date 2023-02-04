<?php

namespace App\Http\Resources\Color;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Phone;
use App\Model\Color;

class ColorResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        
    
        $color_id = $this->id;
        $color_name = Color::where('id',$color_id)->first();
        $color = $color_name['color_name'];
        $phone = Phone::select('model_name','brand','price')->where('color_id',$color_id)->get();  
        return [

            'color_family' =>$color,
            'data' => $phone

        ];
    






        
    }
}
