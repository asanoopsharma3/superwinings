@include('head')
<main>
    <div class="container">
    <style>
        .error {
            color: red;
            font-weight: bold;
            margin-bottom: 10px;
        }
    </style>
    @include('header')
        <div class="banner">
        @if (session('success'))
        <div class="alert alert-success" role="alert"> {{session('success')}} 
        </div>
        @endif
        @if (session('error'))
        <div class="error" role="alert"> {{session('error')}} 
        </div>
        @endif
        <form id="otp_varification" method="post" name="otp_varification" action="{{ route('otp.getlogin') }}">
        @csrf  
          <div class="data-form">
            
            <h4>ENTER OTP</h4>
                <p>A one time password has been sent to <?php echo !empty($user->mobile_no) ? $user->mobile_no : 'user';  ?> <a href="{{ env('SITE_URL').'/otp/login' }}">change</a></p>
                <input type="text" value=""  placeholder = "OTP" value="" maxlength="4" id= "mobile_otp" name="mobile_otp" autocomplete="off" required/>
                <input type="hidden" name="user_id" value="{{ $user->id }}" />
                <button class="primary">Login</button>
            </div>
        </form>
        </div>
    </div>
</main>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
    $("#otp_varification").validate({
        rules: {
            mobile_otp: {
                required: true,
                digits:true,
                minlength:4,
                maxlength:4
            }
        },
        messages: {
            mobile_no: {
                required: "Please enter otp",
                digits: "Please enter only numbers",
                minlength: "otp must be 4 digits",
                maxlength:"otp must be 4 digits"
                
            }
        },
        submitHandler: function (form) {
          form.submit();
        }
    });
});

</script>
@include('footer')