<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Exams | Exam Result - Multichoice Type | <?= $exam_attempt['first_name'] . " " . $exam_attempt['middle_name'] . " " . $exam_attempt['last_name']; ?></title>
    
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
        
        .special_border, .special_border th, .special_border td {
            border-color: rgb(100, 100, 100) !important;
        }
        
        .text-wrap {
            word-wrap: break-word !important;
        }

    </style>

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
        <div class="row">
            <div class="col-xl-12 col-md-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <div>
                            <h5>View Result</h5>
                            <span class="d-block m-t-5">Showing analysis of <b><?= $examination['exam_title']; ?></b> result for <b><?= $exam_attempt['first_name'] . " " . $exam_attempt['middle_name'] . " " . $exam_attempt['last_name']; ?></b>.</span>
                        </div>
                        <div>
                            <button onclick = "send_transcript(this);" data-toggle = "tooltip" title = "Send result to candidate's email address" href="<?= base_url('examinations/add_examination'); ?>" class="btn btn-outline-primary btn-sm">
                                <i class="fas fa-file-export"></i> Email Result
                            </button>

                            <button class="btn btn-outline-secondary btn-sm" onclick = "print_result('#result_panel');"><i class="fas fa-print"></i> Print</button>
                        </div>
                    </div>
                    
                </div>

                <div class="card">
                    <div class="card-body pb-2">
                        <h5 class="card-title mb-2">Submitted Files</h5>

                        <?php if ($uploaded_submissions): ?>
                        <div class="row mt-4">
                            <?php foreach($uploaded_submissions as $k => $file): ?>
                            <div class="col-sm-6 col-md-3">
                                <div class="card text-center border" style="box-shadow: 0 0 0 0">
                                    <div class="card-body row justify-content-between">
                                        <div class="small col-12"><?= $file['filename']; ?></div>
                                        <div class="card-text col-12">
                                            <a class="small" href="<?= UPLOAD_PATH . 'students_uploads/' . $file['file_path']; ?>">View</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php endforeach; ?>
                        </div>
                        <?php endif; ?>

                        <?php if (!$uploaded_submissions): ?>

                            <div class="alert alert-info mt-3" role="alert">
                                <i class="fas fa-info-circle mr-2"></i><i><?= $exam_attempt['first_name'] . " " . $exam_attempt['middle_name']; ?></i> did not upload any file(s) for this examination.
                            </div>
                        <?php endif; ?>
                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <div id = "result_panel" class="row justify-content-center">

                            <div class="col-md-12 col-sm-12 mb-3" >
                                
                                <div class="p-4 border special_border rounded">
                                    <div class = "d-flex justify-content-between">
                                        <div>
                                            <h3>Exam Result</h3>

                                            <div class="small mb-4">
                                                <span id = "exam_name"><?= $examination['exam_title']; ?></span> - Multichoice Type
                                            </div>

                                            <div class="mb-4">

                                                <div><b id = "candidate_name"><?= $exam_attempt['first_name'] . " " . $exam_attempt['middle_name'] . " " . $exam_attempt['last_name']; ?></b></div>
                                                <div class="small"><?= $exam_attempt['candidate_id']; ?></div>
                                                
                                            </div>
                                        </div>
                                        <div style = "font-family: consolas" id = "exam_date">
                                            <?= date("jS M, Y", strtotime($exam_attempt['attempt_date_created'])); ?>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            
                                            <div class="table-responsive">
                                                <table class="table table-bordered special_border table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th style="width: 1% !important">#</th>
                                                            <th>Question</th>
                                                            <th class="text-center">Response</th>
                                                            <th class="text-center">Answer</th>
                                                            <th class="text-center">Points</th>
                                                            <th class="text-center">Result</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                        <?php if ($exam_attempt['answer']): $answers = json_decode($exam_attempt['answer']);

                                                            function transmute_option($option) {

                                                                switch ($option) {
                                                                    case 'option_a':
                                                                        return 'A';
                                                                        break;

                                                                    case 'option_b':
                                                                        return 'B';
                                                                        break;

                                                                    case 'option_c':
                                                                        return 'C';
                                                                        break;

                                                                    case 'option_d':
                                                                        return 'D';
                                                                        break;
                                                                    
                                                                    default:
                                                                        return 'X';
                                                                        break;
                                                                }

                                                            }

                                                            $correct_answers_count = 0;
                                                            $wrong_answers_count = 0;

                                                            $points_scored = 0;
                                                            $total_points_scorable = 0;
                                                        ?>
                                                        <?php foreach($answers as $j => $answer): ?>
                                                        <?php foreach($questions as $x => $question_item):

                                                            if (($answer->question == $question_item['question_id'])) {
                                                                
                                                                $total_points_scorable += $question_item['points'];

                                                                if ($answer->selected_answer == $question_item['answer']) {

                                                                    $points_scored += $question_item['points'];

                                                                    ?>

                                                                    <tr>
                                                                        <td style="width: 1% !important"><?= $j + 1; ?></td>
                                                                        <td class="text-wrap">
                                                                            <div style = "height: 250px; overflow-y: auto">
                                                                                <?= $question_item['question_title']; ?>
                                                                            </div>
                                                                        </td>
                                                                        <td class="text-center"><?= transmute_option($answer->selected_answer); ?></td>
                                                                        <td class="text-center"><?= transmute_option($question_item['answer']); ?></td>
                                                                        <td class="text-center"><?= $question_item['points']; ?></td>
                                                                        <td class="text-center"><i class="fas fa-check-circle text-success"></i></td>
                                                                    </tr>

                                                                <?php $correct_answers_count++; }
                                                                else { ?>
                                                                    <tr>
                                                                        <td style="width: 1% !important"><?= $j + 1; ?></td>
                                                                        <td class="text-wrap"><?= $question_item['question_title']; ?></td>
                                                                        <td class="text-center"><?= transmute_option($answer->selected_answer); ?></td>
                                                                        <td class="text-center"><?= transmute_option($question_item['answer']); ?></td>
                                                                        <td class="text-center"><?= $question_item['points']; ?></td>
                                                                        <td class="text-center"><i class="fas fa-times-circle text-danger"></i></td>
                                                                    </tr>
                                                                <?php }

                                                            }
                                                        ?>

                                                        <?php endforeach; ?>
                                                        <?php endforeach; ?>

                                                        <?php endif; ?>

                                                        <tr>
                                                            <td colspan="3">
                                                                <div class = "font-weight-bold">
                                                                    <span><span id = "correct_points"><?= $points_scored; ?></span> / </span>
                                                                    <span id = "total_points"><?= $total_points_scorable; ?></span>

                                                                    <?php

                                                                        if ($total_points_scorable != 0) {
                                                                            $points_percentage = round($points_scored / $total_points_scorable * 100, 2);
                                                                            $verdict = ($points_percentage > $examination['pass_mark']) ? 'Passed': 'Failed';
                                                                        }
                                                                        else {
                                                                            $verdict = "NAN";
                                                                        }
                                                                    ?>

                                                                    <?php if ($points_percentage > $examination['pass_mark']): ?>
                                                                        <span class="badge bg-light-success"><?= $points_percentage . "% &bull; " . $verdict; ?></span>
                                                                    <?php endif; ?>

                                                                    <?php if (!($points_percentage > $examination['pass_mark'])): ?>
                                                                        <span class="badge bg-light-danger"><?= $points_percentage . "% &bull; " . $verdict; ?></span>
                                                                    <?php endif; ?>

                                                                </div>
                                                            </td>
                                                            <td colspan="3">
                                                                <div class="d-flex justify-content-end">
                                                                    <span data-toggle = "tooltip" title = "Correct attempts" class="special_border badge text-dark border mr-2" id = "correct_answer"><i class="fas fa-check-circle text-success"></i> <?= $correct_answers_count; ?></span>

                                                                    <span data-toggle = "tooltip" title = "Incorrect attempts" class="special_border badge text-dark border mr-2" id = "incorrect_answer"><i class="fas fa-times-circle text-danger"></i> <?= count($answers) - $correct_answers_count; ?></span>

                                                                    <span data-toggle = "tooltip" title = "Total Examination Questions" class="special_border badge text-dark border"><i class="fas fa-list-alt text-primary"></i> <?= count($questions_for_this_exam); ?></span>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>
                                        
                                    </div>
                                </div>

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

    <?= cbt_app_notyf(); ?>

    <script src="<?= ASSETS_PATH; ?>js/plugins/notify.min.js"></script>

    <script src="<?= ASSETS_PATH; ?>js/print_this.js"></script>

    <script type="text/javascript">

        function send_transcript(obj) {

            var prompt = confirm("This will send candidate a copy of their result. Are you sure to proceed?");

            if (prompt == 1) {

                $(obj).html('<i class = "fas fa-spinner fa-spin"></i> Send to Email');

                $.ajax({
                    url: '<?= base_url('examinations/send_transcript'); ?>',
                    type: 'POST',
                    data: {
                        send_transcript: 1,
                        correct_answers: $("#correct_answer").text(),
                        incorrect_answers: $("#incorrect_answer").text(),
                        correct_points: $("#correct_points").text(),
                        total_points: $("#total_points").text(),
                        candidate_name: $("#candidate_name").text(),
                        candidate_email: '<?= $exam_attempt['email']; ?>',
                        exam_name: $("#exam_name").text(),
                        exam_date: ($("#exam_date").text()).trim()
                    },
                    success: function(data) {

                        $(obj).html('<i class = "fas fa-file-export"></i> Send to Email');

                        $.notify(
                            "Operation success! Result sent to candidate's email.",
                            'success'
                        );

                    },
                    error: function(error) {
                        console.log(error);
                        $(obj).html('<i class = "fas fa-file-export"></i> Send to Email');

                        $.notify(
                            "Operation error! We could not complete the request.",
                            'error'
                        );
                    }
                });

            }
        }

        function print_result(obj) {

            $(obj).printThis();
        }

    </script>

</body>

</html>
