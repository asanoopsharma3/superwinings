@include('head')
    <div class="container">
    @include('header')
     <div class="plan-info">
        <div>
        <img src="{{ asset('images/plan.svg') }}">
    </div>
    <div>
        <h3>IT’S GREAT <br>
            TO HAVE </h3>
           <h3 class="gri-text"> YOU! </h3>
            <p>Please select the play  pack to
                proceed</p>
            </div>
     </div>
     <div class="row">
        <div class="col-md-4">
            <img src="{{ asset('images/Rectangle 8.svg) }}"/>
            <h3>Daily @ 1 SZL</h3>
            <button><span>cLICK</span></button>
        </div>
        <div class="col-md-4">
            <img src="{{ asset('images/Rectangle 9.svg) }}"/>
            <h3>Weekly @ 3 SZL</h3>
            <button><span>cLICK</span></button>
        </div>
        <div class="col-md-4">
            <img src="{{ asset('images/Rectangle7.svg) }}"/>
            <h3>Monthly @ 15 SZL</h3>
            <button><span>cLICK</span></button>
        </div>
     </div>
    </div>
</main>
</body>
</html>