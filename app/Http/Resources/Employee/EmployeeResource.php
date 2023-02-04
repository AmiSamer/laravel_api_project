<?php

namespace App\Http\Resources\Employee;

use Illuminate\Http\Resources\Json\JsonResource;
use Auth;

class EmployeeResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
       
        if(Auth::id() != 1){

            // return response()->json(['message' => 'no permission for unauthorized access']);

            echo "hrnlo";
            
        }else{

             return [

            'id' => $this->id,
            'name' => $this->employee_name,
            'salary' =>  $this->salary
           
        ];

        }




      
    }
}
