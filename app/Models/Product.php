<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    
    public function category_products() {
      return $this->hasMany('App\Models\CategoryProduct','product_id','id');
    }
    
    public function menucategory_products() {
      return $this->hasMany('App\Models\MenucategoryProducts','product_id','master_id');
    }
    
    public function specializations(){
        return $this->hasMany('App\Models\ProductSpecialization','product_id','id');  
    }
    
    public function product_specializations(){
        return $this->belongsToMany('App\Models\Specialization', 'product_specializations', 'product_id','specialization_id');  
    }
    

    public function product_variation() {
      return $this->hasMany('App\Models\ProductVariation','product_id','id');
    }
    
    public function product_variatiant() {
      return $this->hasOne('App\Models\ProductVariation','product_id','id');
    }
    
     public function thumbImages()
    {
        return $this->hasMany('App\Models\ProductImage','product_id','id')
                    ->where('type','<>','Nutritional Facts')
                    ->orderByRaw("CASE WHEN type = 'Thumbnail' THEN 0 ELSE 1 END, id ASC")
                    ->orderByRaw("CASE WHEN type = 'Main Image' THEN 0 ELSE 1 END, id ASC");
    }


  
     public function images()
    {
        return $this->hasMany('App\Models\ProductImage','product_id','id');
    }
    public function shipping_method()
    {
        return $this->hasMany('App\Models\ProductShipping','product_id','id');
    }
    //   public function option()
    // {
    //     return $this->hasMany('App\Models\Option')->orderBy('id', 'desc');
    // }
    
    
     public function option()
    {
        return $this->hasMany('App\Models\VariationKey','product_id','id')
                    ->orderByRaw("CASE WHEN value = '9 Inch' THEN 0 ELSE 1 END, value ASC")
                    ->orderByRaw("CASE WHEN value = 'Baked' THEN 0 ELSE 1 END, value ASC");
    }
    
    // public function option()
    // {
    //     return $this->hasMany('App\Models\Option')
    //         ->orderByRaw("CASE WHEN value = '9 Inch' THEN 0 ELSE 1 END, value ASC")
    //         ->orderByRaw("CASE WHEN value = 'Baked' THEN 0 ELSE 1 END, value ASC");
    // }
    
     public function product_city()
    {
        return $this->hasMany('App\Models\ProductCity','product_id','id');
    }
    
    public function variationList() {
        return $this->hasMany('App\Models\VariationKey','product_id','id');
    }
    
    
    
    public function ingredients(){
         return $this->hasMany('App\Models\ProductIngredient','product_id','id');
    }
    
    public function condiments(){
         return $this->hasMany('App\Models\ProductCondiment','product_id','id');
    }
    
    
    public function addons(){
         return $this->hasMany('App\Models\AddonProduct','product_id','id');
    }
    
    public function combo(){
        return $this->hasOne(ProductCombo::class);
    }
    
    public function combo_categories(){
        return $this->hasMany(ProductComboCategory::class);
    }
    
    public function combo_products(){
        return $this->hasMany(ComboProduct::class);
    }
    
    public function getIsComboAttribute(){
        return $this->combo_product == '1' && $this->combo && $this->combo_categories()->count() && $this->combo_products()->count();
    }
    
    public function upsell(){
        return $this->hasOne(ProductUpsell::class);
    }
    
    public function upsell_categories(){
        return $this->hasMany(ProductUpsellCategory::class);
    }
    
    public function upsell_products(){
        return $this->hasMany(UpsellProduct::class);
    }
    
    public function getIsUpsellAttribute(){
        return $this->upsell && $this->upsell_categories()->count() && $this->upsell_products()->count();
    }
}
