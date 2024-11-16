@include('head')
<main>
    <div class="container">
    @include('header')
        <div class="banner">
        <form id="mobile_login" method="post" name="mobile_login">
            <div class="data-form">
            <h4>Login</h4>
            <p>Please enter your Mob and your OTP</p>
            
                <input type="text" value="Mobile number" class="mobile_number" id="mobile_number"/>
                <!-- <input type="text" value="OTP" class="disable"/> -->
                <small>Forgot password?</small>
                <button type="submit" class="primary">Login</button>
                <button class="default"><img src="{{ asset('images/GoogleIcon.svg') }}">  Or, sign-in with Google</button>
                <small class="text-center">Not a member yet?  <a><i>Register</i></a></small>

            </div>
        </form>
        </div>
    </div>
</main>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.19.3/jquery.validate.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
    $("#mobile_login").validate({
        rules: {
            mobile_number: {
                required: true,
                minlength: 3
            },
            email: {
                required: true,
                email: true
            }
        },
        messages: {
            name: {
                required: "Please enter your name",
                minlength: "Your name must consist of at least 3 characters"
            },
            email: {
                required: "Please enter your email",
                email: "Please enter a valid email address"
            }
        },
        submitHandler: function(form) {
            // AJAX request here
        }
    });
});

</script>
@include('footer')