                                        <tr class="cart_item cart-item cart-item-{{$listing->id}} border-0 border-bottom">
                                         
                                          <td class="product-thumbnail text-center">
                                             <a href="#">
                                             <img width="180" height="180" src="{{asset('images/products/'.$listing->picture)}}" onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';" alt=""/>
                                             </a>
                                             <div class="product-remove">
                                                    <span class="btn btn-sm bi bi-pencil-fill cus_btn edit_itm my-2" role="button"  data-href="{{route('product-edit',$listing->id)}}"> Edit</span>
                                                    
                                                    <span class="btn btn-sm text-center remove item_remove cus_btn" data-preorder="" data-pname="{{$listing->product_name}}" data-psku="{{$listing->product_sku}}" data-pid="{{$listing->product_variation_id}}" data-id="{{$listing->id}}"  data-price="{{$listing->price_amount}}"  role="button">
                                                     <i class="bi bi-trash"></i> Remove
                                                    </span>
                                             </div>
                                          </td>
                                          <td class="product-name" data-title="Product">
                                             <a href="#" class="fw-semibold d-block">
                                                 {{$listing->product_name}} @if($listing->combo_product)(Combo)@endif</a>
                                                 @if($listing->variation)
                                                    <p>
                                                       <span class="woocommerce-Price-amount amount">
                                                       {{$listing->variation}}</span>
                                                    </p>
                                                @endif
                                                    @if($listing->removed_ingredients != '')
                                                    <div class="py-2 d-flex flex-wrap">
                                                    
                                                        @foreach(explode(',',$listing->removed_ingredients) ?? [] as $riItm)
                                                            
                                                                <p class="p-2 m-1 text-center cus_btn text-capitalize" >
                                                             {{$riItm}}
                                                            </p>
                                                        @endforeach
                                                    @endif
                                                         @if($listing->removed_condiments != '')
                                                            @foreach(explode(',',$listing->removed_condiments) ?? [] as $rcItm)
                                                                <p class="p-2 m-1 text-center cus_btn text-capitalize">
                                                                 {{$rcItm}}
                                                                </p>
                                                            @endforeach
                                                        
                                                    </div> 
                                                    @endif
                                                @php
                                                    $addonSub = 0;
                                                @endphp
                                                 @if($listing->parentItem->count() > 0)
                                                        <small class="fw-semibold small mt-2 mb-2"></small>
                                                    <div class="col-lg-12 d-flex flex-wrap">
                                                        @foreach($listing->parentItem as $pItems)
                                                            @php
                                                                $addon_price = $pItems->price_amount * $pItems->quantity; 
                                                                $addonSub += $addon_price;
                                                            @endphp
                                                            <p class="cus_btn me-1 p-2 position-relative ps-4 small mb-2 text-overflow" data-price="{{$addon_price}}">
                                                                <i class="bi bi-plus-circle fs-5 fs-6 fw-bold m-0 p-0 position-absolute star-0 start-0 text-theme top-50" style="
                                                                        transform: translate(32%, -50%);
                                                                    "></i> {{$pItems->product_name}} x {{$pItems->quantity}} : {{getPrice($addon_price)}}
                                                            </p>
                                                            
                                                        @endforeach
                                                    </div>
                                                 @endif
                                                
                                             @if($listing->combo_product)
                                                    <small class="fw-semibold small mt-2 mb-2 d-flex">Combo Includes</small>
                                                <div class="col-lg-12 mt-1 d-flex flex-wrap">
                                                    @foreach($listing->combo_details as $combo)
                                                        <p class="small cus_btn p-2 me-1 text-overflow mb-2">
                                                            {{ $combo->name }} x {{$listing->quantity}}
                                                        </p>
                                                    @endforeach
                                                </div>
                                             @endif
                                             
                                             <div class="product-remove d-block d-md-none d-flex mt-3">
                                                    <span class="btn btn-sm bi bi-pencil-fill cus_btn edit_itm me-1" role="button"  data-href="{{route('product-edit',$listing->id)}}"> Edit</span>
                                                    
                                                    <span class="btn btn-sm text-center remove item_remove cus_btn" data-preorder="" data-pname="{{$listing->product_name}}" data-psku="{{$listing->product_sku}}" data-pid="{{$listing->product_variation_id}}" data-id="{{$listing->id}}"  data-price="{{$listing->price_amount}}"  role="button">
                                                     <i class="bi bi-trash"></i> Remove
                                                    </span>
                                             </div>
                                           
                                          </td>
                                          <td class="product-price" data-title="Price">
                                              <div class="price">
                                                {{getPrice($listing->price_amount)}}
                                            </div>
                                            <input class="item-amount" type="hidden" value="{{$listing->price_amount}}">
                                            
                                          </td>
                                          <td class="product-quantity" data-title="Quantity">
                                                <div class="input-group mb-3 quantity qty-input">
                                                  <span id="basic-addon1" class="input-group-text qty-count qty-count--minus" data-action="minus"
                                                            type="button">-</span>
                                                  <input readonly value="{{$listing->quantity}}" inputmode="numeric" class="input-text product-qty text-center item-quantity w-25 border " data-pname="{{$listing->product_name}}" data-psku="{{$listing->product_sku}}" data-pid="{{$listing->product_variation_id}}" data-id="{{$listing->id}}"   data-price="" type="number" name="product-qty" min="0">
                                                  <span class="input-group-text qty-count qty-count--add" data-action="add"
                                                            type="button" id="basic-addon1">+</span>
                                                </div>
                                          </td>
                                          <td class="product-subtotal" data-title="Total">
                                              @php
                                                $itmTtl = $listing->price_amount * $listing->quantity;
                                                $subTtl = (int)$addonSub + (int)$itmTtl;
                                              @endphp
                                             <div class="woocommerce-Price-amount amount"> <span class="Item_total">{{getPrice($subTtl)}}</span></div>
                                          </td>
                                       </tr>