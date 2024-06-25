<?php
namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\CategoryProduct;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\ProductVariation;
use App\Models\ProductShipping;
use App\Models\VariationKey;
use App\Models\Option;
use App\Models\Basket;
use App\Models\Item;
use App\Models\City;
use App\Models\MenuCategory;
use App\Models\MenucategoryProducts;
use App\Models\SuggestedProduct;
use App\Models\DeliveryPartner;
use Illuminate\Support\Facades\DB;
use App\Models\Province;
use App\Models\Tax;
use App\Models\TaxValue;



use App\Models\Specialization;
use URL;

class ProductController extends Controller
{
    //all category menu loading
        public function menu2(Request $request,$slug = NULL){
            $categories = MenuCategory::with('product_list.product_single', 'product_list.product_images')
                            ->orderBy('display_order')
                            ->where('status', 1)
                            ->get();
                    
      
            return view('frontend.menu-old',compact('categories'));
        }
        
        
           public function menu(Request $request,$slug = NULL){
               
                $session_string = session('session_string');
                $basket = Basket::where('session',$session_string)->where('status',0)->first();
                $deliveryPatners = DeliveryPartner::where('status',1)->get();
                $categories = MenuCategory::with('product_list.product_single', 'product_list.product_images')
                            ->orderBy('display_order')
                            ->where('status', 1)
                            ->get();
                    
            return view('frontend.menu',compact('categories','basket','deliveryPatners'));
        }
        
        
        // public function productSingle2(Request $request,$slug = NULL){
        
        //     $product = Product::with('product_variation','product_variation.variationkey','variationList','thumbImages','ingredients','condiments','addons','addons.addon_products')->where('slug',$slug)->first() ?? abort(404);
            
            
        //     return view('frontend.product-single',compact('product'))->render();
        // }
        
        
        
        public function productSingle(Request $request,$slug = NULL){
        
            $product = Product::with('product_variation','product_variation.variationkey','variationList','thumbImages','ingredients','condiments','addons','addons.addon_products')->where('slug',$slug)->first() ?? abort(404);
            
            $categories = $product->combo_categories()->whereHas('combo_products', function($q) use($product){
                return $q->whereProductId($product->id);
            })->with(['combo_products' => function($q) use($product){
                return $q->whereProductId($product->id);
            }])->get();
            
             $session_string = session('session_string');
            $basket = Basket::where('session',$session_string)->where('status',0)->first();
            
            $items_val = [];
            foreach ($product->product_variation as $key => $item) {
                $items_val[] =  [
                    "item_id" => $item->sku,
                    "item_name" => $product->name,
                    "affiliation" =>  $basket ? $basket->city ?? "EStreetDeli" : 'EStreetDeli',
                    "index" => $key,
                    "item_brand" => "Sweetiepie",
                    "item_category" => "Products",
                    "item_variant" => $item->variation_name,
                    "location_id" => "Toronto",
                    "price" => $item->price,
                    "quantity" => 1 
                ];
            }
      
            $ViewData = [
                            "currency" => "CAD",
                            "value" => $product->product_variation->pluck('price')->first(),
                            "items" =>  $items_val
                        ];
            
            $response['data']     = view('frontend.product-single2',compact('product', 'categories'))->render();
            $response['ViewData'] = $ViewData;
            
            // return view('frontend.product-single2',compact('product', 'categories'))->render();
            return $response;
        }
        
        
        public function productSingleEdit(Request $request,$slug = NULL){
            
            $session_string =session('session_string');
        
            $basket = Basket::where('session',$session_string)->where('status',0)->first();
            
            $product = Item::with('product','parentItem')->where('id',$slug)->where('basket_id',$basket->id)->first() ?? abort(404);
            
            $productdetails = Product::with('product_variation','product_variation.variationkey','variationList','thumbImages','ingredients','condiments','addons','addons.addon_products')->where('id',$product->product_id)->first();
            
            $categories = $productdetails->combo_categories()->whereHas('combo_products', function($q) use($productdetails){
                return $q->whereProductId($productdetails->id);
            })->with(['combo_products' => function($q) use($productdetails){
                return $q->whereProductId($productdetails->id);
            }])->get();
        
            return view('frontend.product-edit',compact('product','productdetails', 'categories'))->render();
        }
        
        public function cartProductEdit(Request $request){
   
            $response = array();
            $response['result'] = 0;
            $response['cart_count'] = 0;
        
        if (session()->has('session_string')) {
            $session_string =session('session_string');
        }
        else
        {
            abort(404);
        }
            
                
        $basket = Basket::where('session',$session_string)->where('status',0)->first() ?? abort(404);
        
        
            $items = Item::with('product','parentItem')->where('id',$request->pdct_id)->where('basket_id',$basket->id)->first() ?? abort(404);
   
                    
                
                $pdct_vari          = ProductVariation::with('products')->where('id',$items->product_variation_id)->first();
                //$tax_id = $pdct_vari->products[0]->tax_id ?? '';
                
            
                /*if($tax_id == NULL || $tax_id == ''){
                    $taxvalue = 0;
                }
                else
                {
                    $province = Province::where('code','ON')->pluck('master_id')->first();
                    $tax = Tax::whereMasterId($tax_id)->first() ?? '0';
                  
                    if($tax){
                        $taxvalue = TaxValue::where('tax_id',$tax->id)->where('province_id',$province)->pluck('tax_percentage')->first() ?? '0';   
                    }
                    if(!$tax){
                        $taxvalue = 0;
                    }
                }*/
                if($pdct_vari){
                        $product = Product::find($pdct_vari->product_id);
                    	$items->basket_id           =   $basket->id;
                    	//$items->tax_percentage      =   $taxvalue;
                    	//$items->product_variation_id=   $pdct_vari->id;
                    	//$items->product_id          =   $pdct_vari->product_id;
                    	//$items->product_sku         =   $pdct_vari->sku;
                    	//$items->product_name        =   $pdct_vari->products[0]->name;
                    	//$items->variation           =   $pdct_vari->variation_name;
                    	//$items->price_amount        =   $pdct_vari->price;	
                    	//$items->picture	            =   product_thumbImage($pdct_vari->product_id) ?? '';
                	    $items->quantity	        =   $request->quantity;
                	    $items->note                =   $request->instructions ?? '';
                        $items->removed_ingredients =   $request->has('removed_ingredients') ? implode(',',$request->removed_ingredients) : '';
                        $items->removed_condiments  =   $request->has('removed_condiments') ?  implode(',',$request->removed_condiments) : '';
                        
                        if($product->is_combo){
                            $products = Product::whereIn('id', $request->combo_products ?? [])->select('master_id as id', 'name')->get();
                            $items->combo_details = $products->toArray();
                        }
                    
                	try{
                	       if($request->quantity >= 1){
                    	        $items->save();
                    	         Item::where('parent',$items->id)->delete();
                                    foreach($request->addon_items ?? [] as $keyVal => $addonItms){
                                        $pdct_vari2          = ProductVariation::with('products')->where('id',$addonItms)->first();
                                        $tax_id = $pdct_vari->products[0]->tax_id ?? '';
                                        
                                    
                                        if($tax_id == NULL || $tax_id == ''){
                                            $taxvalue = 0;
                                        }
                                        else
                                        {
                                            $province = Province::where('code','ON')->pluck('master_id')->first();
                                            $tax = Tax::whereMasterId($tax_id)->first() ?? '0';
                                          
                                            if($tax){
                                                $taxvalue = TaxValue::where('tax_id',$tax->id)->where('province_id',$province)->pluck('tax_percentage')->first() ?? '0';   
                                            }
                                            if(!$tax){
                                                $taxvalue = 0;
                                            }
                                        }
                                        
                                        if($pdct_vari){
                                            $itemsAddon                      =   new Item();
                                        	$itemsAddon->basket_id           =   $basket->id;
                                        	$itemsAddon->tax_percentage      =   $taxvalue;
                                        	$itemsAddon->product_variation_id=   $pdct_vari2->id;
                                        	$itemsAddon->product_id          =   $pdct_vari2->product_id;
                                        	$itemsAddon->product_sku         =   $pdct_vari2->sku;
                                        	$itemsAddon->product_name        =   $pdct_vari2->products[0]->name;
                                        	$itemsAddon->variation           =   $pdct_vari2->variation_name;
                                        	$itemsAddon->price_amount        =   $pdct_vari2->price;	
                                        	$itemsAddon->picture	         =   product_thumbImage($pdct_vari2->product_id) ?? '';
                                    	    $itemsAddon->quantity	         =   $request->quantity * $request->addon_quantity[$addonItms];
                                    	    $itemsAddon->actual_qty          =   $request->addon_quantity[$addonItms];
                                    	    $itemsAddon->parent              =   $items->id;
                                    	    $itemsAddon->save();
                                        }
                                    }
                        
                        
                            }
                            else
                            {
                                Item::where('parent',$items->id)->delete();
                                $items->delete();
                            }
                        
                       
                        
                
                        $itemsCounts = Item::where('basket_id',$basket->id)->whereNull('parent')->count();
                      
                            
                        $response['result'] = 1;
                	}
                	catch(Exceprion $e){
                        $response['cart_count'] = Item::where('basket_id',$basket->id)->whereNull('parent')->count();
                	}
                }
                else
                {
                    $response['cart_count']     = Item::where('basket_id',$basket->id)->whereNull('parent')->count();
                }
                return  response()->json($response);
          
        }
        
        
    
        
        public function nutrition_product_single($slug,Request $request){
            
            $products = Product::with('product_variation','product_variation.variationkey','variationList')->where('slug',$slug)->first() ?? abort(404);
                	
            return $request->ajax() ? response()->json([
                'success' => true,
                'html' => view('frontend.single-product-nutrition-contents',compact('products'))->render(),
            ]) : view('frontend.single-product-nutrition',compact('products'));
        }
        
        
        public function check_available_city(Request $request){
            $city = $request->city;
            $city_details = City::where('name',$city)->where('status',1)->first();
            
            // $availableCities = ['Scarborough', 'Toronto', 'Etobicoke', 'North York', 'East York', 'Mississauga', 'Vaughan', 'Woodbridge'];
            
            // if (in_array($city, $availableCities)) {
            if($city_details){
                return 1;
            }else{
                return 0;
            }
            
        }
        
        public function showDetails($id) {
            $product = Product::with(['images','product_variation'=>function($q){
                    $q->orderBy('id','ASC');
                },'product_variation.variation_images'=>function($q){
                    $q->with('images_list');
                }])->where('slug',$id)->first();
                
            // dd($product->variation_images);
            
            $options = [];
            
            $variationkeys = VariationKey::with(['product_variation'])->where('product_id',$product->id)->orderBy('type','ASC')->orderBy('id','ASC')->get();

            foreach($variationkeys as $index=>$row) {
                if(!isset([$row->type][$row->value])) {
                    foreach($row->product_variation as $pv) {
                        $options[$row->type][$row->value][] = $pv->id;
                    }
                }
            }
            
            $vari_images= ProductVariation::leftJoin('variation_images','variation_images.variation_id','product_variations.id')
                                            ->leftJoin('product_images','product_images.id','variation_images.picture_id')
                                            ->where('product_variations.product_id',$product->id)
                                            ->select('product_images.type','variation_images.variation_id','variation_images.id','product_images.picture')
                                            ->get();
        
            
            $variation_images =  $vari_images->groupBy('variation_id');
                  
            // return view('frontend.product-detail',compact('options','product','variation_images'));
            return view('frontend.sample-product',compact('options','product','variation_images'));
        }
        
         
        
}
