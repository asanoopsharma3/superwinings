
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
            @if (empty(auth()->id()))
            <li><a href="{{ env('SITE_URL').'/otp/login' }}">login</a></li>
            @else
            <li><a href="{{ env('SITE_URL').'/logout' }}">logout</a></li>
            @endif
        </ul>
    </div>
    @if (!empty(auth()->id()) && isset($correctAnswerCount))
    <div class="cart"><h2>Quize Summary</h2>
    <p>Correct Answers: {{ !empty($correctAnswerCount) ? $correctAnswerCount : 0 }}</p></div>
     @endif
</header>
    