@include('head')
</head>
<body class="plan-banner">
<main>
    <div class="container">
    @include('header')

        <!-- @foreach($plans as $key=>$plan)
        @php
            $planImage = $planImagesArr[$key];
        @endphp
        <div class="col-md-4">
            <img src="<?php //echo asset('images/'.$planImage) ?>"/>
            <h3>{{ ucfirst($plan->duration) }} @ {{ $plan->price }} SZL</h3>
            <button onclick="selectPlan('<?php //echo $plan->id; ?>');"><span>cLICK</span></button>
        </div>
        @endforeach -->
        </div>
        <div class="sec-2">
        <div class="container">
        <div class="row Products-option">
           <div class="col-md-4 basic">
               <img src="<?php echo asset('images/basic.png') ?>">
               <h3>Daily Plan</h3>
               <h1>1 SZL/ Daily</h1>
              
               <h3>Featured Included:</h3>
               <ul>
                <li>Get a chance to win Bumper prize of 100 k SZL and smartphones  by participating in Weekly  Quiz</li>
               </ul>
               <div class="btn" onclick="selectPlan(1);">CLICK<i class="fa fa-long-arrow-right" aria-hidden="true"></i></div>
           </div>
           <div class="col-md-4 sliver">
            <img src="<?php echo asset('images/crystal.webp') ?>">
            <h3>Weekly Plan</h3>
            <h1>3 SZL / Weekly</h1>
            <h3>Featured Included:</h3>
            <ul>
             <li>Get a chance to win Bumper prize of 100 k SZL and smartphones  by participating in Weekly  Quiz</li>
            </ul>
            <div class="btn" onclick="selectPlan(2);">CLICK<i class="fa fa-long-arrow-right" aria-hidden="true"></i></div>
        </div>
        <div class="col-md-4 premium">
            <img src="<?php echo asset('images/diamond-svgrepo-com.svg') ?>">
            <h3>Monthly Plan</h3>
            <h1>15 SZL/ month</h1>
            <h3>Featured Included:</h3>
            <ul>
             <li>Get a chance to win Bumper prize of 100 k SZL and Smart TV  by participating in Monthly  Quiz</li>
            </ul>
            <div class="btn" onclick="selectPlan(3);">CLICk<i class="fa fa-long-arrow-right" aria-hidden="true"></i></div>
        </div>
        </div>
    </div>
      
    
   
</main>
<script>
        function selectPlan(planId){
            const routeUrl = "<?php echo env('SITE_URL').'/subscription-done' ; ?>";
            setTimeout(() => {
                window.location.href = routeUrl;
            }, 5000);
        }
</script>
@include('footer')