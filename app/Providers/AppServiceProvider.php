<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use DB;
use Schema;
use Config;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

       // error_reporting(0);
        define('PURCHORDER',101);
        define('PURCHINVOICE',102);
        define('SALESORDER',201);
        define('SALESINVOICE',202);
        define('DELIVERYORDER',301);
        define('STOCKMOVEIN',401);
        define('STOCKMOVEOUT',402);

    }

    /**
     * Register any application services.
     *
     * @return void
     */
    
    public function register()
    {
        //
    }
}
