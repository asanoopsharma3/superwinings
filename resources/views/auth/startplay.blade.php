@include('head')
</head>
<body>
<main>
    <div class="container">
    @include('header')
        <div class="banner">
            <div class="start-banner">
            <h3>LET’s  DO SOME TRIAL
            <br>
           BEFORE<br>
           START TO PLAY</h3>
            <!-- <div class="border-btn">
                <span> PLEASE REGISTER TO PROCEED</span>
            </div> -->
            <button class="glow-on-hover mt2" type="button"><a href="{{ env('SITE_URL').'/quiz' }}">Play</a></button>
            
            </div>
           
       
        </div>
    </div>
</main>
@include('footer')