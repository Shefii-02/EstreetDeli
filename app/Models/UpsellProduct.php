<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class UpsellProduct extends Model
{
    public function product(){
        return $this->belongsTo(Product::class);
        
    }
    public function upsell_product(){
        return $this->belongsTo(Product::class);
    }
    
}