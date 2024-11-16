
<header>
            <div class="toggler">
                <span class="material-symbols-outlined">
                    menu
                    </span>
            </div>
            <div class="logo"><img src="{{ asset('images/logo.png') }}"></div>

            <div class="menu mobNav">
                <div class="wrap-div">
                <div class="toggler">
                    <span class="material-symbols-outlined">
                        menu
                        </span>
                </div>
                <div class="logo sm-none">SUPERWINNINGS</div>
            </div>
            <ul>
            <li><a>Products</a></li>
            <li><a>features</a></li>
            <li><a>Support</a></li>
            <li><a href="{{ env('SITE_URL').'/otp/login' }}">login</a></li>
           
        </ul>
    </div>
    <div class="cart"><a><img src="{{ asset('images/cart.svg') }}"></a></div>
</header>
    