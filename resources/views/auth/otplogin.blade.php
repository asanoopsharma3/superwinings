@include('head')
<main>
    <div class="container">
    @include('header')
        <div class="banner">
        @if (session('error'))
        <div class="error" role="alert"> {{session('error')}} 
        </div>
        @endif
        <form id="mobile_login" method="post" name="mobile_login" action="{{ route('otp.generate') }}">
        @csrf  
          <div class="data-form">
            <h4>LOGIN</h4>
            <p>Please enter your Mobile number</p>
                <input type="text" placeholder="Mobile number" value="" name="mobile_no" class="mobile_number" maxlength="10" autocomplete="off" required/>
                <!-- <input type="text" value="OTP" class="disable"/> -->
                <!-- <small>Forgot password?</small> -->
                <button class="primary">Generate OTP</button>
                <!-- <button class="default"><img src="{{ asset('images/GoogleIcon.svg') }}">  Or, sign-in with Google</button>
                <small class="text-center">Not a member yet?  <a href="{{ env('SITE_URL').'/register' }}"><i>Register</i></a></small> -->

            </div>
        </form>
        </div>
    </div>
</main>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
    $("#mobile_login").validate({
        rules: {
            mobile_no: {
                required: true,
                digits:true,
                minlength:8,
                maxlength:10
                
            }
        },
        messages: {
            mobile_no: {
                required: "Please enter mobile no",
                digits: "Please enter only numbers",
                minlength: "Your name must consist of at least 8 number",
                maxlength:"Invalid mobile number, must be 10 digits"
            }
        },
        submitHandler: function (form) {
          form.submit();
        }
    });
});

</script>
@include('footer')