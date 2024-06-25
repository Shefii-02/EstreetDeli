<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class ProductCombo extends Model
{
    public $fillable = ['product_id', 'product_variation_id', 'price', 'min_addon', 'max_addon'];
    
    public function product(){
        return $this->belongsTo(Product::class);
    }
    
    public function getNameAttribute($name){
        return $name ? : $this->product->name;
    }
    
    
    public function getPictureAttribute($pic){
        return $pic ? : ($this->product->thumbImages->first()->picture ?? null);
    }
    
    public function getPictureUrlAttribute(){
        return asset('images/products/' . $this->picture);
    }
}