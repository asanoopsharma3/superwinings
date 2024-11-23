@include('head')
</head>
<body class="plan-banner">
<main>
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
        @foreach($plans as $key=>$plan)
        @php
            $planImage = $planImagesArr[$key];
        @endphp
        <div class="col-md-4">
            <img src="<?php echo asset('images/'.$planImage) ?>"/>
            <h3>{{ ucfirst($plan->duration) }} @ {{ $plan->price }} SZL</h3>
            <button onclick="selectPlan('<?php echo $plan->id; ?>');"><span>cLICK</span></button>
        </div>
        @endforeach
     </div>
    </div>
</main>
<script>
        function selectPlan(planId){
            const routeUrl = "<?php echo env('SITE_URL').'/subscription-done' ; ?>";
            setTimeout(() => {
                window.location.href = routeUrl;
            }, 2000);
        }
</script>
@include('footer')