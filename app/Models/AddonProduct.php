<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AddonProduct extends Model
{
    use HasFactory;
    
     public function addon_products(){
         return $this->hasOne('App\Models\Product','master_id','veriation_id');
    }
}
