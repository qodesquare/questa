<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Quiz App | Exam Results - Essay</title>
    
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

    <style type="text/css">
        
        .special_border, .special_border th, .special_border td {

            border-color: rgb(100, 100, 100) !important;
        }
        
        .text-wrap {
            
            word-wrap: break-word !important;
        }

        .progress {
            border-radius: 999999px;
            overflow: hidden;
        }

        .pass_mark_div:hover {

            background: rgb(230, 230, 230);
            cursor: pointer;
        }

    </style>

</head>

<body class="" id = "body">

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
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Examinations</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Home</a></li>
                            <li class="breadcrumb-item"><a href="<?= base_url('examinations'); ?>">Examinations</a></li>
                            <li class="breadcrumb-item"><a href="<?= base_url('examinations/view_examination/' . $examination['exam_id']); ?>"><?= $examination['exam_title']; ?></a></li>
                            <li class="breadcrumb-item">Result</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row justify-content-center">
            <div class="col-xl-12 col-md-12 col-lg-12 col-sm-12">

                <div class="card">
                    <div class="card-header">
                        <div class="d-flex align-items-center justify-content-between">
                            <div>
                                <h5>Print Results</h5>
                                <span class="d-block m-t-5">Showing list of candidates' attempts for this examination.</span>
                            </div>
                            <div onclick="show_pass_mark_modal();">
                                <div class="border p-2 rounded small mr-1 text-center pass_mark_div">
                                    Pass mark for this exam is set at <span class="font-weight-bold"><span id = "pass_mark_text"><?= number_format($examination['pass_mark'], 1); ?></span>%</span>.
                                    <div>Click to change</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body table-border-style">
                        <div class="table-responsive">
                            <table class="table" id = "items_table">
                                <thead>
                                    <tr>
                                        <th>Sort ID</th>
                                        <th>Candidate</th>
                                        <th>Time Spent</th>
                                        <th>Date</th>
                                        <th class="text-right">Action(s)</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php if ($examination_attempts): rsort($examination_attempts); ?>
                                    <?php foreach($examination_attempts as $k => $item): ?>
                                    <tr>
                                        <td><?= $item['exam_attempt_id']; ?></td>
                                        <td>
                                            <a href="<?= base_url('candidates'); ?>">
                                                <?= $item['first_name'] . " " . $item['middle_name'] . " " . $item['last_name']; ?>
                                            </a>
                                                
                                        </td>

                                        <?php
                                                
                                            $time_spent = $item['time_spent'];

                                            $hour = floor($time_spent / 3600);
                                            $minute = floor((($time_spent / 3600) - $hour) * 60);
                                            $seconds = round((((($time_spent / 3600) - $hour) * 60) - $minute) * 60);

                                            $percentage = round(($time_spent / ($examination['duration'] * 60)) * 100, 1);

                                        ?>

                                        <td>
                                            <?php
                                                $time_spent = $hour . "h : " . $minute . "m : " . $seconds . "s";
                                            ?>
                                            <div style = "cursor: default" data-toggle = "tooltip" title="<?= $item['first_name'] . " " . $item['last_name']; ?> spent <?= $percentage; ?>% of the total time for this examination.">
                                                <div class="small">
                                                    <span>
                                                        <?= $time_spent; ?>
                                                    </span>
                                                </div>

                                                <div class="progress" style = "height: 2px">
                                                    <div class="progress-bar bg-success" role="progressbar" style="width: <?= $percentage; ?>%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                                
                                        </td>
                                        <td><?= date("jS M, Y h:i:sa", strtotime($item['attempt_date_created'])); ?></td>
                                        <td class="text-right">

                                            <a target="_blank" href="<?= base_url('examinations/view_result/' . $item['entry_id'] . "/" . $examination['exam_id']); ?>" class = "btn btn-outline-primary btn-sm">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                            
                                            <button onclick="delete_attempt('<?= $item['entry_id']; ?>', '<?= $examination['exam_id']; ?>');" class="btn btn-sm btn-outline-danger">
                                                <i class="fas fa-trash-alt"></i>
                                            </button>
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

    <div class="modal fade" id="pass_mark_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title font-weight-bold">Pass Mark</h5>
                    <button type="button" class="" style="background: transparent !important;" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" id = "edit_target">

                    <p>
                        Please input Pass mark in percentage (%) <i class="fas fa-spinner fa-spin d-none" id = "set_mark_notif"></i>
                    </p>
                
                    <form id = "pass_mark_form">
                        <div class="row">
                            <div class="col-9 pr-0">
                                <input min="1" max="100" step="0.1" id = "pass_mark" value = "<?= number_format($examination['pass_mark'], 1); ?>" class="form-control rounded-0" type="number" name="">
                            </div>
                            <div class="col-3 pl-0">
                                <button type="submit" class="rounded-0 btn btn-success">Change</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <!-- Required Js -->
    <script src="<?= ASSETS_PATH; ?>js/vendor-all.min.js"></script>
    <script src="<?= ASSETS_PATH; ?>js/plugins/bootstrap.min.js"></script>
    <script src="<?= ASSETS_PATH; ?>js/plugins/feather.min.js"></script>
    <script src="<?= ASSETS_PATH; ?>js/pcoded.min.js"></script>

    <?= cbt_app_notyf(); ?>

    <script src="<?= ASSETS_PATH; ?>js/print_this.js"></script>
    
    <script src="<?= ASSETS_PATH; ?>js/plugins/notify.min.js"></script>
    
    <script src="<?= ASSETS_PATH; ?>js/plugins/datatables/datatables.min.js"></script>

    <script type="text/javascript">
    
        $(document).ready(function() {
            $('#items_table').DataTable({
                order: [[0, 'desc']],
                lengthMenu: [
                    [25, 50, 100, -1],
                    [25, 50, 100, 'All'],
                ],
            });
          
        });
        
        function show_result(obj) {

            $(obj).fadeToggle();
        }

        function delete_attempt(entry_id, exam_id) {

            var prompt = confirm("Are you sure to delete the examination attempt? This action cannot be undone. Proceed with care!");

            if (prompt == 1) {

                window.location.href = "<?= base_url('candidates/delete_exam_attempt/'); ?>/" + entry_id + "/" + exam_id;
            }
        }

        function print_result(obj) {

            $(obj).printThis();
        }

        function show_pass_mark_modal() {

            $("#pass_mark_modal").modal('show');
        }

        $("#pass_mark_form").submit((event) => {

            event.preventDefault();
            set_pass_mark();
        });

        function set_pass_mark() {

            $("#set_mark_notif").toggleClass('d-none');

            pass_mark = $("#pass_mark").val();

            $.ajax({
                url: '<?= base_url('examinations/set_pass_mark/' . $examination['exam_id']); ?>',
                type: 'POST',
                data: {
                    set_pass_mark: pass_mark
                },
                success: function(data) {

                    $.notify(
                        "Operation success! Pass mark set for examination.",
                        'success'
                    );

                    $("#pass_mark_text").text(pass_mark);
                    $("#set_mark_notif").toggleClass('d-none');

                    $("#pass_mark_modal").modal('hide');

                },
                error: function(error) {
                    console.log(error);

                    $.notify(
                        "Operation error! Something went wrong.",
                        'error'
                    );

                    $("#set_mark_notif").toggleClass('d-none');
                    $("#pass_mark_modal").modal('hide');
                }
            });
        }

    </script>

</body>

</html>
