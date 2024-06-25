<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class ProductUpsell extends Model
{
    public $fillable = ['product_id', 'discount'];
    
    public function product(){
        return $this->belongsTo(Product::class);
    }
}