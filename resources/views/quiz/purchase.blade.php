@include('head')
</head>
<body>
<main>
    <div class="container">
    @include('header')
        
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