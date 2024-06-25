<style>
.upsell-selected.end-0 {
    top: 50%;
    transform: translate(-50%, -50%);
    font-size: 18px;
}
.upsell-item.new:hover {
    background: #ebe9e9;
}.fs-6.ff-poppins {
    font-size: unset !important;
}
  .upsell-item:hover {
    border-color: #999;
}
.dropdown-toggle::after {
    float: right;
    margin-top: 10px;
}
.upsell-item {
    border: 2px solid #fff;
}.upsell-check:checked+.upsell-item {
    border-color: #111;
}i.upsell-selected {
    position: absolute;
    right: 4px;
    top: 4px;
    line-height: 0;
    opacity: 0;
}.upsell-check:checked+.upsell-item .upsell-selected {
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
}.upsell-check.not-allowed+.upsell-item {
    cursor: not-allowed;
}.line-height-1 {
    line-height: 1;
}.dropdown-toggle::after {
    position: absolute;
    right: 5px;
    top: 30%;
    transform: translate(-50%, -50%);
}
</style>
    <style>
.small.name-price {
    font-size: small;
    line-height: 1.5;
}ul.dropdown-menu.mega-dropdown-menu {
    width: max-content;
}
@media(max-width: 600px){
    .confirm-window .tertiary-btn{
        padding: 0.3334em 1.5em !important;
    }
}ul.dropdown-menu.w-100.mega-dropdown-menu {
    max-width: 302px;
}
.dropdown-toggle .small.name-price.text-overflow {
    line-height: 1.25;
}
.dropdown-toggle .comb-image img {
    min-width: 32px !important;
    min-height: 32px !important;
    max-width: 32px;
    max-height: 32px;
}.dropdown-toggle .comb-image.me-3 {
    margin-right: 6px !important;
}
    </style>
<div class="modal-header border-0 ">
        <div class="m-auto">
    <div class="h5 fs-4 text-dark text-center mb-0 fw-bold">
        @if($edit)
        Change your combo items
        @else
        Simply add a drink and a side and SAVE 10% at checkout
        @endif
    </div>
        </div>
      </div>
<div class="modal-body py-0">
    <div class="">
    <form method="POST" id="upsell_form" action="{{ url('cart/upsell') }}" class="validated no-ajax not-ajax">
        @csrf
        @if($edit)
            <input type="hidden" value="true" name="edit" hidden>
        @endif
        @foreach($items as $item)
        @if($edit)
            <input type="hidden" value="{{ $item->id }}" name="all_products[{{ $item->id }}]" hidden>
        @endif
        @for($i =1; $i <= $item->quantity; $i++)
            
        <div class="row up-item">
            @php
                $product = $item->product;
                $pd_details = $product->product_variation->first();
                $selectedUpsells = $item->upsell_details ? (collect($item->upsell_details)->pluck('id')->toArray() ?? []) : [];
            @endphp
        <div class="col-12">
            <div class="fw-bold mb-1 d-inline">{{ $product->name }}</div>
            <div class="d-inline">
                <span class="basePrice" data-price="" data-discount="">{{ getPrice($pd_details->price) }}</span>
                (<span class="text-theme small">{{ number_format($product->upsell->discount, 2) }}%OFF</span>)
            </div>
        </div>
        <div class="col-4 col-lg-4 text-center position-relative">
            
            <img width="180" height="180" class="upsell-image m-auto" src="{{asset('images/products/'.$item->picture)}}" onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';" alt=""/>
        </div>
        <div class="categories col-8 col-lg-8">
            
        <div class="row">
            @forelse($item->upsell_categories as $category)
        <div class="mb-2 col-12">
        
        <div class="row mt-2 upsell-category">
            <div class="dropdown col-12">
              <button class="btn position-relative rounded-2 p-2 fs-6 ff-poppins px-3 w-100 text-start tertiary-btn bg-light text-dark dropdown-toggle text-overflow" type="button" data-bs-toggle="dropdown" aria-expanded="false" data-default="Select {{ $category->category->name }}">Select {{ $category->category->name }}</button>
              <ul class="dropdown-menu w-100 mega-dropdown-menu p-0 border-0 shadow-sm">
              
            @foreach($category->upsell_products as $pro)
                @if($pro->upsell_product)
                @php
                    $pdct_details = $pro->upsell_product->product_variation->first();
                    $pImages = $pro->upsell_product->thumbImages;
                    $pImage = '';
                @endphp
                @if ($pImage = $pImages->where('type', 'Main Image')->pluck('picture')->first())
                @elseif($pImage = $pImages->where('type', 'Thumbnail')->pluck('picture')->first())
                @endif
                
            <li @json($selectedUpsells)><a class="" href="#">
                <div class="upsell-container mb-0">
                    <label role="button" for="upsell_{{ $pro->id }}_{{ $i }}_{{ $item->id }}" class="w-100">
                <input data-price="{{ $pdct_details->price }}" {{ in_array($pro->upsell_product->master_id, $selectedUpsells) ? 'checked' : null }} data-name="{{ $pro->upsell_product->name }}" hidden type="checkbox" class="upsell-check" id="upsell_{{ $pro->id }}_{{ $i }}_{{ $item->id }}" name="upsell_products[{{ $item->id }}][{{ $i }}][{{ $category->id }}]" value="{{ $pro->upsell_product->id }}">
                <div class="upsell-item new border-0 shadow-none p-1 px-3 pe-5 rounded d-flex align-items-center position-relative">
                    <i class="bi bi-check-circle-fill upsell-selected end-0"></i>
                    <div class="w-100 d-flex align-items-center upsellcontent">
                        <div class="comb-image me-3">
                        <img src="{{ $pImage != '' ? asset('images/products/' .$pImage) : '/assets/images/dummy-product.jpg'}}" onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';"  class="text-center" alt="13" title="13">
                    </div>
                    <div class="small name-price text-overflow">
                        <div class="text-overflow">{{ $pro->upsell_product->name }}</div>
                        <div class=""><del class="text-danger small">{{ getPrice($pdct_details->price) }}</del> {{ getPrice($pdct_details->price - (($pdct_details->price)*($product->upsell->discount/100))) }}</div>
                    </div>
                    </div>
                </div>
                </label>
            </div>
            </a></li>
            @endif
        @endforeach
        </ul>
            </div>
        </div>
    </div>
    @empty
        <div class="text-danger col-12">Sorry, no customizations found.</div>
        @endforelse
        </div>
    </div>
    <div class="col-12 text-center mt-0 my-3">
        <div class="line-height-1">
             <small>Total.</small>
             <div class="effective-price d-inline mt-1 text-center fw-bolder fs-5" data-default="{{ $pd_details->price }}" data-discount="{{ $product->upsell->discount ?? 10 }}">{{ getPrice($pd_details->price) }}</div>
         </div>
    </div>
    </div>
<hr class="mt-0">
        @endfor
        @endforeach
        
</div>
</div>
<div class="modal-footer confirm-window border-0 pt-0">
    @if($edit)
    <button href="" type="button" data-bs-dismiss="modal" class="ms-auto btn btn-dark btn-sm tertiary-btn" data>Cancel</button>
    <button type="submit" form="upsell_form" class=" btn btn-sm tertiary-btn me-auto">Update</button>
    @else
    <button href="" type="button" data-bs-dismiss="modal" class="btn btn-dark ms-auto btn-sm tertiary-btn" data>No thanks</button>
    <button type="submit" form="upsell_form" class=" btn btn-sm tertiary-btn me-auto">Add combo</button>
    @endif
</div>