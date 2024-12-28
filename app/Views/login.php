<!DOCTYPE html>
<html lang="en">

<head>

    <title>Questa Online Exams | Log In</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Questa Online Exam App helps educators to create fast and instant assessments to evaluate students with ease.">
    <meta name="keywords" content="Quiz, App, Tech, Education, Examination, Testing App, CBT, Computer-based Test, Online Exam, Online Test">
    <meta name="author" content="Bamsquare Education and Tech Enterprise">
    
    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="<?= base_url(); ?>">
    <meta property="og:title" content="Questa Online Examination App">
    <meta property="og:description" content="For Educators, Students and enthusiasts">
    <meta property="og:image" content="<?= ASSETS_PATH; ?>images/favicon.png">

    <!-- Favicon icon -->
    <link rel="icon" href="<?= ASSETS_PATH; ?>images/favicon.png" type="image/x-icon">

    <!-- font css -->
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>fonts/feather.css">
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>fonts/fontawesome.css">
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>fonts/material.css">

    <!-- vendor css -->
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>css/style.css" id="main-style-link">


</head>

<!-- [ auth-signin ] start -->
<div class="auth-wrapper" style="background: rgb(240, 240, 240);">
    <div class="auth-content">
        <div class="card">
            <div class="card-header border-0" 
            style = "margin: -8px; height: 140px; background-position: center; background-size: cover; 
            background-image: url('https://images.unsplash.com/photo-1497294815431-9365093b7331?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80')">
                
            </div>
            <div class="row align-items-center text-center">
                <div class="col-md-12">
                    <div class="card-body">

                        <form id = "checker_form" action="<?= base_url('auth/login'); ?>" method = "POST">
                            
                            <img src="<?= ASSETS_PATH; ?>images/logo.png" alt="questa_logo" width = "100px" class="img-fluid mb-4">
                            <h4 class="mb-4 font-weight-bold f-w-400">App Login</h4>
                            <div class="input-group mb-3">
                                <span class="input-group-text"><i data-feather="at-sign"></i></span>
                                <input type="email" class="form-control" placeholder="Email" id = "email" name = "email" required>
                            </div>

                            <div class="input-group mb-4">
                                <span class="input-group-text"><i data-feather="key"></i></span>
                                <input type="password" class="form-control" placeholder="Password" id = "password" name = "password" required>
                            </div>

                            <button name = "candidate_login" class="btn btn-block btn-primary w-100">Log In</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- [ auth-signin ] end -->

<!-- Required Js -->
<script src="<?= ASSETS_PATH; ?>js/vendor-all.min.js"></script>
<script src="<?= ASSETS_PATH; ?>js/plugins/bootstrap.min.js"></script>
<script src="<?= ASSETS_PATH; ?>js/plugins/feather.min.js"></script>
<script src="<?= ASSETS_PATH; ?>js/pcoded.min.js"></script>

<?= cbt_app_notyf(); ?>

</body>

</html>
