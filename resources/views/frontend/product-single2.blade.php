<style>
    .option {
        box-sizing: border-box;
        width: 100%;
        height: 100%;
        text-align: left;
    }

    span.total-price.small.oswald {
        /*font-size: .6em;*/
    }

    .option input {
        height: unset;
        cursor: pointer;
        opacity: 0;
        position: absolute;
        padding: 0;
        height: 0;
        width: 0;
        margin: 0;
    }

    .option .label {
        position: relative;
        cursor: pointer;
        display: flex;
        align-items: center;
        box-sizing: inherit;
        width: 100%;
        height: 100%;
    }

    .option .label .labelContents {
        width: 100%;
        order: 2;
    }

    .toggleContents {
        padding: 8px 16px;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .toggleContents .modifierTextContent.leftAligned {
        justify-content: flex-start;
    }

    .toggleContents .modifierTextContent {
        flex: 1;
        display: flex;
        justify-content: space-between;
        overflow: hidden;
    }

    .toggleContents .price {
        line-height: 26px;
    }

    .toggleContents .modifierText {
        overflow: hidden;
    }

    .row .name {
        padding-right: 8px;
    }

    .option.rounded-2.shadow {
        border: 2px solid #fff;
    }

    .option.rounded-2.shadow:hover {
        border: 2px solid #999;
    }

    .checkbox.hover-item:checked+.option {
        border-color: #111;
    }

    .addontQty {
        display: none;
    }

    .checkbox.hover-item:checked+.option .addontQty {
        display: block;
    }

    .has-more-addon .delete-addon {
        display: none;
    }

    .less-addon {
        display: none;
    }

    .has-more-addon .less-addon {
        display: block;
    }

    button.add-cart-btn.btn.tertiary-btn {
        line-height: 1;
        font-size: 1.5em !important;
    }

    .m-less-addon.text-dark.me-2.text-muted {
        color: #999 !important;
    }
    i.bi.removed {
    position: absolute;
    right: 0;
    top: 50%;
    line-height: 0;
    color: #999;
    opacity: 0;
    transform: translate(-50%, -50%);
}
.checkbox.hover-item:checked+.option i.removed {
    opacity: 1;
    color: #111;
}img.attachment-shop_single.size-shop_single.wp-post-image {
    /*max-height: 500px*/;
    object-fit: cover;
    width: 100%;
}
@media(max-width: 600px){
    .for-responsive-d-none{
        display: none;
    }
    img.attachment-shop_single.size-shop_single.wp-post-image {
        max-height: 250px;
    }
</style>

    <style>
    .combo-item:hover {
    border-color: #999;
}

.combo-item {
    border: 2px solid #fff;
}.combo-check:checked+.combo-item {
    border-color: #111;
}i.combo-selected {
    position: absolute;
    right: 4px;
    top: 4px;
    line-height: 0;
    opacity: 0;
}.combo-check:checked+.combo-item .combo-selected {
    opacity: 1;
    color: #111;
}.comb-image img {
    width: 40px;
    height: 40px;
    object-fit: contain !important;
    border-radius: 50%;
}.comb-image img {
    width: 40px;
    height: 40px;
    object-fit: contain !important;
    border-radius: 50%;
    border: 1px solid #ededed;
}.comb-image img {
    width: 40px;
    height: 40px;
    object-fit: cover !important;
    border-radius: 50%;
    border: 1px solid #ededed;
}.combo-check.not-allowed+.combo-item {
    cursor: not-allowed;
}
@media only screen and (min-width: 992px) {
  .modal-dialog.product-combo-modal {
    max-width: 600px;
    margin: auto;
    padding-top: 2em;
    padding-bottom: 2em;
}

}
@media(max-width: 600px){
    .confirm-window .tertiary-btn{
        padding: 0.3334em 1.5em !important;
    }
}
    </style>
<div class="modal-header border-0 ">
        <h5 class="modal-title ff-sunset-boulevard fw-normal display-3">{{ $product->name }}</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
                
            
    <div class="">
        <div class="single-product-wrapper">
            <div class="col-md-12">
                @php
                    $pImages = $product->thumbImages;
                    $pImage = '';
                @endphp
                @if ($pImage = $pImages->where('type', 'Main Image')->pluck('picture')->first())
                @elseif($pImage = $pImages->where('type', 'Thumbnail')->pluck('picture')->first())
                @endif
                @if($product->images()->count() > 1)
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        @foreach($product->images as $key => $img)
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="{{ $key }}" class="{{ !$key ? 'active' : null }}" aria-current="true" aria-label="Slide 1"></button>
                        @endforeach
                      </div>
                  <div class="carousel-inner">
                    @foreach($product->images as $key => $img)
                    <div class="carousel-item {{ !$key ? 'active' : null }}">
                          <img src="{{ asset('images/products/' . $img->picture) }}"
                                onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';"
                                class="attachment-shop_single size-shop_single wp-post-image" alt="" />
                    </div>
                    @endforeach
                  </div>
                  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                  </button>
                  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                  </button>
                </div>
                @else
                <div class="product-images-wrapper" @json($product->images)>
                    <div class="images">
                        <a href="#" itemprop="image" class="woocommerce-main-image zoom" title=""
                            data-rel="prettyPhoto[product-gallery]">
                            <img src="{{ $pImage != '' ? asset('images/products/' . $pImage) : '/assets/images/dummy-product.jpg' }}"
                                onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';"
                                class="attachment-shop_single size-shop_single wp-post-image {{ $pImage != '' ? '' : 'for-responsive-d-none' }}" alt="" />
                        </a>
                    </div>

                </div>
                @endif
            </div>
          
            
            @php
                $pdct_details = $product->product_variation->where('product_id', $product->id)->first();
            @endphp

            <div class="col-md-12">
                <!-- /.product-images-wrapper -->
                <div class="ps-3 pe-3">
                    <h2 class="d-none">
                        {{ $product->name }}
                        </h2>
                        <div itemprop="offers">
                            <p class="price mt-2">
                                <span class="woocommerce-Price-amount amount h2 text-success fw-bold">
                                    {{ getPrice($pdct_details->price) }}
                                </span>
                            </p>
                        </div>
                        <div itemprop="description">
                            <p>{!! $product->description !!}</p>
                        </div>
                        <hr>
                        @if ($product->ingredients->count() > 0)
                            <div class="col-lg-12 text-center">
                                <div class="h6 fw-bold text-start">Remove Ingredients</div>
                                <div class="row">
                                    @foreach ($product->ingredients as $ingItems)
                                        <div class="col-lg-6 mb-3 option-container">
                                            <input class="checkbox hover-item d-none" hidden type="checkbox"
                                                role="checkbox" name="removed_ingredients[]"
                                                id="ingredient_{{ $ingItems->id }}" value="{{ $ingItems->name }}">
                                            <div class="option rounded-2 shadow position-relative">
                                                <i class="bi bi-x-lg removed text-danger"></i>
                                                <label class="label" for="ingredient_{{ $ingItems->id }}">
                                                    <div class="labelContents">
                                                        <div class="toggleContents" aria-hidden="true">
                                                            <div class="modifierTextContent leftAligned" id="">
                                                                <div class="modifierText">
                                                                    <div class="name text-capitalize fw-normal">
                                                                        {{ $ingItems->name }}</div>
                                                                    <div class="subtitle"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </label>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                            <hr>
                        @endif

                        @if ($product->addons->count() > 0)
                            <div class="col-lg-12 text-center">
                                <div class="h6 fw-bold text-start">Add extras</div>
                                <div class="row">
                                    @foreach ($product->addons as $addonItems)
                                        @if ($addonItems->addon_products)
                                            <div class="col-lg-6 mb-3 option-container">
                                                <input
                                                    data-price="{{ $addonItems->addon_products->product_variatiant->price ?? 0 }}"
                                                    class="checkbox addon-item hover-item d-none" hidden type="checkbox"
                                                    role="checkbox" name="addon_items[]"
                                                    id="extra_{{ $addonItems->id }}" value="{{ $addonItems->addon_products->product_variatiant->id }}">
                                                <div class="option rounded-2 shadow">
                                                    <label class="label" for="extra_{{ $addonItems->id }}">
                                                        <div class="labelContents">
                                                            <div class="toggleContents" aria-hidden="true">
                                                                <div class="modifierTextContent leftAligned d-flex align-items-center"
                                                                    id="">
                                                                    <div class="modifierText text-overflow me-2">
                                                                        <div
                                                                            class="name text-capitalize fw-normal text-overflow">
                                                                            {{ $addonItems->addon_products->name }}
                                                                        </div>
                                                                        <div class="subtitle">{{getPrice($addonItems->addon_products->product_variatiant->price)}}</div>
                                                                    </div>
                                                                    <div class="addontQty ms-auto">
                                                                        <input type="hidden" class="addon-qty"
                                                                            name="addon_quantity[{{ $addonItems->addon_products->product_variatiant->id }}]"
                                                                            value="1">
                                                                        <div class="d-flex align-items-center">
                                                                            <i class="bi bi-trash delete-addon text-dark me-2 fs-5"
                                                                                role="button"></i>
                                                                            <i class="bi bi-dash less-addon text-dark me-2 fs-5"
                                                                                role="button"></i>
                                                                            <div
                                                                                class="addon-quantity bg-dark text-white px-3 rounded-4">
                                                                                1</div>
                                                                            <i class="bi bi-plus-lg more-addon text-dark ms-2 fs-5"
                                                                                role="button"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </label>
                                                </div>
                                            </div>
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                            <hr>
                        @endif



                        @if ($product->condiments->count() > 0)
                            <div class="col-lg-12 text-center">
                                <div class="h6 fw-bold text-start">Add Condiments</div>
                                <div class="row">
                                    @foreach ($product->condiments as $condItems)
                                        <div class="col-lg-6 mb-3 option-container">
                                            <input class="checkbox hover-item d-none" hidden type="checkbox"
                                                role="checkbox" name="removed_condiments[]"
                                                id="condiment_{{ $condItems->id }}" value="{{ $condItems->condiment_name }}">
                                            <div class="option rounded-2 shadow position-relative">
                                                <i class="bi bi-check-lg fs-5 removed text-theme"></i>
                                                <label class="label" for="condiment_{{ $condItems->id }}">
                                                    <div class="labelContents">
                                                        <div class="toggleContents" aria-hidden="true">
                                                            <div class="modifierTextContent leftAligned" id="">
                                                                <div class="modifierText">
                                                                    <div class="name text-capitalize fw-normal">
                                                                        {{ $condItems->condiment_name }}</div>
                                                                    <div class="master_id"
                                                                        {{ $condItems->condiment_master_id }}></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </label>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                            <hr>
                        @endif
                        @include('frontend.comboSelection', ['product' => $product, 'selectedCombos' => []])
    
                        <div>
                            <label>Special instructions</label>
                            <textarea class="form-control" name="instructions"></textarea>
                        </div>

                        <div class="single_variation_wrap">

                            <div class="d-none">
                                <div
                                    class="woocommerce-variation-add-to-cart variations_button d-flex gap-3 flex-column">
                                    <label class="">Quantity</label>
                                    <div class="qty-btn mb-2">
                                        <div class="quantity">
                                            <input type="number" name="quantity" inputmode="numeric" min="1"
                                                value="1" title="Qty" class="input-text qty text"
                                                size="4" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                            
                        </div>
                </div>
                <!-- .summary -->
            </div>
        </div>
</div>
</div>
<div class="modal-footer border-0">
    <div class="d-flex align-items-center w-100">
                                <div class="d-flex align-items-center me-2">
                                    <div class="m-less-addon text-dark me-2 text-muted fs-1" role="button">-</div>
                                    <div class="m-addon-quantity bg-dark text-white px-3 rounded-4">1</div>
                                    <div class="m-more-addon text-dark ms-2 fs-1" role="button">+</div>
                                </div>
                                <input type="hidden" name="pdct_id" value="{{ $pdct_details->id }}">
                                <button type="button" data-price="{{ $pdct_details->price }}"
                                    data-pid="{{ $pdct_details->id }}"
                                    class="ms-auto add-cart-btn btn tertiary-btn ">Add to cart <span
                                        class="number-font">{{ getPrice($pdct_details->price) }}</span></button>
                            </div>
</div>