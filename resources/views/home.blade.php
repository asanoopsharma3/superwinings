
@include('head')
<main>
    <div class="container">
        @include('header')
        <div class="banner">
            <div>
            <h3><span>explore</span></h3>
            <h3>the new world</h3>
            <h1>SUPERWINNINGS!!</h1>
            <!-- <div class="border-btn">
                <span> PLEASE REGISTER TO PROCEED</span>
            </div> -->
            <button class="glow-on-hover" type="button"><a class="ragiter" href="{{ env('SITE_URL').'/otp/login' }}">PLEASE REGISTER TO PROCEED</a></button>
            </div>
           
       
        </div>
    </div>
</main>
@include('footer')