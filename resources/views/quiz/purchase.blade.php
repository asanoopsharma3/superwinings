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
               <h3>Basic Plan</h3>
               <h1>$9.9/ month</h1>
              
               <h3>Featured Included:</h3>
               <ul>
                <li>24/7 Network Monitoring</li>
                <li>Helpdesk Support (Limited Hours)</li>
                <li>Basic Cybersecurity Protection
                </li>
                <li>24/7 Network Monitoring</li>
               </ul>
               <div class="btn" onclick="selectPlan(1);">Buy Now <i class="fa fa-long-arrow-right" aria-hidden="true"></i></div>
           </div>
           <div class="col-md-4 sliver">
            <img src="<?php echo asset('images/crystal.webp') ?>">
            <h3>Sliver Plan</h3>
            <h1>$9.9/ month</h1>
            
            <h3>Featured Included:</h3>
            <ul>
             <li>24/7 Network Monitoring</li>
             <li>Helpdesk Support (Limited Hours)</li>
             <li>Basic Cybersecurity Protection
             </li>
             <li>24/7 Network Monitoring</li>
            </ul>
            <div class="btn" onclick="selectPlan(2);">Buy Now <i class="fa fa-long-arrow-right" aria-hidden="true"></i></div>
        </div>
        <div class="col-md-4 premium">
            <img src="<?php echo asset('images/diamond-svgrepo-com.svg') ?>">
            <h3>Premium Plan</h3>
            <h1>$9.9/ month</h1>
           
            <h3>Featured Included:</h3>
            <ul>
             <li>24/7 Network Monitoring</li>
             <li>Helpdesk Support (Limited Hours)</li>
             <li>Basic Cybersecurity Protection
             </li>
             <li>24/7 Network Monitoring</li>
            </ul>
            <div class="btn" onclick="selectPlan(3);">Buy Now <i class="fa fa-long-arrow-right" aria-hidden="true"></i></div>
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