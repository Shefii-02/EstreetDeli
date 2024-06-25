@extends('layouts.frontend')
@section('contents')
<style>
    .breadcrumb-item+.breadcrumb-item::before {
        color:#fff;   
    }
</style>
   <section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">
    
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-center flex-column" style="height: 350px;">
                    <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5 mb-0">{{$product->name}}</h1>
                    <nav class="align-self-center" style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item "><a  class="text-light" href="{{url('/')}}">Home</a></li>
                            <li class="breadcrumb-item "><a  class="text-light" href="{{url('menu')}}">Menu</a></li>
                            <li class="breadcrumb-item text-light active" aria-current="page">{{$product->name}}</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    
    <section class="py-5">
       <!-- /.woocommerce-breadcrumb -->
       <div id="primary" class="content-area container">
             <div class="product type-product status-publish has-post-thumbnail product_cat-pizza pa_food-type-veg first instock shipping-taxable purchasable product-type-variable has-children">
                <div class="single-product-wrapper">
                    <div class="row">
                        <div class="col-md-6">
                            @php
                                $pImages = $product->thumbImages;
                                $pImage = '';
                            @endphp
                            @if($pImage  = $pImages->where('type','Main Image')->pluck('picture')->first())
                            @elseif($pImage  = $pImages->where('type','Thumbnail')->pluck('picture')->first()) 
                            @endif 
                            <div class="product-images-wrapper">
                                <div class="images">
                                    <a href="#" itemprop="image" class="woocommerce-main-image zoom" title="" data-rel="prettyPhoto[product-gallery]">
                                        <img width="600" height="600" src="{{ $pImage != '' ? asset('images/products/' .$pImage) : '/assets/images/dummy-product.jpg'}}" onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';"  class="attachment-shop_single size-shop_single wp-post-image" alt=""/>
                                    </a>
                                </div>
                                <!-- AddToAny END -->
                                <div class="thumbnails d-flex gap-3 pt-2">
                                    @foreach($product->thumbImages as $imgs)
                                        <a href="#" class="zoom first" title="" data-rel="prettyPhoto[product-gallery]">
                                            <img width="180" height="180" src="{{asset('images/products/' .$imgs->picture)}}" class="attachment-shop_thumbnail size-shop_thumbnail" alt=""/>
                                        </a>
                                    @endforeach
                                </div>
                           </div>
                        </div>
                        @php
                            $pdct_details = $product->product_variation->where('product_id',$product->id)->first();
                        @endphp
                        
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-lg-10">
                                     <!-- /.product-images-wrapper -->
                                   <div class="summary entry-summary">
                                        <h1 itemprop="name" class="product_title entry-title">
                                          {{$product->name}}
                                        </h1>
                                      <div itemprop="offers">
                                         <p class="price">
                                            <span class="woocommerce-Price-amount amount display-5 text-success fw-bold">
                                                {{getPrice($pdct_details->price)}}
                                            </span>
                                         </p>
                                      </div>
                                      <div itemprop="description">
                                         <p>{!!$product->description!!}</p>
                                      </div>
                                      <!-- AddToAny BEGIN -->
                                  	<div class="social-share-btn a2a_kit a2a_kit_size_32 a2a_default_style">
                                  		<a class="a2a_dd" href="https://www.addtoany.com/share"></a>
                                  		<a class="a2a_button_facebook"></a>
                                  		<a class="a2a_button_twitter"></a>
                                  		<a class="a2a_button_google_plus"></a>
                                  		<a class="a2a_button_pinterest"></a>
                                  	</div>
                                  	<div class="single_variation_wrap">
                                         <div class="woocommerce-variation single_variation"></div>
                                               <label>Quantity</label>
                                         <div class="woocommerce-variation-add-to-cart variations_button d-flex gap-3 flex-column">
                                            <div class="qty-btn mb-2">
                                               <div class="quantity">
                                                  <input type="number" name="quantity" inputmode="numeric" min="1" value="1" title="Qty" class="input-text qty text" size="4"/>
                                               </div>
                                            </div>

                                           <button type="submit" data-price="{{$pdct_details->price}}" data-pid="{{$pdct_details->id}}" class="add-cart-btn primary-btn w-75">Add to cart</button>

                                         </div>
                                      </div>
                                   </div>
                                   <!-- .summary -->
                                </div>
                                <!--<div class="col-lg-6">-->
                                   <!-- /.single-product-wrapper -->
                                    <!--<div class="product-form-wrapper">-->
                                       <!--<div class="delivery-time">Delivery: <span>35 minutes</span></div>-->
                                        <!--<form class="variations_form cart"  enctype='multipart/form-data' data-product_id="116" data-product_variations="[{&quot;variation_id&quot;:117,&quot;variation_is_visible&quot;:true,&quot;variation_is_active&quot;:true,&quot;is_purchasable&quot;:true,&quot;display_price&quot;:41.9,&quot;display_regular_price&quot;:41.9,&quot;attributes&quot;:{&quot;attribute_select-crust&quot;:&quot;Double Crust&quot;,&quot;attribute_select-size&quot;:&quot;Small - 22cm&quot;},&quot;image_src&quot;:&quot;&quot;,&quot;image_link&quot;:&quot;&quot;,&quot;image_title&quot;:&quot;&quot;,&quot;image_alt&quot;:&quot;&quot;,&quot;image_caption&quot;:&quot;&quot;,&quot;image_srcset&quot;:&quot;&quot;,&quot;image_sizes&quot;:&quot;&quot;,&quot;price_html&quot;:&quot;&lt;span class=\&quot;price\&quot;&gt;&lt;span class=\&quot;woocommerce-Price-amount amount\&quot;&gt;&lt;span class=\&quot;woocommerce-Price-currencySymbol\&quot;&gt;&amp;#36;&lt;\/span&gt;41.90&lt;\/span&gt;&lt;\/span&gt;&quot;,&quot;availability_html&quot;:&quot;&quot;,&quot;sku&quot;:&quot;&quot;,&quot;weight&quot;:&quot; kg&quot;,&quot;dimensions&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;max_qty&quot;:null,&quot;backorders_allowed&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_downloadable&quot;:false,&quot;is_virtual&quot;:false,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;variation_description&quot;:&quot;&quot;},{&quot;variation_id&quot;:118,&quot;variation_is_visible&quot;:true,&quot;variation_is_active&quot;:true,&quot;is_purchasable&quot;:true,&quot;display_price&quot;:39.8,&quot;display_regular_price&quot;:39.8,&quot;attributes&quot;:{&quot;attribute_select-crust&quot;:&quot;Thin Crust without sause&quot;,&quot;attribute_select-size&quot;:&quot;Small - 22cm&quot;},&quot;image_src&quot;:&quot;&quot;,&quot;image_link&quot;:&quot;&quot;,&quot;image_title&quot;:&quot;&quot;,&quot;image_alt&quot;:&quot;&quot;,&quot;image_caption&quot;:&quot;&quot;,&quot;image_srcset&quot;:&quot;&quot;,&quot;image_sizes&quot;:&quot;&quot;,&quot;price_html&quot;:&quot;&lt;span class=\&quot;price\&quot;&gt;&lt;span class=\&quot;woocommerce-Price-amount amount\&quot;&gt;&lt;span class=\&quot;woocommerce-Price-currencySymbol\&quot;&gt;&amp;#36;&lt;\/span&gt;39.80&lt;\/span&gt;&lt;\/span&gt;&quot;,&quot;availability_html&quot;:&quot;&quot;,&quot;sku&quot;:&quot;&quot;,&quot;weight&quot;:&quot; kg&quot;,&quot;dimensions&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;max_qty&quot;:null,&quot;backorders_allowed&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_downloadable&quot;:false,&quot;is_virtual&quot;:false,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;variation_description&quot;:&quot;&quot;},{&quot;variation_id&quot;:119,&quot;variation_is_visible&quot;:true,&quot;variation_is_active&quot;:true,&quot;is_purchasable&quot;:true,&quot;display_price&quot;:40.9,&quot;display_regular_price&quot;:40.9,&quot;attributes&quot;:{&quot;attribute_select-crust&quot;:&quot;Thick Crust&quot;,&quot;attribute_select-size&quot;:&quot;Small - 22cm&quot;},&quot;image_src&quot;:&quot;&quot;,&quot;image_link&quot;:&quot;&quot;,&quot;image_title&quot;:&quot;&quot;,&quot;image_alt&quot;:&quot;&quot;,&quot;image_caption&quot;:&quot;&quot;,&quot;image_srcset&quot;:&quot;&quot;,&quot;image_sizes&quot;:&quot;&quot;,&quot;price_html&quot;:&quot;&lt;span class=\&quot;price\&quot;&gt;&lt;span class=\&quot;woocommerce-Price-amount amount\&quot;&gt;&lt;span class=\&quot;woocommerce-Price-currencySymbol\&quot;&gt;&amp;#36;&lt;\/span&gt;40.90&lt;\/span&gt;&lt;\/span&gt;&quot;,&quot;availability_html&quot;:&quot;&quot;,&quot;sku&quot;:&quot;&quot;,&quot;weight&quot;:&quot; kg&quot;,&quot;dimensions&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;max_qty&quot;:null,&quot;backorders_allowed&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_downloadable&quot;:false,&quot;is_virtual&quot;:false,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;variation_description&quot;:&quot;&quot;},{&quot;variation_id&quot;:120,&quot;variation_is_visible&quot;:true,&quot;variation_is_active&quot;:true,&quot;is_purchasable&quot;:true,&quot;display_price&quot;:39.8,&quot;display_regular_price&quot;:39.8,&quot;attributes&quot;:{&quot;attribute_select-crust&quot;:&quot;Original Crust&quot;,&quot;attribute_select-size&quot;:&quot;Small - 22cm&quot;},&quot;image_src&quot;:&quot;&quot;,&quot;image_link&quot;:&quot;&quot;,&quot;image_title&quot;:&quot;&quot;,&quot;image_alt&quot;:&quot;&quot;,&quot;image_caption&quot;:&quot;&quot;,&quot;image_srcset&quot;:&quot;&quot;,&quot;image_sizes&quot;:&quot;&quot;,&quot;price_html&quot;:&quot;&lt;span class=\&quot;price\&quot;&gt;&lt;span class=\&quot;woocommerce-Price-amount amount\&quot;&gt;&lt;span class=\&quot;woocommerce-Price-currencySymbol\&quot;&gt;&amp;#36;&lt;\/span&gt;39.80&lt;\/span&gt;&lt;\/span&gt;&quot;,&quot;availability_html&quot;:&quot;&quot;,&quot;sku&quot;:&quot;&quot;,&quot;weight&quot;:&quot; kg&quot;,&quot;dimensions&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;max_qty&quot;:null,&quot;backorders_allowed&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_downloadable&quot;:false,&quot;is_virtual&quot;:false,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;variation_description&quot;:&quot;&quot;},{&quot;variation_id&quot;:121,&quot;variation_is_visible&quot;:true,&quot;variation_is_active&quot;:true,&quot;is_purchasable&quot;:true,&quot;display_price&quot;:49.9,&quot;display_regular_price&quot;:49.9,&quot;attributes&quot;:{&quot;attribute_select-crust&quot;:&quot;&quot;,&quot;attribute_select-size&quot;:&quot;Medium - 29cm&quot;},&quot;image_src&quot;:&quot;&quot;,&quot;image_link&quot;:&quot;&quot;,&quot;image_title&quot;:&quot;&quot;,&quot;image_alt&quot;:&quot;&quot;,&quot;image_caption&quot;:&quot;&quot;,&quot;image_srcset&quot;:&quot;&quot;,&quot;image_sizes&quot;:&quot;&quot;,&quot;price_html&quot;:&quot;&lt;span class=\&quot;price\&quot;&gt;&lt;span class=\&quot;woocommerce-Price-amount amount\&quot;&gt;&lt;span class=\&quot;woocommerce-Price-currencySymbol\&quot;&gt;&amp;#36;&lt;\/span&gt;49.90&lt;\/span&gt;&lt;\/span&gt;&quot;,&quot;availability_html&quot;:&quot;&quot;,&quot;sku&quot;:&quot;&quot;,&quot;weight&quot;:&quot; kg&quot;,&quot;dimensions&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;max_qty&quot;:null,&quot;backorders_allowed&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_downloadable&quot;:false,&quot;is_virtual&quot;:false,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;variation_description&quot;:&quot;&quot;},{&quot;variation_id&quot;:122,&quot;variation_is_visible&quot;:true,&quot;variation_is_active&quot;:true,&quot;is_purchasable&quot;:true,&quot;display_price&quot;:59.9,&quot;display_regular_price&quot;:59.9,&quot;attributes&quot;:{&quot;attribute_select-crust&quot;:&quot;&quot;,&quot;attribute_select-size&quot;:&quot;Large - 35cm&quot;},&quot;image_src&quot;:&quot;&quot;,&quot;image_link&quot;:&quot;&quot;,&quot;image_title&quot;:&quot;&quot;,&quot;image_alt&quot;:&quot;&quot;,&quot;image_caption&quot;:&quot;&quot;,&quot;image_srcset&quot;:&quot;&quot;,&quot;image_sizes&quot;:&quot;&quot;,&quot;price_html&quot;:&quot;&lt;span class=\&quot;price\&quot;&gt;&lt;span class=\&quot;woocommerce-Price-amount amount\&quot;&gt;&lt;span class=\&quot;woocommerce-Price-currencySymbol\&quot;&gt;&amp;#36;&lt;\/span&gt;59.90&lt;\/span&gt;&lt;\/span&gt;&quot;,&quot;availability_html&quot;:&quot;&quot;,&quot;sku&quot;:&quot;&quot;,&quot;weight&quot;:&quot; kg&quot;,&quot;dimensions&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;max_qty&quot;:null,&quot;backorders_allowed&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_downloadable&quot;:false,&quot;is_virtual&quot;:false,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;variation_description&quot;:&quot;&quot;}]">-->
                                          <!--<table class="variations" >-->
                                          <!--   <tbody>-->
                                          <!--      <tr>-->
                                          <!--         <td class="label"><label for="select-crust">Select Crust</label></td>-->
                                          <!--         <td class="value">-->
                                          <!--            <select id="select-crust" class="form-control" name="attribute_select-crust" data-attribute_name="attribute_select-crust">-->
                                          <!--               <option value="">Choose an option</option>-->
                                          <!--               <option value="Original Crust" >Original Crust</option>-->
                                          <!--               <option value="Thick Crust" >Thick Crust</option>-->
                                          <!--               <option value="Thin Crust without sause" >Thin Crust without sause</option>-->
                                          <!--               <option value="Double Crust" >Double Crust</option>-->
                                          <!--            </select>-->
                                          <!--         </td>-->
                                          <!--      </tr>-->
                                          <!--      <tr>-->
                                          <!--         <td class="label"><label for="select-size">Select Size</label></td>-->
                                          <!--         <td class="value">-->
                                          <!--            <select id="select-size" class="form-control" name="attribute_select-size" data-attribute_name="attribute_select-size">-->
                                          <!--               <option value="">Choose an option</option>-->
                                          <!--               <option value="Small - 22cm" >Small - 22cm</option>-->
                                          <!--               <option value="Medium - 29cm" >Medium - 29cm</option>-->
                                          <!--               <option value="Large - 35cm"  selected='selected'>Large - 35cm</option>-->
                                          <!--            </select>-->
                                          <!--            <a class="reset_variations" href="#">Clear</a>-->
                                          <!--         </td>-->
                                          <!--      </tr>-->
                                          <!--   </tbody>-->
                                          <!--</table>-->
                                          <!--<div class="single_variation_wrap">-->
                                          <!--   <div class="woocommerce-variation single_variation"></div>-->
                                          <!--   <div class="woocommerce-variation-add-to-cart variations_button">-->
                                          <!--      <div class="qty-btn">-->
                                          <!--         <label>Quantity</label>-->
                                          <!--         <div class="quantity">-->
                                          <!--            <input type="number" name="quantity" value="1" title="Qty" class="input-text qty text" size="4"/>-->
                                          <!--         </div>-->
                                          <!--      </div>-->
                                          <!--      <button type="submit" class="single_add_to_cart_button button alt">Add to cart</button>-->
                                          <!--      <input type="hidden" name="add-to-cart" value="116" />-->
                                          <!--      <input type="hidden" name="product_id" value="116" />-->
                                          <!--      <input type="hidden" name="variation_id" class="variation_id" value="0" />-->
                                          <!--   </div>-->
                                          <!--</div>-->
                                <!--       </form>-->
                                <!--    </div>-->
                
                                <!--</div>-->
                            </div>
                          
                           
                        </div>
                    </div>
                   
                </div>
                
                <!-- /.product-images-wrapper -->
                <div class="woocommerce-tabs wc-tabs-wrapper">
                   <ul class="nav nav-tabs pizzaro-nav-tabs tabs wc-tabs justify-content-center" >
                      <li class="nav-item description_tab active">
                         <a href="#tab-description" class="active" data-toggle="tab">Description</a>
                      </li>
                      <li class="nav-item additional_information_tab">
                         <a href="#tab-additional_information" data-toggle="tab">Additional Information</a>
                      </li>
                      <li class="nav-item nutrition_tab">
                         <a href="#tab-nutrition" data-toggle="tab">Nutritions</a>
                      </li>
                      <li class="nav-item reviews_tab">
                         <a href="#tab-reviews" data-toggle="tab">Reviews</a>
                      </li>
                   </ul>
                   <div class="tab-content">
                      <div class="tab-pane panel active entry-content wc-tab" id="tab-description">
                         <div class="tab-description">
                            <p>Although the legendary Double Burger really needs no introduction, please allow us... Tucked in between three soft buns are two all-beef patties, cheddar cheese, ketchup, onion, pickles and iceberg lettuce. Hesburger&#8217;s own paprika and cucumber mayonnaise add the crowning touch. Oh baby!</p>
                            <p><strong>Ingredients:</strong> Dr. Praeger&#8217;s Black Bean Burger, Focaccia bun, Balsamic Vinaigrette, Pesto, Tomato, Swiss Cheese</p>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                            <div class="table-responsive">
                               <table>
                                  <tbody>
                                     <tr class="food-nutrition">
                                        <th scope="row"><span class="food-name">Pizza</span>28 cm size</th>
                                        <td><span class="value">728</span>Energy/Kj</td>
                                        <td><span class="value">1054</span>energy/kcal</td>
                                        <td><span class="value">68</span>fat/g</td>
                                        <td><span class="value">25</span>carbohydrate/g</td>
                                        <td><span class="value">48</span>sugar/g</td>
                                        <td><span class="value">548</span>protein/g</td>
                                        <td><span class="value">9</span>salt</td>
                                        <td><span class="value">15</span>lactose/g</td>
                                     </tr>
                                     <tr class="allergies-name">
                                        <th scope="row"><span class="allergies-food">Allergies</span></th>
                                        <td>Egg</td>
                                        <td>milk protein</td>
                                        <td>sesame seed</td>
                                        <td>lactose</td>
                                        <td>gluten</td>
                                        <td>mustard</td>
                                        <td></td>
                                        <td></td>
                                     </tr>
                                  </tbody>
                               </table>
                            </div>
                            <h3 class="table-version">Nutrition Informations Version 2</h3>
                            <div class="table-responsive">
                               <table class="table-style-02">
                                  <thead>
                                     <tr>
                                        <th>Size</th>
                                        <th>Energy/Kj</th>
                                        <th>energy/kcal</th>
                                        <th>fat/g</th>
                                        <th>carbohydrate/g</th>
                                        <th>sugar/g</th>
                                        <th>protein/g</th>
                                        <th>salt</th>
                                        <th>lactose/g</th>
                                     </tr>
                                  </thead>
                                  <tbody>
                                     <tr>
                                        <th scope="row">28 cm</th>
                                        <td>728</td>
                                        <td>1054</td>
                                        <td>68</td>
                                        <td>25</td>
                                        <td>25</td>
                                        <td>548</td>
                                        <td>9</td>
                                        <td>15</td>
                                     </tr>
                                     <tr>
                                        <th scope="row">35 cm</th>
                                        <td>923</td>
                                        <td>1352</td>
                                        <td>98</td>
                                        <td>48</td>
                                        <td>75</td>
                                        <td>846</td>
                                        <td>9</td>
                                        <td>27</td>
                                     </tr>
                                  </tbody>
                               </table>
                            </div>
                            <div class="ingredients">
                               <div class="title col-md-3 col-xs-12 col-sm-3">
                                  <h3>Made fresh daily with...</h3>
                               </div>
                               <div class="food-items">
                                  <div class="items col-md-4 col-xs-12 col-sm-4">
                                     <span class="image"><img src="assets/images/single-product/3.jpg" alt="" /></span>
                                     <span class="info">100% Whole Milk<br />Mozarella</span>
                                  </div>
                                  <div class="items col-md-4 col-xs-12 col-sm-4">
                                     <span class="image"><img src="assets/images/single-product/4.jpg" alt="" /></span>
                                     <span class="info">Ecological<br />Mushrooms</span>
                                  </div>
                                  <div class="items col-md-4 col-xs-12 col-sm-4">
                                     <span class="image"><img src="assets/images/single-product/5.jpg" alt="" /></span>
                                     <span class="info">Zesty Pepperoni</span>
                                  </div>
                                  <div class="items col-md-4 col-xs-12 col-sm-4">
                                     <span class="image"><img src="assets/images/single-product/6.jpg" alt="" /></span>
                                     <span class="info">Seasoned Italian<br />Sausage</span>
                                  </div>
                                  <div class="items col-md-4 col-xs-12 col-sm-4">
                                     <span class="image"><img src="assets/images/single-product/7.jpg" alt="" /></span>
                                     <span class="info">Fresh Daily<br />Spinach</span>
                                  </div>
                               </div>
                            </div>
                         </div>
                      </div>
                      <div class="tab-pane in panel entry-content wc-tab" id="tab-additional_information">
                         <div class="tab-additional_information">
                            <table class="shop_attributes">
                               <tr class="">
                                  <th>Food Type</th>
                                  <td>
                                     <p>Veg</p>
                                  </td>
                               </tr>
                            </table>
                         </div>
                      </div>
                      <div class="tab-pane panel entry-content wc-tab" id="tab-nutrition">
                         <div class="tab-nutrition">
                            <div class="table-responsive">
                               <table style="height: 107px">
                                  <tbody>
                                     <tr class="food-nutrition">
                                        <th scope="row"><span class="food-name">Pizza</span>28 cm size</th>
                                        <td><span class="value">728</span>Energy/Kj</td>
                                        <td><span class="value">1054</span>energy/kcal</td>
                                        <td><span class="value">68</span>fat/g</td>
                                        <td><span class="value">25</span>carbohydrate/g</td>
                                        <td><span class="value">48</span>sugar/g</td>
                                        <td><span class="value">548</span>protein/g</td>
                                        <td><span class="value">9</span>salt</td>
                                        <td><span class="value">15</span>lactose/g</td>
                                     </tr>
                                     <tr class="allergies-name">
                                        <th scope="row"><span class="allergies-food">Allergies</span></th>
                                        <td>Egg</td>
                                        <td>milk protein</td>
                                        <td>sesame seed</td>
                                        <td>lactose</td>
                                        <td>gluten</td>
                                        <td>mustard</td>
                                        <td></td>
                                        <td></td>
                                     </tr>
                                  </tbody>
                               </table>
                            </div>
                            <h3 class="table-version">Nutrition Informations Version 2</h3>
                            <div class="table-responsive">
                               <table class="table-style-02" style="height: 118px">
                                  <thead>
                                     <tr>
                                        <th>Size</th>
                                        <th>Energy/Kj</th>
                                        <th>energy/kcal</th>
                                        <th>fat/g</th>
                                        <th>carbohydrate/g</th>
                                        <th>sugar/g</th>
                                        <th>protein/g</th>
                                        <th>salt</th>
                                        <th>lactose/g</th>
                                     </tr>
                                  </thead>
                                  <tbody>
                                     <tr>
                                        <th scope="row">28 cm</th>
                                        <td>728</td>
                                        <td>1054</td>
                                        <td>68</td>
                                        <td>25</td>
                                        <td>25</td>
                                        <td>548</td>
                                        <td>9</td>
                                        <td>15</td>
                                     </tr>
                                     <tr>
                                        <th scope="row">35 cm</th>
                                        <td>923</td>
                                        <td>1352</td>
                                        <td>98</td>
                                        <td>48</td>
                                        <td>75</td>
                                        <td>846</td>
                                        <td>9</td>
                                        <td>27</td>
                                     </tr>
                                  </tbody>
                               </table>
                            </div>
                         </div>
                      </div>
                      <div class="tab-pane panel entry-content wc-tab" id="tab-reviews">
                         <div class="tab-reviews">
                            <div id="reviews" class="woocommerce-Reviews">
                               <div id="review_form_wrapper">
                                  <div id="review_form">
                                     <div id="respond" class="comment-respond">
                                        <h3 id="reply-title" class="comment-reply-title">Be the first to review &ldquo;Hawaii Vegetarian Pizza&rdquo;
                                           <small>
                                           <a rel="nofollow" id="cancel-comment-reply-link" href="/pizzaro/product/hawaii-vegetarian-pizza/#respond" style="display:none;">Cancel reply</a>
                                           </small>
                                        </h3>
                                        <form action="#"  id="commentform" class="comment-form" novalidate>
                                           <p class="comment-notes">
                                              <span id="email-notes">Your email address will not be published.</span> Required fields are marked <span class="required">*</span>
                                           </p>
                                           <p class="comment-form-rating">
                                              <label>Your Rating</label>
                                          </p>
                                           <p class="stars">
                                              <span>
                                              <a class="star-1" href="#">1</a>
                                              <a class="star-2" href="#">2</a>
                                              <a class="star-3" href="#">3</a>
                                              <a class="star-4" href="#">4</a>
                                              <a class="star-5" href="#">5</a>
                                              </span>
                                           </p>

                                           <p class="comment-form-comment">
                                              <label for="comment">Your Review <span class="required">*</span></label>
                                              <textarea id="comment" name="comment" cols="45" rows="8"></textarea>
                                           </p>
                                           <p class="comment-form-author">
                                              <label for="author">Name <span class="required">*</span></label>
                                              <input id="author" name="author" type="text" value="" size="30" aria-required="true" required />
                                           </p>
                                           <p class="comment-form-email">
                                              <label for="email">Email <span class="required">*</span></label>
                                              <input id="email" name="email" type="email" value="" size="30" aria-required="true" required />
                                           </p>
                                           <p class="form-submit">
                                              <input name="submit" type="submit" id="submit" class="submit" value="Submit" />
                                              <input type='hidden' name='comment_post_ID' value='50' id='comment_post_ID' />
                                              <input type='hidden' name='comment_parent' id='comment_parent' value='0' />
                                           </p>
                                        </form>
                                     </div>
                                      #respond 
                                  </div>
                               </div>
                               <div class="clear"></div>
                            </div>
                         </div>
                      </div>
                   </div>
                </div>
                <div class="section-products">
                   <h2 class="section-title">This Goes Great Withh</h2>
                   <div class="columns-4">
                      <ul class="products">
                         <li class="product first">
                            <div class="product-outer">
                               <div class="product-inner">
                                  <div class="product-image-wrapper">
                                     <a href="#" class="woocommerce-LoopProduct-link">
                                     <img src="assets/images/products/p9.jpg" class="img-responsive" alt="">
                                     </a>
                                  </div>
                                  <div class="product-content-wrapper">
                                     <a href="#" class="woocommerce-LoopProduct-link">
                                        <h3>Trio Cheese</h3>
                                        <div itemprop="description">
                                           <p style="max-height: none;">Extra-virgin olive oil, garlic, mozzarella, mushrooms and olives.</p>
                                        </div>
                                        <div  class="yith_wapo_groups_container">
                                           <div  class="ywapo_group_container ywapo_group_container_radio form-row form-row-wide " data-requested="1" data-type="radio" data-id="1" data-condition="">
                                              <h3><span>Pick Size</span></h3>
                                              <div class="ywapo_input_container ywapo_input_container_radio">

                                                 <span class="ywapo_label_tag_position_after"><span class="ywapo_option_label ywapo_label_position_after">22 cm</span></span>
                                                 <span class="ywapo_label_price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>19</span></span>
                                              </div>
                                              <div class="ywapo_input_container ywapo_input_container_radio">

                                                 <span class="ywapo_label_tag_position_after"><span class="ywapo_option_label ywapo_label_position_after">29 cm</span></span>
                                                 <span class="ywapo_label_price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>25</span></span>
                                              </div>
                                           </div>
                                        </div>
                                     </a>
                                     <div class="hover-area">
                                        <a rel="nofollow" href="#" data-quantity="1" data-product_id="51" data-product_sku="" class="button product_type_simple add_to_cart_button ajax_add_to_cart">Add to cart</a>
                                     </div>
                                  </div>
                               </div>
                            </div>
                            <!-- /.product-outer -->
                         </li>
                         <!-- /.products -->
                         <li class="product ">
                            <div class="product-outer">
                               <div class="product-inner">
                                  <div class="product-image-wrapper">
                                     <a href="#" class="woocommerce-LoopProduct-link">
                                     <img src="assets/images/products/p10.jpg" class="img-responsive" alt="">
                                     </a>
                                  </div>
                                  <div class="product-content-wrapper">
                                     <a href="#" class="woocommerce-LoopProduct-link">
                                        <h3>Trio Cheese</h3>
                                        <div itemprop="description">
                                           <p style="max-height: none;">Extra-virgin olive oil, garlic, mozzarella, mushrooms and olives.</p>
                                        </div>
                                        <div  class="yith_wapo_groups_container">
                                           <div  class="ywapo_group_container ywapo_group_container_radio form-row form-row-wide " data-requested="1" data-type="radio" data-id="1" data-condition="">
                                              <h3><span>Pick Size</span></h3>
                                              <div class="ywapo_input_container ywapo_input_container_radio">

                                                 <span class="ywapo_label_tag_position_after"><span class="ywapo_option_label ywapo_label_position_after">22 cm</span></span>
                                                 <span class="ywapo_label_price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>19</span></span>
                                              </div>
                                              <div class="ywapo_input_container ywapo_input_container_radio">

                                                 <span class="ywapo_label_tag_position_after"><span class="ywapo_option_label ywapo_label_position_after">29 cm</span></span>
                                                 <span class="ywapo_label_price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>25</span></span>
                                              </div>
                                           </div>
                                        </div>
                                     </a>
                                     <div class="hover-area">
                                        <a rel="nofollow" href="#" data-quantity="1" data-product_id="51" data-product_sku="" class="button product_type_simple add_to_cart_button ajax_add_to_cart">Add to cart</a>
                                     </div>
                                  </div>
                               </div>
                            </div>
                            <!-- /.product-outer -->
                         </li>
                         <!-- /.products -->
                         <li class="product ">
                            <div class="product-outer">
                               <div class="product-inner">
                                  <div class="product-image-wrapper">
                                     <a href="#" class="woocommerce-LoopProduct-link">
                                     <img src="assets/images/products/p2.jpg" class="img-responsive" alt="">
                                     </a>
                                  </div>
                                  <div class="product-content-wrapper">
                                     <a href="#" class="woocommerce-LoopProduct-link">
                                        <h3>Trio Cheese</h3>
                                        <div itemprop="description">
                                           <p style="max-height: none;">Extra-virgin olive oil, garlic, mozzarella, mushrooms and olives.</p>
                                        </div>
                                        <div  class="yith_wapo_groups_container">
                                           <div  class="ywapo_group_container ywapo_group_container_radio form-row form-row-wide " data-requested="1" data-type="radio" data-id="1" data-condition="">
                                              <h3><span>Pick Size</span></h3>
                                              <div class="ywapo_input_container ywapo_input_container_radio">

                                                 <span class="ywapo_label_tag_position_after"><span class="ywapo_option_label ywapo_label_position_after">22 cm</span></span>
                                                 <span class="ywapo_label_price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>19</span></span>
                                              </div>
                                              <div class="ywapo_input_container ywapo_input_container_radio">

                                                 <span class="ywapo_label_tag_position_after"><span class="ywapo_option_label ywapo_label_position_after">29 cm</span></span>
                                                 <span class="ywapo_label_price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>25</span></span>
                                              </div>
                                           </div>
                                        </div>
                                     </a>
                                     <div class="hover-area">
                                        <a rel="nofollow" href="#" data-quantity="1" data-product_id="51" data-product_sku="" class="button product_type_simple add_to_cart_button ajax_add_to_cart">Add to cart</a>
                                     </div>
                                  </div>
                               </div>
                            </div>
                            <!-- /.product-outer -->
                         </li>
                         <!-- /.products -->
                         <li class="product last">
                            <div class="product-outer">
                               <div class="product-inner">
                                  <div class="product-image-wrapper">
                                     <a href="#" class="woocommerce-LoopProduct-link">
                                     <img src="assets/images/products/p1.jpg" class="img-responsive" alt="">
                                     </a>
                                  </div>
                                  <div class="product-content-wrapper">
                                     <a href="#" class="woocommerce-LoopProduct-link">
                                        <h3>Trio Cheese</h3>
                                        <div itemprop="description">
                                           <p style="max-height: none;">Extra-virgin olive oil, garlic, mozzarella, mushrooms and olives.</p>
                                        </div>
                                        <div  class="yith_wapo_groups_container">
                                           <div  class="ywapo_group_container ywapo_group_container_radio form-row form-row-wide " data-requested="1" data-type="radio" data-id="1" data-condition="">
                                              <h3><span>Pick Size</span></h3>
                                              <div class="ywapo_input_container ywapo_input_container_radio">

                                                 <span class="ywapo_label_tag_position_after"><span class="ywapo_option_label ywapo_label_position_after">22 cm</span></span>
                                                 <span class="ywapo_label_price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>19</span></span>
                                              </div>
                                              <div class="ywapo_input_container ywapo_input_container_radio">

                                                 <span class="ywapo_label_tag_position_after"><span class="ywapo_option_label ywapo_label_position_after">29 cm</span></span>
                                                 <span class="ywapo_label_price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>25</span></span>
                                              </div>
                                           </div>
                                        </div>
                                     </a>
                                     <div class="hover-area">
                                        <a rel="nofollow" href="#" data-quantity="1" data-product_id="51" data-product_sku="" class="button product_type_simple add_to_cart_button ajax_add_to_cart">Add to cart</a>
                                     </div>
                                  </div>
                               </div>
                            </div>
                            <!-- /.product-outer -->
                         </li>
                         <!-- /.products -->
                      </ul>
                   </div>
                </div>
             </div>
       </div>
       <!-- #primary -->
        
    </section>

@endsection

@section('scripts')
    <script>
         $('body').on('click', '.add-cart-btn', function() {
                var price    = $(this).attr('data-price');
                var pdct_id  = $(this).attr('data-pid');
                var quantity = $('.quantity .qty').val();
                
                var flavor      = '';
                var color       = '';
                var message     = '';
                var border_color= '';
                var text_color  = '';
                var customized  = 0;
           
                
                $.ajax({
                    url: '{{url('basket/add')}}',
                    type: 'GET',
                    data: { price: price, pdct_id: pdct_id, quantity: quantity,flavor :flavor, color :color, message :message, border_color :border_color, text_color :text_color,customized : customized},
                    success: function(response) {
                        console.log(response)
                        if(response.result == 1){
                            $('.cart-icon .cart-count').html(response.cart_count);
                            Swal.fire({
                                icon: 'success',
                                html: '<h1 class="main-h1"> Thank you </h1>' + '<h2 class="main-h2"> Item has been added to the cart </h2>',
                                showCancelButton: true,
                                confirmButtonText: 'Go to Cart',
                                cancelButtonText: 'Continue Shopping',
                                allowOutsideClick: false
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    window.location.href = '/cart';
                                } else {
                                    window.location.href = '/menu';
                                }
                            });
                        }
                        else {
                            alert('Error');
                        }
                    }
                });
            });
    </script>

@endsection