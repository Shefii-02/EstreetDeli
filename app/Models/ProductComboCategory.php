<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class ProductComboCategory extends Model
{
    
    public function combo_products(){
        return $this->hasMany(ComboProduct::class, 'category_id', 'category_id');
    }
    
    public function category(){
        return $this->belongsTo(Category::class);
    }
}