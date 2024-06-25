@extends('layouts.frontend')
@section('contents')
<style>
    .for_mobile-cart{
        display: none;
    }
</style>
@php
    $totalAmount = 0;
@endphp

    <section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-center" style="height: 350px;">
                    <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5">CART</h1>
                </div>
            </div>
        </div>
    </section>
        
    @if(isset($items) && $items->count() > 0)
    <section class="py-5">
        <div class="container">
            <div class="entry-content">
               <div class="woocommerce">
                   <!--
                     <table class="shop_table shop_table_responsive cart" >
                        <thead>
                           <tr>
                              <th class="product-thumbnail">&nbsp;</th>
                              <th class="product-name">Product</th>
                              <th class="product-price">Price</th>
                              <th class="product-quantity">Quantity</th>
                              <th class="product-subtotal">Total</th>
                           </tr>
                        </thead>
                        <tbody>
                            @foreach($items as $listing)
                                @include('frontend.cart-item')
                            @endforeach
                        </tbody> 
                        <tfoot>
                            <tr >
                                <th colspan="6" class="text-end">
                                     <div class="display-6 fw-bold " id="total-amount">Sub Total : </div>
                                </th>
                            </tr>
                        </tfoot>
                            
                     </table>
                     //-->
                     
                     <div class="text-center d-sm-none"><h4>Items in Cart</h4></div>
                     
                     <div id="responsive-cart" >
                         <div class="d-none d-md-block">
                             <div class="row title-row">
                                <div class="col-md-2 column">
                                    Item
                                </div> 
                                <div class="col-md-5 column">
                                    Details
                                </div> 
                                <div class="col-md-2 column text-center">
                                    Price
                                </div> 
                                <div class="col-md-2 column">
                                    Quantity
                                </div> 
                                <div class="col-md-1 column text-end">
                                    Amount
                                </div> 
                             </div>
                         </div>
                         @foreach($items as $listing)
                                @include('frontend.cart-item')
                        @endforeach
                         {{-- @foreach($items as $listing)
                            <div class="row">
                                <div class="col-md-2 column product_picture">
                                    <img style="width:100%;height:auto;" src="{{asset('images/products/'.$listing->picture)}}" onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';" alt=""/>

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
                                            @if($listing->removed_ingredients != '')
                                            <div class="py-2 d-flex flex-wrap">
                                                    @if($listing->removed_ingredients != '')
                                                        <small>
                                                        
                                                        @foreach(explode(',',$listing->removed_ingredients) ?? [] as $riItm)
                                                            
                                                                
                                                            <i class="bi bi-x-octagon"></i>  No {{$riItm}} &nbsp; | &nbsp; 
                                                            
                                                        @endforeach
                                                        </small>
                                                    @endif
                                                    
                                                    @if($listing->removed_condiments != '')
                                                         <div class="d-flex flex-wrap">
                                                            @foreach(explode(',',$listing->removed_condiments) ?? [] as $rcItm)
                                                                <p class="p-2 m-1 text-center cus_btn text-capitalize">
                                                                 {{$rcItm}}
                                                                </p>
                                                            @endforeach
                                                        </div>
                                                    
                                                    @endif
                                            </div>
                                                
                                            @endif
                                                
                                            
                                            
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
                                                    
                                                    <i class="bi bi-plus-circle"></i> {{$pItems->product_name}} ({{getPrice($addon_price)}}) x {{$pItems->quantity}} 
                                                    
                                                    @if($key < $listing->parentItem->count()-1) &nbsp; | &nbsp; @endif
                                                    
                                                @endforeach
                                            </small>
                                            </p>
                                        @endif
                                        
                                     @if($listing->combo_product)
                                     
                                        <p><small><strong><em>Combo Includes:</em></strong> <br/>
                                        
                                            @foreach($listing->combo_details as $combo)
                                                
                                                    <i class="bi bi-bag-check"></i> {{ $combo->name }} x {{$listing->quantity}} &nbsp; | &nbsp;
                                                
                                            @endforeach
                                            </small>
                                        </p>
                                     @endif
                                     
                                     @if($listing->upsell_product)
                                     
                                        <p><small><strong><em>Combo packs:</em></strong> <br/>
                                            
                                          
                                            @foreach($listing->upsell_details as $upsell)
                                                
                                                   <i class="bi bi-bag-check"></i>  {{ $upsell->name }} x {{$listing->quantity}}  &nbsp; | &nbsp;
                         
                                            @endforeach
                                        </small></p>
                                     @endif
                                     
                                     <div class="cart-action">
                                         <a href="#" ><i class="bi bi-pencil"></i> Edit</a> | 
                                            <a href="#"><i class="bi bi-trash"></i> Remove</a>
                                    </div>
                                    
                                </div> 
                                <div class="col-md-2 column">
                                    <div class="price">
                                            {{getPrice($listing->price_amount)}}
                                    </div>
                                    <input class="item-amount" type="hidden" value="{{$listing->price_amount}}">
                                </div> 
                                <div class="col-md-2 col-8 column">
                                    <div class="input-group mb-3 quantity qty-input">
                                              <span id="basic-addon1" class="input-group-text qty-count qty-count--minus" data-action="minus"
                                                        type="button">-</span>
                                              <input readonly value="{{$listing->quantity}}" inputmode="numeric" class="input-text px-0 product-qty text-center item-quantity w-25 border " data-pname="{{$listing->product_name}}" data-psku="{{$listing->product_sku}}" data-pid="{{$listing->product_variation_id}}" data-id="{{$listing->id}}"   data-price="" type="number" name="product-qty" min="0">
                                              <span class="input-group-text qty-count qty-count--add" data-action="add"
                                                        type="button" id="basic-addon1">+</span>
                                            </div>
                                </div> 
                                <div class="col-md-1 col-4 column text-end">
                                    @php
                                            $itmTtl = $listing->price_amount * $listing->quantity;
                                            $subTtl = (int)$addonSub + (int)$itmTtl;
                                          @endphp
                                         <div class="woocommerce-Price-amount amount"> <span class="Item_total fw-bold">{{getPrice($subTtl)}}</span></div>
                                </div> 
                             </div>
                         @endforeach --}}
                         
                     </div>
                     <div class="col-lg-12 text-end ">
                        <div class="display-6 fw-bold " id="total-amount"></div>
                     </div>
                     
                       
                  </form>
                  
                    <section class="allergies pb-3 pb-md-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-12 col-md-6 mb-3 mb-md-0">
                                    <p>
                                       Allergies? Let us know so we can be super careful! Please note, however, that we cannot substitute any of the ingredients in our sandwiches and pies.
                                    </p>
                                    <textarea class="a-textarea" name="remark" id="remark" form="goto_checkout">{{$basket->remarks}}</textarea>
                                </div>
                                <div class="col-12 col-md-6">
                                    
                                    @php
                                    $basket_date = '';
                                    if($basket->serve_date != ''  && date('Y-m-d',strtotime($basket->serve_date))> date('Y-m-d')){
                                        
                                            $basket_date = $basket->serve_date;
                                        
                                    } 
                                    @endphp
                                    
                                    @if($basket->order_type == 'pickup')
                                        <p class="ir-p mb-1">Please enter pickup details below</p>
                                        <form action="{{url('cart/get_addons')}}" method="POST" id="goto_checkout"  data-callback="addon_complete"  data-classes="goto_checkout" class="row" novalidate>
                                            @csrf() 
                                            
                                            <div class="col-lg-6  mb-2">
                                                 <div class="input-group form-group ">
                                                    <span class="form-control date-input cursor-pointer"  id="date-dropdown-toggle" >{{$basket->serve_date != '' && date('Y-m-d',strtotime($basket->serve_date)) >= date('Y-m-d')  ? date('F d, Y',strtotime($basket->serve_date)) : ''}}</span>
                                                    <input type="hidden" id="date-dropdown-toggle-value" form="goto_checkout" value="{{$basket_date}}"
                                                     name="pickup_date" class="shipping_date_hidden">
                                                    <span class="input-group-text" id="calendar-icon">
                                                        <i class="bi bi-calendar-check-fill"></i>
                                                    </span>
                                                </div>
                                                
                                            </div>
                                            <div class="col-lg-6 mb-2" >
                                                <div class="form-group ">
                                                    
                                                        <select name="pickup_time"  class="form-select"   id="pickup_time" required>
                                                           
                                                        </select>
                                                    <span class="text-danger time_exceeded"></span>
                                                </div>
                                            </div>
                                          
                                           
                                        </form>
                                      


                                        <!---------------------------------------PICKUP---------------------------------------------------------------------------------------->
                                             {!!  ShippingRulePickupBasedCalender($basket->pickup_id,$basket->order_type) !!}
                                        <!------------------------------------------------------------------------------------------------------------------------------------->
                                  
                                    @else
                                        <p class="ir-p">Please enter delivery details below</p>
                                        <form action="{{url('cart/get_addons')}}" id="goto_checkout" method="POST" data-callback="addon_complete" data-classes="goto_checkout" class="row" novalidate>
                                            @csrf()
                                             <div class="form-group col-lg-12 mb-2" >
                                                <label class="text-dark mb-2">Delivery to :   </label>
                                                <label class="fw-semibold p-2">{{$basket->city}}</label>
                                                <span data-bs-toggle="modal" data-bs-target="#DeliveryModalToggle" data-href="" class="order_now cursor-pointer text-theme">   (Change?)</span>
                                            </div>
                                            <div class="col-lg-12  mb-2">
                                                 <div class="input-group form-group ">
                                                    <span class="form-control date-input cursor-pointer"  id="date-dropdown-toggle" >{{$basket->serve_date != ''  && date('Y-m-d',strtotime($basket->serve_date)) > date('Y-m-d') ? date('F d, Y',strtotime($basket->serve_date)) : ''}}</span>
                                                    <input type="hidden" id="date-dropdown-toggle-value" value="{{$basket_date}}" name="pickup_date" form="goto_checkout">
                                                    <span class="input-group-text" id="calendar-icon">
                                                        <i class="bi bi-calendar-check-fill"></i>
                                                    </span>
                                                </div>
                                            </div>
                                        </form>
                                      
                                        <!-------------------------------------LIMITRD DELIEVRY------------------------------------------------------------------------------------------------>
                                          {!! ShippingRuleDeliveryBasedCalender($basket->pickup_id,$basket->order_type) !!}  
                                        <!------------------------------------------------------------------------------------------------------------------------------------->
                                      
                                    @endif
                                    
                                    
                                        
                                        <div class="for-checkout mt-4 d-flex gap-2 ">
                                            <form action="{{url('cart/continue')}}" class="validated, not-ajax" id="cart_continue" method="POST">
                                                @csrf()
                                                <input type="hidden" id="ctn_serve_date" name="serve_date">
                                                <input type="hidden" id="ctn_remark" name="remark" >
                                            </form>
                                            

                                            <input type="submit" form="cart_continue" class="btn tertiary-btn btn-dark text-white secondary-btn w-50 continue_shopping_btn" style="padding: 10px;" value="Continue Shopping">
                                            <input type="submit" form="goto_checkout" class="btn primary-btn tertiary-btn  w-50 checkout_btn" style="padding: 10px;" value="Checkout">
                                        </div>
                                </div>
                  
                                
                            </div>
                        </div>
                    </section>
                  
               </div>
            </div>
        </div>
    </section>
    @else
     <section class="page_section py-5">
        <div class="d-flex justify-content-center align-items-center for-vertical-height">
        <div class="col-md-6">
            <div class=""></div>
            <div class=" bg-white p-5">
                <div class="text-center">
                    <h1 class="ir-h1">    
                        <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-cart-check-fill" viewBox="0 0 16 16">
                          <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm-1.646-7.646-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L8 8.293l2.646-2.647a.5.5 0 0 1 .708.708z"/>
                        </svg>  Your cart is empty !</h1>
                        <p>Please add an item to the cart</p>
                        <a href="{{url('menu')}}" class="btn btn tertiary-btn  ">Continue shopping</a>
                </div>
            </div>
        </div>
    </div>
    </section>
    @endif
    
        <!-- Modal -->
<form class="addtocart bg-white validated no-ajax not-ajax" id="cart_form">
<div class="modal fade right-to-left" id="ProductShow" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen product-modal">
        <div class="modal-content content-body">
            
        </div>
    </div>
</div>
</form>
<div class="modal fade" id="ProductUpsell" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="static">
    <div class="modal-dialog modal-dialog-centered modal-md product-upsell-modal">
        <div class="modal-content content-body">
            
        </div>
    </div>
</div>
@endsection




@section('scripts')
 <script>
   
   function loadProduct(url){ 
       $('#ProductShow').modal('show');
            $('#ProductShow .content-body').html(`<div class="loader-container p-5 text-left" style="hidden">
                                        <div class="animated-background"></div>
                                        <div class="animated-background"  style="width: 80%"></div>
                                        <div class="animated-background"  style="width: 90%"></div>
                                        <div class="animated-background"  style="width: 80%"></div>
                                        <div class="animated-background"  style="width: 90%"></div>
                                        <div class="animated-background"  style="width: 80%"></div>
                                        <div class="animated-background"  style="width: 90%"></div>
                                        <div class="animated-background"  style="width: 80%"></div>
                                        <div class="animated-background"  style="width: 90%"></div>
                                        <div class="animated-background" style="position: relative;width: 30%;left: 30%;"></div>
                                    </div>`);           
             $.ajax({
                    url: url,
                    cache: false,
                    success: function (html) {
                        $('#ProductShow .content-body').html(html);
                       fixComboItems();
                    },
                    error: function (error) {
                        console.log(error)
                    }
                });
        }
        
        
    $('body').on('click','.edit_itm', async function(e) {

     
            e.preventDefault();
            var url =$(this).data('href');
            
            loadProduct(url)
            
        });
   
    /*$('body').on('click', '.edit-cart-btn', function() {
            let data = $('.addtocart').serialize();
            
            $.ajax({
                url: '{{url('cart/edit')}}',
                type: 'GET',
                data: data,
                success: function(response) {
                    $('.modal').modal('hide');
                }
            });
        });*/
   
    $('body').on('click','.qty-count', async function() {
            var operator = this.dataset.action;
            var $this = $(this);
            var $input = $this.siblings(".product-qty");
            var qty = parseInt($input.val());
            var qtyMin = 0;
            var qtyMax = 5000;
            if (operator == "add") {
                qty += 1;
                if (qty >= qtyMin + 1) {
                    $this.siblings(".qty-count--minus").attr("disabled", false);
                }

                if (qty >= qtyMax) {
                    $this.attr("disabled", true);
                }
            } else {
                qty = qty <= qtyMin ? qtyMin : (qty -= 1);

                if (qty == qtyMin) {
                    $this.attr("disabled", true);
                }

                if (qty < qtyMax) {
                    $this.siblings(".qty-count--add").attr("disabled", false);
                }
            }

            $input.val(qty);
            
            $('.product-qty').attr('data-action',operator)
            $input.trigger('change');
    });
    
    
    
    
    
    $(window).on("load", function () {
      $("#loader-overlay").fadeOut("slow");
      subTotalCalculation()
    });

    $('body').on('change','.item-quantity', async function() {
        
        var item            = $(this).closest('.cart-item');
        var quantity        = $(this).val();
        var product_sku     = $(this).data('psku');
        var product_id      = $(this).data('pid');
        var product_price   = $(this).data('price');
        var cart_id         = $(this).data('id');
        var action          = $(this).data('action');
       console.log(cart_id)
        await update_products(product_sku,product_id,product_price,quantity,cart_id,action);
       
            
         if(quantity <= 0){
            item.remove();
              
            if ($('.cart-item').length === 0) {
          
               location.reload();
            }
         }
            
          await subTotalCalculation()
    }); 
    
    
    
    function subTotalCalculation(){
            var totalAmount = 0;
            $('.Item_total').each(function() {
                totalAmount += parseFloat($(this).text().replace('$', ''));
                console.log(parseFloat($(this).text().replace('$', '')))
            });
        $('#total-amount').text('Total: $' + totalAmount.toFixed(2));
    }
    
    
    $('body').on('click','.item_remove', async function() {
    
        var item            = $(this).closest('.cart-item');
        var quantity        = $(this).val();
        var product_sku     = $(this).data('psku');
        var product_id      = $(this).data('pid');
        var product_price   = $(this).data('price');
        var cart_id         = $(this).data('id');
        var preorder        = $(this).data('preorder');
        item.remove();
        
        await update_products(product_sku,product_id,product_price,0,cart_id,'remove');
   
        await subTotalCalculation()
        
        if ($('.cart-item').length === 0 || preorder == 1) {
            location.reload();
        }
        
    });

    $('body').on('submit','#goto_checkout', function(e) {
         e.preventDefault();
        
        var pickup_location  = $('#pickup_location').val();
        var pickup_date      = $('#date-dropdown-toggle-value').val();
        var pickup_time      = $('#pickup_time').val();
        var remark           = $('#remark').val();
       
            $.ajax({
                url: '/cart/get_addons', 
                method: 'GET',
                data:{pickup_location : pickup_location,pickup_date : pickup_date,pickup_time : pickup_time,remark : remark},
                success: function(response) {
                        window.location="/checkout";
                },
                error: function(xhr, status, error) {
                       alertJsFunction(status, 'error');
                }
            });
    });


    const body = $('body');
   async function update_products(product_sku,product_id,product_price,quantity,cart_id,action) {

        body.append(`<div class="product-loading"><i class="bi bi-arrow-clockwise"></i></div>`);
        await $.ajax({
            url: '/cart/productadd', 
            method: 'GET', 
            dataType: 'json',
            data: {'product_sku': product_sku,'product_id': product_id,'quantity': quantity,'price'   : product_price,'cart_id' : cart_id,'action' : action},
            success: function(response) {
                var htmlTr = $(response.cart_html);
                
                $('.cart-item-'+response.cart_item).html(htmlTr.html());
                $('.cart-icon .cart-count').html(response.cart_count);
                
                let headerCart = $(response.header_cart);
                $('.site-header-cart.menu').html(headerCart.html())
                body.find('.product-loading').remove();
                
                  
                var addToCartData = response.addToCartData;
                console.log(addToCartData);
                
                if(quantity > 0){
                    gtag("event", "add_to_cart", addToCartData);
                }
                else{
                    gtag("event", "remove_from_cart", addToCartData);
                }
                
            },
            error: function(xhr, status, error) {
                alertJsFunction(status, 'error');
            }
        });
        return true;
    }
    function addon_complete($form, response){
               
        $form.addClass($form.attr('data-classes'));
        $form.submit();
    }
</script>

  @include('frontend.scripts')
  
<script>
  $(document).on('click', '.addon-item', function(e){
            if($(this).is(':checked')){
                $(this).addClass('added');
            }
            setPrice();
        });
        $(document).on('click', '.addon-item.added', function(e){
            e.preventDefault();
        });
        $(document).on('click', '.delete-addon', function(){
            let option  = $(this).closest('.option-container');
            option.find('.addon-item').removeAttr('checked').removeClass('added');
            option.find('.addon-qty').val(1);
            option.find('.addon-quantity').text(1);
            option.removeClass('has-more-addon');
            setPrice();
        });
        $(document).on('click', '.less-addon', function(){
            let option  = $(this).closest('.option-container');
            let count = parseInt(option.find('.addon-qty').val());
            count = count-1;
            option.find('.addon-qty').val(count);
            option.find('.addon-quantity').text(count);
            if(count < 2){
                option.removeClass('has-more-addon');
            }
            setPrice();
        });
        $(document).on('click', '.more-addon', function(){
            let option  = $(this).closest('.option-container');
            let count = parseInt(option.find('.addon-qty').val());
            count = count+1;
            option.find('.addon-qty').val(count);
            option.find('.addon-quantity').text(count);
            if(count > 1){
                option.addClass('has-more-addon');
            }
            setPrice();
        });
        $(document).on('click', '.m-less-addon', function(){
            let option  = $('.single_variation_wrap');
            let count = parseInt(option.find('input.input-text.qty.text').val());
            if(count < 2){
                $(this).addClass('text-muted');
                return false;
            }
            count = count-1;
            option.find('input.input-text.qty.text').val(count);
            $('.m-addon-quantity').text(count);
            setPrice();
        });
        $(document).on('click', '.m-more-addon', function(){
            let option  = $('.single_variation_wrap');
            console.log(option);
            let count = parseInt(option.find('input.input-text.qty.text').val());
            count = count+1;
            option.find('input.input-text.qty.text').val(count);
            $('.m-addon-quantity').text(count);
            $('.m-less-addon').removeClass('text-muted');
            setPrice();
        });
        async function setPrice(){
            let mcount = parseInt($('input.input-text.qty.text').val());
            let productPrice =  parseFloat($('.edit-cart-btn').data('price'));

            let addonPrices = 0;
            await $('.addon-item.added').each(function(){
                let count = parseInt($(this).parent().find('.addon-qty').val());
                let price = parseFloat($(this).data('price'));
                let amount = count * price
                addonPrices = addonPrices + amount;
            });
            let amount = (productPrice+addonPrices) * mcount;
            $('.number-font').text('$'+amount);
        }
</script>
<script>
$(document).ready(function() {
checkScrollPosition();
$(window).scroll(function() {
  checkScrollPosition();
});

function checkScrollPosition() {
  if ($(this).scrollTop() > 300) {
    $('.toTop').fadeIn();
  } else {
    $('.toTop').fadeOut();
  }
}
});

</script>
<script>
$(document).on('click', '.combo-check', function(){
    fixComboItems();
});

function fixComboItems(){
    if($(".combo-check:checked").length >= parseInt($('.categories').data('max'))){
        $('.combo-check[type="checkbox"]:not(:checked)').attr('disabled', true).addClass('not-allowed');
    }else{
        $('.combo-check[type="checkbox"]').attr('disabled', false).removeClass('not-allowed');
    }
    
    $('.combo-category').each(function(){
        if($(this).find(".combo-check:checked").length >= parseInt($(this).data('max'))){
            $(this).find('.combo-check[type="checkbox"]:not(:checked)').attr('disabled', true).addClass('not-allowed');
        }else{
            $(this).find('.combo-check[type="checkbox"]:not(.not-allowed)').attr('disabled', false).removeClass('not-allowed');
        }
    });
    $(this).closest('.combo-category').find('.err').remove();
    fixCheckedComboItems();
}


async function fixCheckedComboItems(){
    $('.selection').show();
    await $('.combo-category').each(function(){
        let $p = $(this).parent();
        
        let selected = $p.find(".combo-check:checked").length;
        console.log(selected);
        $p.find('.selected').text(selected);
        $p.find('.selection').removeClass('text-theme');
        if(selected && selected >= parseInt($(this).data('min'))){
            $p.find('.selection').addClass('text-theme');
        }
    })
    if($(".combo-check:checked").length >= parseInt($('.categories').data('max'))){
        $('.combo-category').each(function(){
            if(!$(this).find(".combo-check:checked").length && !parseInt($(this).data('min')))
            $(this).parent().find('.selection').hide()
        });
    }
    
    await $('.combo-category').each(async function(){
        let $p = $(this).parent();
        let selected = "Select items";
        if($(this).find('.combo-check:checked').length == 1){
            
            let $html = $(this).find('.combo-check:checked+.combo-item .combocontent');
                
            selected = $html.prop('outerHTML');
            
        }
        else if($(this).find('.combo-check:checked').length){
            selected = await $(this).find('.combo-check:checked').map(function() {
                return $(this).data('name');
            }).get().join(', ');
            
            
        }
        $(this).find('.dropdown-toggle').html(selected);
        
    })
    
}

$(document).on('submit', '#cart_form', async function(e){
    e.preventDefault();
    let $this = $(this);
    
    let $id = $('.edit-cart-btn').data('pid');
    
    $('.err').remove();
    let error = false;
    if($(".combo-check:checked").length > parseInt($('.categories').data('max'))){
        $('.categories').append(`<p class="err text-danger small">You can only select max ${$('.categories').data('max')} items for <strong>combo</strong></p>`)
        error = true;
    }else if($(".combo-check:checked").length < parseInt($('.categories').data('min'))){
        $('.categories').append(`<p class="err text-danger small">Please select min ${$('.categories').data('min')} items for <strong>combo</strong></p>`);
        error = true;
    }
    
    await $('.combo-category').each(function(){
        if($(this).find(".combo-check:checked").length > parseInt($(this).data('max'))){
            $(this).append(`<p class="err text-danger small">You can only select max ${$(this).data('max')} items in <strong>${$(this).data('category')}</strong></p>`)
            error = true;
        }else if($(this).find(".combo-check:checked").length < parseInt($(this).data('min'))){
            $(this).append(`<p class="err text-danger small">Please select min ${$(this).data('min')} items in <strong>${$(this).data('category')}</strong></p>`)
            error = true;
        }
    });
    
    if(!error){
        let data = $(this).serialize();
        $.ajax({
            url: '{{url('cart/edit')}}',
            type: 'GET',
            data: data,
            cache: false,
            success: function (response) {
                $('.modal').modal('hide');
                
                $('.product-qty[data-id="'+$id+'"]').val($('input.input-text.qty.text').val()).trigger('change');
            },
            
        });
    }else{
        $('.modal-body').scrollTop($('.modal-body')[0].scrollHeight);
    }
    
})
    @if(isset($hasNonUpsellItems) && $hasNonUpsellItems && !session('success'))
    $.ajax({
        url: '{{url('cart/upsell')}}',
        type: 'GET',
        cache: false,
        success: function (response) {
            $('.product-upsell-modal .content-body').html(response);
            $('#ProductUpsell').modal('show');
            setUpsellPrices();
        },
            
    });
    @endif
    $(document).on('click', '.upsell-check', async function(){
        await $('input[name="' + this.name + '"]').not(this).prop('checked', false);
        setUpsellPrices(); 
    });
    
    async function setUpsellPrices(){
        await $('.upsell-category').each(function(){
            if($(this).find('.upsell-check:checked').length){
                //$(this).find('.dropdown-toggle').text($(this).find('.upsell-check:checked').data('name'))
                let $html = $(this).find('.upsell-check:checked+.upsell-item .upsellcontent');
                
                $(this).find('.dropdown-toggle').html($html.prop('outerHTML'));
                
            }else{
                $(this).find('.dropdown-toggle').text($(this).find('.dropdown-toggle').data('default'))
            }
        });
        
        $('.up-item').each(async function(){
           let $price  = parseFloat($(this).find('.effective-price').data('default'));
           let $discount = parseFloat($(this).find('.effective-price').data('discount'));
           $(this).find('.basePrice').text('$'+formatNumber($price));
           
           if($(this).find('.upsell-check:checked').length){
               let $addonPrices = 0;
               await $(this).find('.upsell-check:checked').each(function(){
                   $addonPrices = $addonPrices+parseFloat($(this).data('price'));
               });
               let $total = ($price+$addonPrices);
               let $discountAmt = ($total)*($discount/100);
               
               let $final = $total-$discountAmt;
               $(this).find('.effective-price').html('<del class="text-danger small">$'+$total+'</del> '+'$'+formatNumber($final))
               let $priceNew = $price-($price*($discount/100))
               $(this).find('.basePrice').html(`<del class="text-danger small">$${formatNumber($price)}</del> $${formatNumber($priceNew)}`);
               
           }else{
               $(this).find('.effective-price').text('$'+formatNumber($price))
           }
        });
    }
    
    function formatNumber(number, locale = 'en-US', options = {}) {
        const defaultOptions = { style: 'decimal' };
        options = Object.assign(defaultOptions, options);
        const roundedNumber = Number(number).toFixed(2);
        return roundedNumber.toLocaleString(locale, options);
    }
    $(document).on('click', '.change_itm', function(e){
        e.preventDefault();
        $.ajax({
        url: $(this).data('href'),
        type: 'GET',
        cache: false,
        success: function (response) {
            $('.product-upsell-modal .content-body').html(response);
            $('#ProductUpsell').modal('show');
            setUpsellPrices();
        },
            
    });
    });

</script>
@endsection

@section('styles')
<style>

#responsive-cart {
margin: 15px 0;
padding: 0px 25px; 
}

#responsive-cart .row {
margin-bottom: 15px;
border-bottom: 1px solid #EEE;
border: 1px solid #EEE;
border-radius: 15px;
box-shadow: #EEE 0px 0px 5px 2px;
padding: 15px;
}

#responsive-cart .row .column {
display:flex;
flex-direction:column;
justify-content:center;

}

#responsive-cart .row.title-row {
background: #EEE;
padding: 5px 15px;
box-shadow: none;
}

#responsive-cart .row.title-row .column {
padding: 10px;
}

#responsive-cart p {
margin: 5px 0p !important;
}
.product_image img {
img {
    width: 50px;
    height:auto;
}
}

.cart-action {
font-size: 90%;
white-space:nowrap;
display:flex;
flex-direction:row;
margin: 10px 0;
justify-content:center;
}
.cart-action a {
margin: 0px 7px;
}

.product_name {
text-align:center;
}

.product_price {
text-align:center; 
}

.product-quantity, .product-subtotal {
padding: 5px;
background: #EEE;
}

@media (min-width: 768px) { 

.product_name {
    text-align:left;
}

.cart-action { 
    justify-content: start;
}

.product-quantity, .product-subtotal {
    padding: 5px;
    background: transparent;
}

#responsive-cart {
    padding: 0px;  
}

.product_image img {
    img {
        max-width:100%;
        width: 100%;
        height:auto;
    }
}


}

</style>
@endsection