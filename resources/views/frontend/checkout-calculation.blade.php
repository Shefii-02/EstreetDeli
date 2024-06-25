@php
    $calculations = json_decode($calculations);
@endphp


<tr class="cart-subtotal sub-total">
    <th>Subtotal</th>
    <td>
        <span class="f-p sub_total">{{ getPrice($calculations->subTotal) }}</span>
    </td>
</tr>
@if($calculations->Discount)
<tr class="cart-subtotal sub-total">
    <th>Discount</th>
    <td>
        <span class="f-p discount_amount">-{{ getPrice($calculations->Discount) }}</span>
    </td>
</tr>
@endif
<tr class="cart-subtotal shpping-pickup">
     @if ($basket->order_type != 'pickup')
        <th class="f-h">Shipping Charge</th>
        <td class="f-p shipping_pickup_charge">
            {{ getPrice($calculations->ShippingCharge ?? 0) }}
        </td>
    @else
        <th class="f-p shipping_pickup_charge d-none">
            {{ getPrice($calculations->ShippingCharge ?? 0) }}
        </th>
    @endif
</tr>
<tr class="cart-subtotal sub-total">
    <th>Tax Amount</th>
    <td>
        <span class="f-p tax_amount">{{ getPrice($calculations->TotalTax) }}</span>
    </td>
</tr>
<tr class="order-total">
    <th class="f-h" style="    border-bottom: 0px solid #ddd;">Total</th>
    <td style="    border-bottom: 0px solid #ddd;">
        <strong class="f-p total_price">{{ getPrice($calculations->grandTotal) }}</strong>
    </td>
</tr>

