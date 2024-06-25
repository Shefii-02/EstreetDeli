<style>
.combo-selected.end-0 {
    top: 50%;
    transform: translate(-50%, -50%);
    font-size: 18px;
}
.combo-item.new:hover {
    background: #ebe9e9;
}.fs-6.ff-poppins {
    font-size: unset !important;
}
.dropdown-toggle::after {
    position: absolute;
    right: 5px;
    top: 50%;
    transform: translate(-50%, -50%);
}.dropdown-toggle .comb-image.me-3 {
    margin-right: 6px !important;
}
.dropdown-toggle .small.name-price.text-overflow {
    line-height: 1.25;
}.dropdown-toggle .comb-image img {
    min-width: 32px !important;
    min-height: 32px !important;
    max-width: 32px;
    max-height: 32px;
}
</style>
@if($product->is_combo)
<div class="combo-items">
     <div class="mb-2">
        @if($product->combo->description)
        {{ $product->combo->description }}
        @else
        To make {{ $product->name }} as combo pack, please select and customize your addons for the combo.
        @endif
    </div>
    <div class="mt-3 categories" data-min="{{ $product->combo->min_addon }}" data-max="{{ $product->combo->max_addon }}">
    @forelse($categories as $category)
        <div class="mb-2">
        <div class="h6 mb-1 fw-bold text-start">{{ $category->category->name }} <span class="selection small {{ $category->min_addon ? 'text-danger' : '' }}">(<span class="selected">0</span>/{{ $category->max_addon }})</span></div>
        
        <div class="row mt-2 combo-category" data-min="{{ $category->min_addon }}" data-max="{{ $category->max_addon }}" data-category="{{ $category->category->name }}">
            <div class="dropdown col-12">
              <button class="btn w-100 text-start position-relative rounded-2 p-2 fs-6 ff-poppins px-3 tertiary-btn bg-light text-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">Select items</button>
              <ul class="dropdown-menu mega-dropdown-menu p-0 border-0 shadow-sm">
              
            @foreach($category->combo_products as $pro)
                @php
                    $pImages = $pro->combo_product->thumbImages;
                    $pImage = '';
                @endphp
                @if ($pImage = $pImages->where('type', 'Main Image')->pluck('picture')->first())
                @elseif($pImage = $pImages->where('type', 'Thumbnail')->pluck('picture')->first())
                @endif
            <li><a class="" href="#">
                <div class="combo-container mb-0">
                    <label role="button" for="combo_{{ $pro->id }}" class="w-100">
                <input data-name="{{ $pro->combo_product->name }}" hidden type="checkbox" {{ in_array($pro->combo_product->master_id, $selectedCombos) ? 'checked' : '' }} class="combo-check" id="combo_{{ $pro->id }}" name="combo_products[]" value="{{ $pro->combo_product->id }}">
                <div class="combo-item new border-0 shadow-none p-1 px-3 pe-5 rounded d-flex align-items-center position-relative">
                    <i class="bi bi-check-circle-fill combo-selected end-0"></i>
                    <div class="w-100 d-flex align-items-center combocontent">
                    <div class="comb-image me-3">
                        <img src="{{ $pImage != '' ? asset('images/products/' .$pImage) : '/assets/images/dummy-product.jpg'}}" onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';"  class="text-center" alt="13" title="13">
                    </div>
                    <div>
                        {{ $pro->combo_product->name }}
                    </div>
                    </div>
                </div>
                </label>
            </div>
            </a></li>
        @endforeach
        </ul>
            </div>
        </div>
    </div>
        <hr>
    @empty
        <div class="text-danger">Sorry, no customizations found.</div>
        @endforelse
    </div>
</div>
@endif