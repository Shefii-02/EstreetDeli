<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
class AutoAddressController extends Controller
{
    public function index(): View
    {
        return view('googleAutocomplete');
    }
    
}