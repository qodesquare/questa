<!DOCTYPE html>
<html lang="en">

<head>

    <title>Questa Online Exams | Admin Sign In</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="DashboardKit is made using Bootstrap 5 design framework. Download the free admin template & use it for your project.">
    <meta name="keywords" content="DashboardKit, Dashboard Kit, Dashboard UI Kit, Bootstrap 5, Admin Template, Admin Dashboard, CRM, CMS, Free Bootstrap Admin Template">
    <meta name="author" content="DashboardKit ">


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
<div class="auth-wrapper" style = "background: rgb(240, 240, 240)">
    <div class="auth-content">
        <div class="card">
            <div class="row align-items-center text-center">
                <div class="col-md-12">
                    <div class="card-body">
                        
                        <?php
                            if (isset($_SESSION['login_credentials'])) {
                                $email = $_SESSION['login_credentials']['email'];
                                $password = $_SESSION['login_credentials']['password'];
                            }
                            else {
                                $email = '';
                                $password = '';
                            }
                        
                        ?>

                        <form action="<?= base_url('auth/sign_in'); ?>" method = "POST">
                            
                            <img src="<?= ASSETS_PATH; ?>images/logo.png" alt="" class="img-fluid mb-4" width = "100px">
                            <h4 class="mb-4 font-weight-bold f-w-400">Secured Sign In</h4>
                            <div class="input-group mb-3">
                                <span class="input-group-text"><i data-feather="at-sign"></i></span>
                                <input type="text" class="form-control" placeholder="E.g: moby_dick" name = "username" value = "<?= $email; ?>" autofocus>
                            </div>
                            <div class="input-group mb-4">
                                <span class="input-group-text"><i data-feather="key"></i></span>
                                <input type="password" class="form-control" placeholder="***********" value = "<?= $password; ?>" name = "password">
                            </div>
                            <div class="form-group text-left mt-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                    <label class="form-check-label" for="flexCheckChecked">
                                        Remember me
                                    </label>
                                </div>
                            </div>
                            <button name = "sign_in_btn" class="btn btn-block btn-primary w-100">Signin</button>

                        </form>
                        
                        <?php
                        
                            unset($_SESSION['login_credentials']);
                        ?>
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
