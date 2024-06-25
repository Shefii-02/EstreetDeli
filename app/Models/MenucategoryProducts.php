<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
   

class MenucategoryProducts extends Model
{
     use \Staudenmeir\EloquentHasManyDeep\HasRelationships;
     
    public function product_single() {
      return $this->hasOne('App\Models\Product','master_id','product_id');
    }
    
    
    public function product_images(){
        return $this->hasManyDeepFromRelations($this->product_single(), (new Product())->thumbImages());
    }
    
}