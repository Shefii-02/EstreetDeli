<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class ComboProduct extends Model
{
    public function product(){
        return $this->belongsTo(Product::class);
        
    }
    public function combo_product(){
        return $this->belongsTo(Product::class);
    }
    
}