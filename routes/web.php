<?php

use Illuminate\Support\Facades\Route;

Route::get('time', function () {
    $currentTimeZone = Config::get('app.timezone');
    echo 'Current Date/time: ' . date('Y-m-d H:i:s') . '<br>';
    echo 'Timestamp : ' .strtotime(date('Y-m-d H:i:s')).'<br>';
});



    Route::get('order-notify/{invoice_id}/{email}','OrderController@sendOrderNotify');
    Route::get('order-confirmation/{invoice_id}/{email}','OrderController@sendOrderConfirmation');
    
   
   
Route::group(['middleware' => 'web'], function () {
    
    Route::any('/','FrontendController@index');
    Route::get('menu','ProductController@menu');
    Route::get('menu2','ProductController@menu2');
    Route::get('catering', function () { return view('frontend.catering'); });
    Route::get('contact', function () { return view('frontend.contact'); });
    Route::get('story', function () { return view('frontend.story'); });
   
    
    Route::post('contact','MailController@contact_send')->name('contact-send');
    Route::post('catering','MailController@catering_send')->name('catering-send');
    
    Route::get('product/{slug}','ProductController@productSingle')->name('product');
    
    
    Route::get('product/{slug}/edit','ProductController@productSingleEdit')->name('product-edit');
    
    
    Route::get('product2/{slug}','ProductController@productSingle2')->name('product2');
    
    Route::get('/blog','FrontendController@blogs')->name('blog');
    Route::get('/blog/category/{slug}','FrontendController@blog_catgory');
    Route::get('/blog/{slug}','FrontendController@blog_single')->name('single_blog');                                                                         
    
    Route::get('basket/add','OrderController@addToBasket');
    
    Route::get('load-combo/{id}','OrderController@loadCombo');
    Route::post('load-combo/{id}','OrderController@saveCombo');
        
    Route::get('cart','OrderController@cart');
    
Route::get('cart2','OrderController@cart2');
    Route::get('cart/productadd','OrderController@productadd');
    
    Route::get('cart/edit','ProductController@cartProductEdit');
    
    Route::get('cart/upsell','OrderController@loadUpsell');
    Route::post('cart/upsell','OrderController@saveUpsell');
    
    Route::any('cart/get_addons','OrderController@get_addons');
    Route::get('cart/pickupTime','OrderController@pickupTime');
    Route::any('cart/continue','OrderController@cart_continue');
    Route::any('checkout','OrderController@checkout');
    Route::any('checkout/calculation','OrderController@CheckOutCalculation');
    Route::post('place-order','OrderController@place_order');
    Route::get('gift_code_apply','OrderController@gift_code_apply');
    Route::post('subscription-submit','FrontendController@subscription_submit');
    
    
    Route::get('order-inquiry','FrontendController@order_inquiry');
    Route::post('order-inquiry/{id}/{session}','MailController@order_inquiry')->name('order-inquiry');
    Route::get('share-feedback','FrontendController@share_feedback');
    Route::post('share-feedback/{id}/{session}','MailController@share_feedback')->name('share-feedback');
    
    
    Route::get('sign-up','UserController@signup'); 
    Route::post('sign-up','UserController@postSignup');
    Route::get('sign-in','UserController@signin')->name('signin');
    Route::post('sign-in','UserController@postSignin')->name('login')->middleware('throttle:20,1');
    Route::post('guest','UserController@gustSignin')->name('guest');
    Route::get('signout','UserController@signout')->name('logout');
    Route::get('forget-password','UserController@getRetrievepassword')->name('password.reset');
    Route::post('reset-password','UserController@postRetrievepassword');
    Route::post('new-password','UserController@postResetpassword');
    
    
    Route::get('thankyou','OrderController@thankyou');
    
        Route::group(['middleware' => 'auth'], function () {
        Route::get('myaccount','UserController@myaccount');
        Route::get('myaccount/order-history','UserController@orders');
        Route::get('myaccount/login-security','UserController@login_security');
        Route::get('myaccount/payment-options','UserController@payment_options');
        Route::get('myaccount/contact-us','UserController@contact_us');
        Route::get('myaccount/address','UserController@address');
        
        Route::post('myaccount/address/add','UserController@address_add');
        Route::post('myaccount/address/edit','UserController@address_edit');
        Route::post('myaccount/address/{id}/delete','UserController@address_delete')->name('address_delete');
        
        Route::post('myaccount/login-security','UserController@profile_edit');
        Route::post('myaccount/login-security/password-edit','UserController@password_edit');
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    Route::get('type_search', 'AutoAddressController@quickSearch')->name('get.type');
    
    Route::get('auto-complete-address', [AutoAddressController::class, 'googleAutoAddress']);
  
    Route::get('get_positions','FrontendController@get_positions'); 
    Route::post('subscribe','FrontendController@subscribe');
    Route::get('store-locator','FrontendController@storeLocator');
    
    Route::get('/baking-instructions','RecipeController@instructions');
    //Route::get('/baking-instructions/category/{slug}','RecipeController@blog_catgory');
    Route::get('/baking-instructions/{slug}','RecipeController@instruction_single');
    Route::get('/gallery','FrontendController@gallery');
    Route::get('/media','FrontendController@media');
    // Route::get('/faqs','FrontendController@faq');
    Route::get('/wholesale','FrontendController@wholesale');
    // Route::get('menu','FrontendController@menu');
    Route::get('stores','FrontendController@stores');
    Route::get('stores/{slug}','FrontendController@store_single');
    Route::get('menu/{slug}','ProductController@category_single');
    Route::get('product',  function () { return redirect('/menu'); });
    Route::get('products', function () { return redirect('/menu'); });
    Route::get('category', function () { return redirect('/menu'); });
    
    
    Route::get('gifts','ProductController@gift_cards');
    Route::post('wholesale','MailController@wholesaleForm_send')->name('wholesaleForm-send');
    Route::post('store-career-request','MailController@StoreCareerRequest');    
   
    Route::get('select-location','OrderController@create_sessions');
    Route::get('check-available-city','ProductController@check_available_city');

    Route::get('/product/variation_id_get','ProductController@variation_id_get');
    Route::get('/product/get_product_variation','ProductController@get_product_variation');
    // Route::any('/product/{slug}','ProductController@product_single');
    

    
    Route::get('send-data','OrderController@sendData');
    
    /*Route::get('/nutrition-explorer', function () {
        return view('frontend.nutrition-explorer');
    });*/
    // Route::get('/baking-instructions-test', function () {
    //     return view('frontend.baking-instructions');
    // });
    
    //testing
    Route::get('order-details', function () {
        $order_details = App\Models\Order::orderBy('id','DESC')->first();
        return view('emails.order-notification',compact('order_details'));
    });
    
    Route::get('order-details/{invoice_id}', function ($invoice_id) {
     
        $order_details = App\Models\Order::orderBy('id', 'DESC')->where('invoice_id', $invoice_id)->first();
        return view('emails.order-invoice', compact('order_details'));
    });
    
    
    
    Route::get('/{slug}','FrontendController@page_view');
    
    Route::get('/{redirect}', function ($url) {
        $redirect = \App\Models\Redirect::whereFromUrl(ltrim(request()->getRequestUri(),'/'))->firstOrfail();
        return redirect(url($redirect->to_url), 301);
    })->where('redirect', '.*');
    
}); 
