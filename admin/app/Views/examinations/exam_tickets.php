<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Quiz App | Examination Tickets</title>
    
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

    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>js/plugins/datatables/datatables.min.css">

    <!-- vendor css -->
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>css/style.css" id="main-style-link">

</head>

<body class="">

    <?= $this->include('includes/side_bar'); ?>
    <!-- [ navigation menu ] end -->
    <!-- [ Header ] start -->
    <?= $this->include('includes/top_bar'); ?>
    <!-- [ Header ] end -->

<!-- [ Main Content ] start -->
<div class="pc-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-10">
                        <div class="page-header-title">
                            <h5 class="m-b-10">My Collations</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Home</a></li>
                            <li class="breadcrumb-item"><a href="<?= base_url('examinations'); ?>">Examinations</a></li>
                            <li class="breadcrumb-item"><a href="<?= base_url('examinations/view_examination/' . $examination['exam_id']); ?>"><?= $examination['exam_title']; ?></a></li>
                            <li class="breadcrumb-item">Tickets</li>
                        </ul>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
            <?php if ($exam_tickets): ?>
            <div class="col-12 text-right mb-4">

                <button onclick="print_result('#tickets_pane');" class="btn btn-outline-secondary"><i class="fas fa-print"></i> Print</button>
                
            </div>
            <?php endif; ?>
            <div class="col-xl-12 col-md-12" id = "tickets_pane">
                <div class="row">

                    <?php if ($exam_tickets): ?>
                    <?php foreach($exam_tickets as $k => $item): ?>
                    <div class="col-sm-12 col-md-4 col-lg-4">
                        <div class="card rounded-0" style = "border: 2px dashed rgb(100, 100, 100); box-shadow: 0px 0px 0px 0px red !important;">
                            <h5 class="card-header font-weight-bold text-center"><?= $examination['exam_title']; ?></h5>
                            <div class="card-body pb-3 pt-3">
                                <div class="row">
                                    <div class="col-12 mb-3">
                                        <div class="row align-items-center justify-content-center">
                                            <div class="col-2 pr-0">
                                                <img src="<?= ASSETS_PATH . ('images/user.png'); ?>" class = "img-fluid rounded">
                                            </div>
                                            <div class="col-8">
                                                <?= $item['first_name'] . " " . $item['middle_name'] . " " . $item['last_name']; ?>
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-6 border-right text-center">
                                        <h5 class="card-title mb-0">Examination Code</h5>
                                        <p class="card-text" style="font-family: consolas;">
                                            <?= $examination['exam_id']; ?>
                                        </p>
                                    </div>

                                    <div class="col-sm-12 col-md-6 text-center">
                                        <h5 class="card-title mb-0">Candidate Code</h5>
                                        <p class="card-text" style="font-family: consolas;">
                                            <?= $item['candidate_id']; ?>
                                        </p>
                                    </div>

                                    <div class="col-sm-12 col-md-12 text-center mt-2 border-top pt-2">
                                        <h5 class="card-title mb-0">Access Token</h5>
                                        <p class="card-text" style="font-family: consolas;">
                                            <?= $item['access_token']; ?>
                                        </p>
                                    </div>

                                    <div class="col-12 mt-3 alert alert-info small text-center mb-0">
                                        <i class = "fas fa-external-link-alt mr-1"></i> https://questaonline.xyz
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; ?>
                    <?php endif; ?>

                    <?php if (!$exam_tickets): ?>

                        <div class="alert text-center text-muted mt-5">
                            <div>
                                <i class="fas fa-3x fa-info-circle"></i>
                                
                            </div>
                            <div class="mt-3 mb-5 small">
                                You have not registered any candidate for this examination!
                                
                            </div>
                            <div>
                                <a href="<?= base_url('candidates'); ?>" class="btn btn-primary"><i class="fas fa-plus-square mr-2"></i>Add Candidate</a>
                            </div>
                        </div>

                    <?php endif; ?>
                    
                </div>
            </div>
            
            <!-- customer-section end -->
        </div>
        <!-- [ Main Content ] end -->
    </div>
    
    <?= $this->include('includes/footer'); ?>
</div>
<!-- [ Main Content ] end -->

    <!-- Required Js -->
    <script src="<?= ASSETS_PATH; ?>js/vendor-all.min.js"></script>
    <script src="<?= ASSETS_PATH; ?>js/plugins/bootstrap.min.js"></script>
    <script src="<?= ASSETS_PATH; ?>js/plugins/feather.min.js"></script>
    <script src="<?= ASSETS_PATH; ?>js/pcoded.min.js"></script>

    <script src="<?= ASSETS_PATH; ?>js/print_this.js"></script>

    <script type="text/javascript">
        
        function print_result(obj) {

            $(obj).printThis();
        }
    </script>

    <?= cbt_app_notyf(); ?>

</body>

</html>
