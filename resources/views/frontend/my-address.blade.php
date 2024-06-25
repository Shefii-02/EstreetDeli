
@extends('layouts.frontend')
@section('styles')
<style>
   .myaddress .box {
            border-style: dashed;
            height: 220px;
            width: 342px;
            border-width: 2px;
            box-sizing: border-box;
            border-color: #C7C7C7;
            text-align: center;
            display: flex;
            border-radius: 7px;
            cursor: pointer;
            flex-direction: column;
            flex-wrap: nowrap;
            justify-content: center;
    }

</style>
@endsection
@section('contents')
      
   
    <section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-center" style="height: 350px;">
                    <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5">My Address</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="page_section pb-5 pt-5">
        <div class="container">
           
            <div class="row justify-content-center">
                <div class="col-md-10 ">
                    <div class="mb-3">
                        <a href="{{ url('/myaccount/order-history') }}" class="btn btn-light px-4 oswald border-0 mb-2">
                            My Orders
                        </a>
                        <a href="{{ url('/myaccount/login-security') }}" class="btn btn-light px-4 oswald border-0 mb-2">
                            Profile and Security
                        </a>
                        <a href="#" class="btn btn-light px-4 oswald border-0 bg-theme mb-2">
                            My Addresses
                        </a>
                    </div>              
                    <nav aria-label="breadcrumb" style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);"  class="mb-2">
                      <ol class="ms-0 breadcrumb">
                        <li class="breadcrumb-item"><a href="{{url('myaccount')}}">My Account</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Address List</li>
                      </ol>
                    </nav>
                    <div class="col-md-12 myaddress">
                        <div class="row">
                            <div class="col-lg-4 d-flex justify-content-center mb-2">
                                <div class="box w-100 h-100 py-4" data-bs-toggle="modal" data-bs-target="#new_Modal">
                                  <i class="bi bi-journal-plus fs-1 mb-3 text-muted"></i>
                                  <p class="h3 ff-sunset-boulevard fs-2">Add Address</p>
                                </div>
                            </div>
                            @foreach($myadd as $item)
                            <div class="col-md-6 col-lg-4 mb-2">
                                <div class="card border-1 card-header p-0 rounded rounded h-100">
                                        <div class="card-body text-dark fw-bold">
                                             <div class="d-flex w-100 justify-content-end">
                                                 @if($item->base == '1')
                                                <input type="radio" {{$item->base == '1' ? 'checked' : '' }}> {{$item->base == '1' ? 'Default' : '' }} 
                                                @endif
                                             </div>
                                           <div class="d-flex flex-column fs-5">
                                                <small class="oswald fs-5">{{$item->firstname .' '. $item->lastname}}</small>
                                                <small class="fw-normal">{{$item->address}}</small>
                                                <small class="fw-normal">{{$item->city.','.$item->postalcode}}</small>
                                                <small class="fw-normal">{{$item->province.','.$item->country}}</small>
                                            </div>
                                        </div>
                                        <div class="card-footer d-flex border-0 bg-transparent">
                                            <ul class="list-unstyled ms-auto mb-0 d-flex align-items-center">
                                                <li class="" >
                                                    <small class="add_edit btn border-0 btn-light text-dark cursor-pointer" data-firstname="{{$item->firstname}}" data-lastname="{{$item->lastname}}"  data-id="{{$item->id}}" data-address="{{$item->address}}" data-city="{{$item->city}}" data-postalcode="{{$item->postalcode}}" data-province="{{$item->province}}" data-country="{{$item->country}}" data-base="{{$item->base}}"><i class="bi bi-pencil-square"></i></small></li> 
                                                @if($myadd->count()>1)
                                                <li class="ms-2">
                                                    <form method="POST" action="{{route('address_delete',$item->id)}}" class="validated mb-0 not-ajax" id="add_{{$item->id}}">
                                                        @csrf()
                                                        <button type="submit" class="btn border-0 btn-light text-dark"  data-id="add_{{$item->id}}">
                                                            <i class="bi bi-trash"></i>
                                                        </button>
                                                    </form>
                                                </li>
                                                @endif
                                            </ul>    
                                        </div>
                                </div> 
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    
    <!-- Modal -->
    <div class="modal fade" id="new_Modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="new_ModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title ff-sunset-boulevard fw-normal fs-2" id="new_ModalLabel">Add Address</h5>
            <i class=" fa fa-times text-dark fa-2x" data-bs-dismiss="modal" aria-label="Close"></i>
          </div>
          
          <div class="modal-body">
              <form action="{{url('myaccount/address/add')}}" method="POST" id="add_address" class="row address-form" novalidate>
                  @csrf()
                  <div class="col-lg-6 form-group mb-2">
                      <label class="mb-2" for="">First Name</label>
                      <input type="text" required autocomplete="off"  form="add_address" class="form-control" name="firstname">
                  </div>
                  <div class="col-lg-6 form-group mb-2">
                      <label class="mb-2" for="">Last Name</label>
                      <input type="text" required autocomplete="off"  form="add_address" class="form-control" name="lastname">
                  </div>
                  <div class="col-lg-12 form-group mb-2">
                      <label class="mb-2" for="">Address</label>
                      <textarea autocomplete="off"  class="form-control address_fill" form="add_address" name="address"></textarea>
                  </div>
                  <div class="col-lg-6 form-group mb-2">
                      <label class="mb-2" for="">Postal Code</label>
                      <input type="text" required autocomplete="off" maxlength="7" form="add_address" class="form-control postalCode_fill" name="postalcode">
                  </div>
                  <div class="col-lg-6 form-group mb-2">
                      <label class="mb-2" for="">City</label>
                      <input type="text" required autocomplete="off"  form="add_address" class="form-control city_fill" name="city">
                  </div> 
                  
                  <div class="col-lg-6 form-group mb-2">
                      <label class="mb-2" for="">Province</label>
                        <select class="form-control province_fill" form="add_address" name="province" id="province" required>
                            <option value="">Select Province</option>
                            @foreach($province as $item)
                             <option value="{{$item->name}}" {{$item->code == old('province') ? 'selected' : ''}}>
                              {{$item->name}}
                              </option>
                            @endforeach
		                </select>
                  </div>
                  <div class="col-lg-6 form-group mb-2 d-none">
                      <label class="mb-2" for="">Country</label>
                      <input type="text" value="CA" required autocomplete="off" form="add_address"  class="form-control" name="country">
                  </div>
                  <div class="col-lg-12 form-group mb-2">
                    <div class="form-check form-switch">
                          <input class="form-check-input" form="add_address" type="checkbox" name="base" id="flexSwitchbase">
                          <label class="form-check-label" for="flexSwitchbase">Default</label>
                    </div>
                      
                  </div>
              </form>
          </div>
          <div class="modal-footer">
                <button type="button" class="btn btn-dark btn-sm tertiary-btn" data-bs-dismiss="modal">Close</button>
                <button type="submit"form="add_address"  class=" btn btn-sm tertiary-btn ">Save</button>
              </div>
        </div>
      </div>
    </div>
    
    
    <!------------------------------------------------------------------------------------------------------------->
    
    
      <!-- Modal -->
    <div class="modal fade" id="edit_Modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="new_ModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title ff-sunset-boulevard fw-normal fs-2" id="new_ModalLabel">Edit Address</h5>
            <i class=" fa fa-times text-dark fa-2x" data-bs-dismiss="modal" aria-label="Close"></i>
          </div>
          <div class="modal-body">
              <form action="{{url('myaccount/address/edit')}}" method="POST" id="edit_address" class="row address-form" novalidate>
                  @csrf()
                  <div class="col-lg-6 form-group mb-2">
                      <label class="mb-2" for="Editfirstname">First Name</label>
                      <input type="hidden" name="id" id="id"  form="edit_address" required>
                      <input type="text" required autocomplete="off"  class="form-control" form="edit_address" name="firstname" id="Editfirstname">
                  </div>
                  <div class="col-lg-6 form-group mb-2">
                      <label class="mb-2" for="Editlastname">Last Name</label>
                      <input type="text" required autocomplete="off"  class="form-control" form="edit_address" name="lastname" id="Editlastname">
                  </div>
                  <div class="col-lg-12 form-group mb-2">
                      <label class="mb-2" for="Editaddress">Address</label>
                      <textarea autocomplete="off"  class="form-control address_fill" name="address" form="edit_address" id="Editaddress"></textarea>
                  </div>
                  <div class="col-lg-6 form-group mb-2">
                      <label class="mb-2" for="Editpostalcode">Postal Code</label>
                      <input type="text" required autocomplete="off" maxlength="7"  class="form-control postalCode_fill" form="edit_address" name="postalcode" id="Editpostalcode">
                  </div>
                  <div class="col-lg-6 form-group mb-2">
                      <label class="mb-2" for="Editcity">City</label>
                      <input type="text" required autocomplete="off"  class="form-control city_fill" form="edit_address" name="city" id="Editcity">
                  </div> 
                  <div class="col-lg-6 form-group mb-2">
                      <label class="mb-2" for="Editprovince">Province</label>
                        <select class="form-control province_fill" form="edit_address" name="province" id="Editprovince" required>
                            <option value="">Select Province</option>
                            @foreach($province as $item)
                             <option value="{{$item->name}}" {{$item->code == old('province') ? 'selected' : ''}}>
                              {{$item->name}}
                              </option>
                            @endforeach
		                </select>
                  </div>
                  <div class="col-lg-6 form-group mb-2 d-none">
                      <label class="mb-2" for="Editcountry">Country</label>
                      <input type="text" required value="CA" autocomplete="off"  class="form-control" form="edit_address" name="country" id="Editcountry">
                  </div> 
                  <div class="col-lg-12 form-group mb-2">
                    <div class="form-check form-switch">
                          <input class="form-check-input" form="edit_address" type="checkbox" name="base" id="Editbase">
                          <label class="form-check-label" for="Editbase">Default</label>
                    </div>
                      
                  </div>
              </form>
          </div>
          <div class="modal-footer">
                <button type="button" class="btn btn-dark btn-sm tertiary-btn" data-bs-dismiss="modal">Close</button>
                <button type="submit"form="edit_address"  class=" btn btn-sm tertiary-btn ">Save</button>
              </div>
        </div>
      </div>
    </div>
@endsection    


@section('scripts')
<script>

    
    $('body').on('click', '.add_edit', function () {
        
        var firstname   = $(this).data('firstname');
        var lastname    = $(this).data('lastname');
        var id          = $(this).data('id');
        var address     = $(this).data('address');
        var city        = $(this).data('city');
        var postalcode  = $(this).data('postalcode');
        var province    = $(this).data('province');
        var country     = $(this).data('country');
        var base        = $(this).data('base');


        $('#Editfirstname').val(firstname)
        $('#Editlastname').val(lastname)
        $('#id').val(id)
        $('#Editaddress').val(address)
        $('#Editcity').val(city)
        $('#Editpostalcode').val(postalcode)
        $('#Editprovince').val(province)
        $('#Editcountry').val(country)
        if(base == 1){
            $("#Editbase").prop("checked", true);
        }
        else
        {
             $("#Editbase").prop("checked", false);
        }
        
        $('#edit_Modal').modal('show')
    });
        
    
    
    

</script>
@endsection
                 