
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
        <div class="m-auto">
            <div class="text-center ">
        <h1 class="mb-0 disappear "> Thank you </h1>
        <div class="h3 text-dark text-center mb-4 disappear" id="">
            Item has been added to the cart
        </div>
    </div>
    <div class="h1 text-dark text-center mb-4 fw-bold">
        Would you like to make {{ $product->name }} as combo pack?
    </div>
        </div>
      </div>
<div class="modal-body">
    @php
                $pdct_details = $product->product_variation->where('product_id', $product->id)->first();
            @endphp
    <div class="">
    <form id="combo_form" class="validated no-ajax not-ajax" data-id="{{ $item->id }}">
        @csrf
    <div class="row">
        <div class="col-lg-8">
            
            <div class="h2 mb-2">
        {{ $product->combo->name }}
        
    </div>
    <div class="h3 text-theme mb-0">
        ${{ number_format($product->combo->price ? : $pdct_details->price , 2) }}
    </div>
    <div class="mb-2">
        @if($product->combo->description)
        {{ $product->combo->description }}
        @else
        To make {{ $product->name }} as combo pack, please select and customize your addons for the combo.
        @endif
    </div>
        </div>
        <div class="col-lg-4">
            <img src="{{ $product->combo->picture ? asset('images/products/' .$product->combo->picture) : '/assets/images/dummy-product.jpg'}}" onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';"  class="text-center w-100" alt="13" title="13">
        </div>
    </div>
    
    <div class="mt-3 categories" data-min="{{ $product->combo->min_addon }}" data-max="{{ $product->combo->max_addon }}">
    @forelse($categories as $category)
        <div class="">
            <div class="h6 mb-0 fw-bold text-start">{{ $category->category->name }} <span class="selection small {{ $category->min_addon ? 'text-danger' : '' }}">(<span class="selected">0</span>/{{ $category->max_addon }})</span></div>
        <div class="row mt-2 combo-category" data-min="{{ $category->min_addon }}" data-max="{{ $category->max_addon }}" data-category="{{ $category->category->name }}">
            @foreach($category->combo_products as $prod)
                @php
                    $pImages = $prod->combo_product->thumbImages;
                    $pImage = '';
                @endphp
                @if ($pImage = $pImages->where('type', 'Main Image')->pluck('picture')->first())
                @elseif($pImage = $pImages->where('type', 'Thumbnail')->pluck('picture')->first())
                @endif
                <div class="combo-container col-auto mb-3">
                    <label role="button" for="combo_{{ $prod->id }}">
                <input hidden type="checkbox" class="combo-check" id="combo_{{ $prod->id }}" name="combo_products[]" value="{{ $prod->combo_product->id }}">
                <div class="combo-item shadow-sm p-2 px-4 rounded d-flex align-items-center position-relative">
                    <i class="bi bi-check-circle-fill combo-selected"></i>
                    <div class="comb-image me-3">
                        <img src="{{ $pImage != '' ? asset('images/products/' .$pImage) : '/assets/images/dummy-product.jpg'}}" onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';"  class="text-center" alt="13" title="13">
                    </div>
                    <div>
                        {{ $prod->combo_product->name }}
                    </div>
                </div>
                </label>
            </div>
            
        @endforeach
        </div>
        </div>
        <hr>
    @empty
    <div class="text-danger">Sorry, no customizations found.</div>
    @endforelse
    </div>
    </form>
    </div>
</div>
<div class="modal-footer confirm-window">
    <a href="/menu" type="button" class="btn btn-dark btn-sm tertiary-btn" data>No thanks</a>
    <button type="submit" form="combo_form" class=" btn btn-sm tertiary-btn ">Add combo</button>
</div>