<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DeliverySelection extends Model
{
    use HasFactory;
    
    public $fillable = ['partner_id', 'sent_at'];
}
