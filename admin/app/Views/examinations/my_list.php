<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Exams | My List</title>
    
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
                            <h5 class="m-b-10">Examinations</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Home</a></li>
                            <li class="breadcrumb-item">Examinations</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-xl-12 col-md-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <div>
                            <h5>List of Examinations</h5>
                            <span class="d-block m-t-5">Showing list of examinations assigned to you.</span>
                        </div> 
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover" id = "items_table">
                                <thead>
                                    <tr>
                                        <th style="width: 1%">#</th>
                                        <th>Title</th>
                                        <th>Class</th>
                                        <th>Subject</th>
                                        <th>Status</th>
                                        <th class="text-center">Action(s)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if ($examinations): rsort($examinations); ?>
                                    <?php foreach($examinations as $k => $item): ?>
                                    <tr>
                                        <td><?= $k + 1; ?></td>
                                        <?php
                                            if ($item['type'] == 1)
                                                $type = 'Multichoice';
                                            else if ($item['type'] == 2)
                                                $type = 'Essay';
                                            else
                                                $type = '';
                                        ?>
                                        <td class="text-wrap">
                                            <div">
                                                <div class="font-weight-bold"><?= $item['exam_title']; ?></div>
                                                <div class="small"><?= $type; ?></div>
                                            </div>
                                        </td>
                                        <td><?= $item['class_name']; ?></td>
                                        <td><?= $item['subject_name']; ?></td>
                                        <td>
                                            <?php if ($item['status'] == 1): ?>
                                                <span data-toggle = "tooltip" title = "Examination is currently running online..." class="badge bg-light-success">Online</span>
                                            <?php endif; ?>

                                            <?php if ($item['status'] == 0): ?>
                                                <span data-toggle = "tooltip" title = "Examination is offline..." class="badge bg-light-danger">Offline</span>
                                            <?php endif; ?>
                                        </td>
                                        <td class="text-center">
                                            <a href="<?= base_url('examinations/view_examination/' . $item['exam_id']); ?>" class="btn btn-outline-primary btn-sm"><i class="fas fa-eye"></i></a>
                                            
                                        </td>
                                    </tr>
                                    <?php endforeach; ?>
                                    <?php endif; ?>
                                </tbody>
                            </table>
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

        function delete_item(id) {

            var prompt = confirm("Are you sure to delete this examination?");

            if (prompt == 1) {
                window.location.href = "<?= base_url('examinations/delete_examination/'); ?>/" + id;
            }
        }

    </script>

</body>

</html>
