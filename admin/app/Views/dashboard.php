<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Exams | Home</title>
    
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
                    <div class="col-md-6">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Dashboard</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Home</a></li>
                            <li class="breadcrumb-item">Dashboard</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-xl-12 col-md-12">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-lg-3">
                        <div class="card prod-p-card background-pattern">
                            <div class="card-body">
                                <div class="row align-items-center m-b-0">
                                    <div class="col">
                                        <h6 class="m-b-5">Examinations</h6>
                                        <h3 class="m-b-0">
                                            
                                            <?php

                                                if (is_array($examinations)) {
                                                    echo count($examinations);
                                                } 
                                                else {
                                                    echo 0;
                                                }

                                            ?>
                                        </h3>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-copy text-primary"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-lg-3">
                        <div class="card prod-p-card background-pattern">
                            <div class="card-body">
                                <div class="row align-items-center m-b-0">
                                    <div class="col">
                                        <h6 class="m-b-5">Candidates</h6>
                                        <h3 class="m-b-0">
                                            
                                            <?php

                                                if (is_array($candidates)) {
                                                    echo count($candidates);
                                                } 
                                                else {
                                                    echo 0;
                                                }

                                            ?>

                                        </h3>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-user-tie text-primary"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-lg-3">
                        <div class="card prod-p-card background-pattern">
                            <div class="card-body">
                                <div class="row align-items-center m-b-0">
                                    <div class="col">
                                        <h6 class="m-b-5">Classes</h6>
                                        <h3 class="m-b-0">
                                            
                                            <?php

                                                if (is_array($classes)) {
                                                    echo count($classes);
                                                } 
                                                else {
                                                    echo 0;
                                                }

                                            ?>

                                        </h3>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-graduation-cap text-primary"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-lg-3">
                        <div class="card prod-p-card background-pattern">
                            <div class="card-body">
                                <div class="row align-items-center m-b-0">
                                    <div class="col">
                                        <h6 class="m-b-5">Subjects</h6>
                                        <h3 class="m-b-0">
                                            
                                            <?php

                                                if (is_array($subjects)) {
                                                    echo count($subjects);
                                                } 
                                                else {
                                                    echo 0;
                                                }

                                            ?>

                                        </h3>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-book text-primary"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card feed-card">
                    <div class="card-header">
                        <h5 class = "mb-0">My Exam</h5>
                        <div>Examinations assigned to you</div>
                    </div>
                    <div class="feed-scroll" style="position:relative;">
                        <div class="card-body">

                            <div class="table-responsive">
                                <table class="table table-hover" id = "items_table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Title</th>
                                            <th>Class</th>
                                            <th>Subject</th>
                                            <th>Date Added</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if ($examinations): rsort($examinations); ?>
                                        <?php foreach($examinations as $k => $item):

                                            // if ($k > 4)
                                            //     break;
                                        ?>
                                        <tr>
                                            <td><?= $k + 1; ?></td>
                                            <td>
                                                
                                                <div class="font-weight-bold">
                                                    <a href="<?= base_url('examinations/view_examination/' . $item['exam_id']); ?>"><?= $item['exam_title']; ?></a>
                                                </div>
                                                <div class="small"><?= $item['exam_id']; ?></div>
                                                
                                            </td>
                                            <td><?= $item['class_name']; ?></td>
                                            <td><?= $item['subject_name']; ?></td>
                                            <td><?= $item['date_created']; ?></td>
                                        </tr>
                                        <?php endforeach; ?>
                                        <?php endif; ?>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
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

    <script src="<?= ASSETS_PATH; ?>js/plugins/datatables/datatables.min.js"></script>

    <?= cbt_app_notyf(); ?>

    <script type="text/javascript">
        
        $(document).ready(function() {
          $('#items_table').DataTable();
        });

    </script>

</body>

</html>
