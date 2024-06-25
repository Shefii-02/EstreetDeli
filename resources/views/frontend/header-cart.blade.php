<ul class="site-header-cart menu"> 
                   @php
                    $totalAmount = $totalAmount ?? 0
                   @endphp
                             @if($basketCart != false && $basketCart->items->count() > 0)
                      <li class="mini-cart">
                         <div class="mini-cart-toggle">
                               
                            
                                <div class="widget woocommerce widget_shopping_cart">
                                   <div class="widget_shopping_cart_content">
                                       <div class="parent_bttom_cart">
                                          <ul class="cart_list product_list_widget ">
                                            @foreach($basketCart->items as $listCartItems)
                            <li class="mini_cart_item ">
                                <div class="d-flex align-items-center text-start gap-2">
                                    <img  width="80" 
                                    src="{{ asset('images/products/' . $listCartItems->picture) }}" 
                                    onerror="this.onerror=null; this.src='{{ asset('/assets/images/dummy-product.png') }}';" 
                                    class="attachment-shop_thumbnail" >
                                    <div>
                                        <p class="fw-bold text-left mb-0 ">{{$listCartItems->product_name}}</p>
                                        <span class="quantity">{{getPrice($listCartItems->price_amount)}} x {{$listCartItems->quantity}} = <span class="woocommerce-Price-amount amount">{{getPrice($listCartItems->price_amount * $listCartItems->quantity)}}</span></span>
                                   </div>
                                </div>
                                <div class="text-start">
                                    
                                    {{$listCartItems->variation}}
                                       <div class="d-flex flex-wrap">
                                    @if($listCartItems->removed_ingredients != '')
                                        <small>
                                        @foreach(explode(',',$listCartItems->removed_ingredients) ?? [] as $riItm)
                                            <i class="bi bi-x-octagon"></i>  No {{$riItm}} @if (!$loop->last) | @endif
                                        @endforeach
                                        </small>
                                    @endif
                                    @if($listCartItems->removed_condiments != '')
                                    <div class="d-flex flex-wrap">
                                        <small>
                                        @foreach(explode(',',$listCartItems->removed_condiments) ?? [] as $rcItm)
                                            <i class="bi bi-check-circle"></i> {{$rcItm}} @if (!$loop->last) | @endif
                                        @endforeach
                                        </small>
                                        </div>
                                    @endif
                                    </div>
                                    @php
                                        $addonSub = 0;
                                    @endphp
                                    @if($listCartItems->parentItem->count() > 0)
                                        <div class="col-lg-12 d-flex flex-wrap">
                                            <small>
                                            @foreach($listCartItems->parentItem as $pItems)
                                                @php
                                                    $addon_price = $pItems->price_amount * $pItems->quantity; 
                                                    $addonSub += $addon_price;
                                                @endphp
                                                    <i class="bi bi-plus-circle"></i> {{$pItems->product_name}} x {{$pItems->quantity}} : {{getPrice($addon_price)}} @if (!$loop->last) | @endif
                                                
                                            @endforeach
                                            </small>
                                        </div>
                                    @endif
                                        
                                     @if($listCartItems->combo_product)
                                        <div class="col-lg-12">
                                            <small class="fw-semibold small">Combo Includes</small><br>
                                            <div class="d-flex flex-wrap">
                                                <small>
                                            @foreach($listCartItems->combo_details as $combo)
                                                <i class="bi bi-bag-check"></i>    {{ $combo->name }}  x {{$listCartItems->quantity}} @if (!$loop->last) | @endif
                                            @endforeach
                                            </small>
                                            </div>
                                        </div>
                                     @endif
                                     
                                     @if($listCartItems->upsell_product)
                                                    <small><strong><em>Combo packs: <span class="text-theme">{{ $listCartItems->upsell_discount  }}%OFF </span></em></strong></small>
                                                <div class="col-lg-12 d-flex flex-wrap">
                                                    <small>
                                                    @foreach($listCartItems->upsell_details as $upsell)
                                                        
                                                       <i class="bi bi-bag-check"></i>     {{ $upsell->name }} x {{$listCartItems->quantity}} @if (!$loop->last) | @endif
                                                        
                                                    @endforeach
                                                    </small>
                                                </div>
                                             @endif
                                    </div>
                                    <div class="cart-action text-start">
                                         
                                            <a href="#" class="item_remove fw-normal m-0" data-preorder="" data-pname="{{$listCartItems->product_name}}" data-psku="{{$listCartItems->product_sku}}" data-pid="{{$listCartItems->product_variation_id}}" data-id="{{$listCartItems->id}}"  data-price="{{$listCartItems->price_amount}}" ><i class="bi bi-trash"></i> Remove</a>
                                    </div>        
                                </li>
                                    @php
                                            $itmTtl = $listCartItems->price_amount * $listCartItems->quantity;
                                            $subTtl = (float)$addonSub + (float)$itmTtl;
                                            $totalAmount += $subTtl;
                                    @endphp
                            @endforeach
                        </ul>
                              <div class="cart-bottom">
                                  <p class="total"><strong>Subtotal:</strong> 
                                  <span class="woocommerce-Price-amount amount">{{getPrice($totalAmount)}}</span></p>
                                  <p class="buttons">
                                     <a href="{{url('cart')}}" class="button wc-forward bg-dark text-light mb-2">View Cart</a>
                                  </p>
                              </div>
                                      
                                       </div>
                                      <!-- end product list -->
                                      
                                   </div>
                                </div>
                                <!--//icon with count-->
                                <a class="cart-contents" href="#" title="View your shopping cart">
                                    @if($basketCart != false)
                                       <span class="amount">
                                            <span class="price-label">Your Cart:</span>
                                             {{getPrice($totalAmount)}}
                                        </span>
                                        <span class="count">{{$basketCart->items->count()}}</span>
                                    @endif
                                </a>
                        </div>
                      </li>
                            @endif
                   </ul>