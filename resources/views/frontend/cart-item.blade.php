<div class="row cart-item-{{$listing->id}} shadow-sm">
    <div class="col-md-2 column product_image">
        <img  src="{{asset('images/products/'.$listing->picture)}}" onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';" alt=""/>

    </div> 
    <div class="col-md-5 column product_name">
        <a href="#" class="fw-semibold d-block">
             <big>{{$listing->product_name}} @if($listing->combo_product)(Combo)@endif</big></a>
             @if($listing->variation)
                <p>
                   <span class="woocommerce-Price-amount amount">
                   {{$listing->variation}}</span>
                </p>
             @endif
                <div class="d-flex flex-wrap">
                        @if($listing->removed_ingredients != '')
                            <small>
                            
                            @foreach(explode(',',$listing->removed_ingredients) ?? [] as $riItm)
                                
                                    
                                <i class="bi bi-x-octagon"></i>  No {{$riItm}}
                                @if (!$loop->last) | @endif
                                
                            @endforeach
                            </small>
                        @endif
                        @if($listing->removed_condiments != '')
                            
                             <div class="d-flex flex-wrap">
                                 <small>
                                @foreach(explode(',',$listing->removed_condiments) ?? [] as $rcItm)
                                    <i class="bi bi-check-circle"></i> {{$rcItm}}
                                    @if (!$loop->last) | @endif
                                @endforeach
                                </small>
                            </div>
                        
                        @endif
                </div>
                    
                
                
            @php
                $addonSub = 0;
            @endphp
             @if($listing->parentItem->count() > 0)
                <p>
                <small>
                
                    @foreach($listing->parentItem as $key=>$pItems)
                        @php
                            $addon_price = $pItems->price_amount * $pItems->quantity; 
                            $addonSub += $addon_price;
                        @endphp
                        
                        <i class="bi bi-plus-circle"></i> {{$pItems->product_name}} ({{getPrice($pItems->price_amount)}}) x {{$pItems->quantity}} 
                        @if (!$loop->last) | @endif
                        
                    @endforeach
                </small>
                </p>
            @endif
            
         @if($listing->combo_product)
         
            <p><small><strong><em>Combo Includes:</em></strong> <br/>
            
                @foreach($listing->combo_details as $combo)
                    
                        <i class="bi bi-bag-check"></i> {{ $combo->name }} x {{$listing->quantity}}
                        @if (!$loop->last) | @endif
                    
                @endforeach
                </small>
            </p>
         @endif
         
         @if($listing->upsell_product)
         
            <p><small><strong><em>Combo packs: <span class="text-theme">{{ $listing->upsell_discount }}%OFF</span></em></strong> <a href="#" class="change_itm"   data-href="{{ url('cart/upsell/?item='.$listing->id) }}"><i class="bi bi-pencil"></i> Change items</a> <br/>
                
              
                @foreach($listing->upsell_details as $upsell)
                    
                       <i class="bi bi-bag-check"></i>  {{ $upsell->name }} x {{$listing->quantity}}
                       @if (!$loop->last) | @endif

                @endforeach
            </small></p>
         @endif
         
         <div class="cart-action">
             <a href="#" class="edit_itm"   data-href="{{route('product-edit',$listing->id)}}"><i class="bi bi-pencil"></i> Edit</a> | 
                <a href="#" class="item_remove" data-preorder="" data-pname="{{$listing->product_name}}" data-psku="{{$listing->product_sku}}" data-pid="{{$listing->product_variation_id}}" data-id="{{$listing->id}}"  data-price="{{$listing->price_amount}}" ><i class="bi bi-trash"></i> Remove</a>
        </div>
        
    </div> 
    <div class="col-md-2 column product_price">
        <div class="price product-price" data-title="Price">
                <input class="item-amount" type="hidden" value="{{$listing->price_amount}}">
                {{getPrice($listing->price_amount)}}
        </div>
        <input class="item-amount" type="hidden" value="{{$listing->price_amount}}">
    </div> 
    <div class="col-md-2 col-8 column product-quantity " data-title="Quantity">
        <div class="input-group quantity qty-input">
          <span id="basic-addon1" class="input-group-text qty-count qty-count--minus" data-action="minus"
                    type="button">-</span>
          <input readonly value="{{$listing->quantity}}" inputmode="numeric" class="input-text px-0 product-qty text-center item-quantity w-25 border " data-pname="{{$listing->product_name}}" data-psku="{{$listing->product_sku}}" data-pid="{{$listing->product_variation_id}}" data-id="{{$listing->id}}"   data-price="" type="number" name="product-qty" min="0">
          <span class="input-group-text qty-count qty-count--add" data-action="add"
                    type="button" id="basic-addon1">+</span>
        </div>
    </div> 
    <div class="col-md-1 col-4 column text-end product-subtotal"  data-title="Total">
        @php
            $itmTtl = $listing->price_amount * $listing->quantity;
            $subTtl = (float)$addonSub + (float)$itmTtl;
          @endphp
        <div class="woocommerce-Price-amount amount"> <span class="Item_total fw-bold">{{getPrice($subTtl)}}</span></div>
    </div> 
 </div>
























                        