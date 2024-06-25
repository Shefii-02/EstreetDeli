<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class ProductUpsellCategory extends Model
{
    
    public function upsell_products(){
        return $this->hasMany(UpsellProduct::class, 'category_id', 'category_id');
    }
    
    public function category(){
        return $this->belongsTo(Category::class);
    }
}