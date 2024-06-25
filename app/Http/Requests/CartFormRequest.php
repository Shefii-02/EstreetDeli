<?php

namespace App\Http\Requests;
use Illuminate\Foundation\Http\FormRequest;
use App\Models\Basket;

class CartFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        $session_string = session('session_string');
        $basket = Basket::where('session',$session_string)->where('status',0)->first();
        $rules = ['pickup_date' => 'bail|required'];
        
        if($basket){
            if($basket->order_type =='pickup'){
                $rules += [ 'pickup_time'  => 'bail|required' ];
            }
        }
        
        return $rules;
    }

    public function messages()
    {
        return [
            'pickup_date.required'   => 'The Pickup Date  is required.',
            'pickup_time.required'    => 'The Pickup Time  is required.'
        ];
    }
    
}
