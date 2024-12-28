<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Exams | View Examination - Essay</title>
    
    <!-- Meta -->
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

    <style type="text/css">
        
        body {
            /*background: white;*/
            height: 100vh;
        }

        #error_image {
            width: 500px;
        }

        @media only screen and (max-width: 900px) {
            #error_image {
                width: 100% !important;
            }
        }
    </style>

</head>

<body class="">

    <div class="text-center p-3">
        <a href="<?= base_url(''); ?>">
            <img src="<?= ASSETS_PATH; ?>images/logo.png" width = "80px">
        </a>
    </div>

    <div class="d-flex align-items-center justify-content-center" style = "height: calc(100vh - 80px);">
        <div class="mx-auto w-75 bg-white rounded p-5">
            <h3 class="font-weight-bold text-center">Oops! Page not found.</h3>

            <p class="text-center">
                It looks like you are trying to access a page that has been deleted or never existed.
            </p>

            <div class="text-center mt-5">
                <a href = "<?= base_url(); ?>" class="btn btn-primary text-white btn-sm px-3"><i class="fas fa-caret-left mr-1"></i> Back to Home</a>
            </div>

            <div class="text-center mt-2">
                <img id = "error_image" src="<?= ASSETS_PATH . '/images/404_errorr.jpg'; ?>">
            </div>
        </div>
    </div>

</body>

</html>
