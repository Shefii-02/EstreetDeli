<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
        $theme = \App\Models\Theme::first();
        view()->share('title', 'EStreetDeli');
        view()->share('keywords', 'EStreetDeli');
        view()->share('description', 'EStreetDeli');
        view()->share('theme', $theme->theme_code ?? 'theme-1');

        
        // $session_string = session('session_string');
        // $basketCart = \App\Models\Basket::with('items')->where('session',$session_string)->where('status',0)->first();
        // view()->share('basketCart', $basketCart);
        

    }
}


