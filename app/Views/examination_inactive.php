<!DOCTYPE html>
<html lang="en" id = "body">

<head>

    <title>Questa Online Exams| Checkpoint</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Questa Online Exam App helps educators to create fast and instant assessments to evaluate students with ease.">
    <meta name="keywords" content="Quiz, App, Tech, Education, Examination, Testing App, CBT, Computer-based Test, Online Exam, Online Test">
    <meta name="author" content="Bamsquare Education and Tech Enterprise">

    <!-- Favicon icon -->
    <link rel="icon" href="<?= ASSETS_PATH; ?>images/favicon.png" type="image/x-icon">

    <!-- font css -->
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>fonts/feather.css">
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>fonts/fontawesome.css">
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>fonts/material.css">

    <!-- vendor css -->
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>css/style.css" id="main-style-link">

    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>css/magnific-popup.css">

    <style type="text/css">
        
        .auth-wrapper {

            background: rgb(50, 50, 50);
        }

        .question_card {

            box-shadow: 0px 0px 0px transparent !important;
        }

        .question_option {

            cursor: pointer;
        }

        .question_option:hover {
            background: rgb(114, 103, 239) !important;
            border-color: rgb(114, 103, 239) !important;
            color: white !important;
        }

    </style>
</head>

<body style = "overflow-y: auto !important; height: 500px !important">

<!-- [ auth-signin ] start -->
<div class="auth-wrapper">

    <div class="auth-content">

        <div class="card" id = "exam_end_summary">
            <div class="row align-items-center">
                <div class="col-md-12">
                    <div class="card-body text-center">

                        <div class="border-right border-left border-top p-3">
                            <img src="<?= ASSETS_PATH; ?>images/logo.png" alt="questa_logo" width = "150px" class="img-fluid">
                        </div>

                        <div class="border p-3">

                            <div>
                                <div>Hello <b><?= $_SESSION['cbt_app_session']['user']['first_name'] . " " . $_SESSION['cbt_app_session']['user']['last_name']; ?></b>!</div>
                            </div>

                            <div class="text-danger text-center my-3">
                                <i class="fas fa-times-circle fa-2x"></i>
                            </div>
                            
                            <div class="mb-5">
                                The examination <b>(<?= $_SESSION['cbt_app_session']['exam_name']; ?>)</b> is currently not active. So you are unable to take it now.
                            </div>

                            <div>
                                <a href="<?= base_url('examination/sign_out'); ?>" class="btn btn-primary text-white"><i class = "fas fa-arrow-left mr-2"></i> Check Out</a>
                            </div>
                        </div>

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

<script src="<?= ASSETS_PATH; ?>js/jquery.magnific-popup.min.js"></script>

<?= cbt_app_notyf(); ?>
            
<?php unset($_SESSION['cbt_app_session']); ?>

</body>

</html>
