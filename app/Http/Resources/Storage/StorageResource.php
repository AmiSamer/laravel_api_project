<?php

namespace App\Http\Resources\Storage;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Phone;
use App\Model\Storage;


class StorageResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $storage_id = $this->id;
        $storage_capacity = Storage::where('id',$storage_id)->first();
        $storage = $storage_capacity['storage_capacity'];
        $phone = Phone::select('model_name','brand','price')->where('storage_id',$storage_id)->get();  
        return [

            'storage' =>$storage,
            'data' => $phone

        ];
    }
}
