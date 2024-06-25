<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;
    
    protected $casts = [
        'combo_details' => 'object',
        'upsell_details' => 'object',
    ];

    public function addon_products() {
      return $this->hasMany('App\Models\AddonProduct','product_id','product_id');
    }
    
    public function parentItem()
    {
        return $this->hasMany('App\Models\Item','parent','id');
    }
        
    public function product(){
         return $this->hasOne('App\Models\Product','id','product_id');
    }
     
    public function productShipping(){
        return $this->hasMany('App\Models\ProductShipping','product_id','product_id');
    }
    
    public function product_variation(){
        return $this->hasMany('App\Models\ProductVariation','id','product_variation_id');
        
    }
    
    public function getUpsellDiscountAttribute($discount){
        return $discount ? : $this->product->upsell->discount ?? null;
    }
}
