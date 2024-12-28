<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Exams | Exam Result - Essay Type | <?= $exam_attempt['first_name'] . " " . $exam_attempt['middle_name'] . " " . $exam_attempt['last_name']; ?></title>
    
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="DashboardKit is made using Bootstrap 5 design framework. Download the free admin template & use it for your project.">
    <meta name="keywords" content="DashboardKit, Dashboard Kit, Dashboard UI Kit, Bootstrap 5, Admin Template, Admin Dashboard, CRM, CMS, Free Bootstrap Admin Template">
    <meta name="author" content="DashboardKit">

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
        
        .marking_button {
            position: absolute;
            bottom: 0px;
            right: 0px;
            transition: right 0.5s;
            cursor: pointer;
            background: white;
            z-index: 10;
        }
        
        /* ===== Scrollbar CSS ===== */
        /* Firefox */
        .special_scroll_object {
            scrollbar-width: thin;
            scrollbar-color: rgb(171, 165, 245) rgb(240, 240, 240);
            
        }
        
        /* Chrome, Edge, and Safari */
        .special_scroll_object::-webkit-scrollbar {
            width: 5px;
            color: rgb(171, 165, 245) rgb(240, 240, 240);
        }
        
        .special_scroll_object::-webkit-scrollbar-track {
            background: rgb(290, 290, 290) !important;
        }
        
        .special_scroll_object::-webkit-scrollbar-thumb {
            background-color: rgb(200, 200, 200);
            border-radius: 10px;
            border: 1px solid red;
        }

    </style>
    
    <script type="text/javascript" src="<?= ASSETS_PATH . "js/plugins/ckeditor/ckeditor.js"; ?>"></script>

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
                                <i class="fas fa-file-export"></i> Send to Email
                            </button>

                            <button class="btn btn-outline-secondary btn-sm" onclick = "print_result('#result_panel');"><i class="fas fa-print"></i> Print</button>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-body pb-2">
                        <h5 class="card-title mb-2">Submitted Files</h5>

                        <?php if ($uploaded_submissions): ?>
                        <div class="row mt-3">
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
                                                <span id = "exam_name"><?= $examination['exam_title']; ?></span> - Essay Type
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
                                                <table class="table table-bordered special_border">
                                                    <thead>
                                                        <tr>
                                                            <th style="width: 1% !important">#</th>
                                                            <th>Question</th>
                                                            <th style="width: 40%">
                                                                <div class = "d-flex align-items-center justify-content-between">
                                                                    <span>Response / Markings</span>
                                                                    <span state = "0" onclick = "toggle_collapse(this);" data-toggle = "tooltip" title = "Click to show all marking box fields." class = "float-right btn border btn-sm bg-light"><i class = "fas fa-plus-circle"></i></span>
                                                                </div>
                                                            </th>
                                                            <th class="text-center">Points</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                        <?php if ($exam_attempt['answer']):

                                                            $attempt_result_score = 0;

                                                            $answers = json_decode($exam_attempt['answer']);


                                                            $correct_answers_count = 0;
                                                            $wrong_answers_count = 0;

                                                            $points_scored = 0;
                                                            $total_points_scorable = 0;

                                                            $results_items = []; // Array contains results content
                                                        ?>
                                                        <?php foreach($answers as $j => $answer): ?>
                                                        <?php foreach($questions as $x => $question_item):

                                                            if (($answer->question == $question_item['question_id'])) {

                                                                $total_points_scorable += $question_item['points'];

                                                                ?>

                                                                <tr>
                                                                    <td rowspan = "2" style="width: 1% !important; vertical-align: text-top;"><?= $j + 1; ?></td>
                                                                    <td class="text-wrap" style = "vertical-align: text-top;">
                                                                        <div class = "special_scroll_object" style = "height: 250px; overflow-y: auto">
                                                                            <?= $question_item['question_title']; ?>
                                                                        </div>   
                                                                    </td>
                                                                    
                                                                    <?php
                                                                    
                                                                        $marking_for_this_question = '';

                                                                        if ($exam_attempt['score_sheet'] != '') {

                                                                            $score_sheet = json_decode($exam_attempt['score_sheet']);
                                                                            foreach($score_sheet as $score) {
                                                                                if ($score->question == $question_item['question_id']) {
                                                                                    $ques_score = (int)$score->score;
                                                                                    $attempt_result_score += $ques_score;
                                                                                    
                                                                                    $marking_for_this_question = $score->marking;
                                                                                }
                                                                            }
                                                                        }
                                                                        else {
                                                                            $ques_score = 0;
                                                                            $marking_for_this_question = '';
                                                                        }

                                                                    ?>
                                                                            
                                                                    <td class="text-wrap marking_container" style = "position: relative; <?= ($answer->selected_answer == '<p><br></p>') ? '': 'vertical-align: text-top'; ?>">
                                                                        
                                                                        <?php if ($answer->selected_answer != '<p><br></p>'): ?>
                                                                        <div class = "special_scroll_object border" style = "height: 260px; overflow-y: auto">
                                                                            <div class = "p-3">
                                                                                <?= ($answer->selected_answer); ?>
                                                                            </div>
                                                                        </div>
                                                                        <?php endif; ?>
                                                                        
                                                                        <?php if ($answer->selected_answer == '<p><br></p>'): ?>
                                                                        <div class = "alert text-center text-info small border border-info">
                                                                            <i class = "fas fa-info-circle mr-2"></i> No response for this question!.
                                                                        </div>
                                                                        <?php endif; ?>
                                                                        
                                                                        <span title = "Click to toggle markings box" data-toggle="collapse" href="#marking_<?= $question_item['question_id']; ?>" class = "rounded-0 btn btn-light-dark btn-sm marking_button">
                                                                            <i class = "fas fa-file-signature"></i>
                                                                        </span>
                                                                        
                                                                    </td>
                                                                    <td rowspan = "2" style = "width: 15%; vertical-align: text-top" class="text-center text-wrap">
                                                                        <div class="input-group input-group-sm">
                                                                            <input ques_id = "<?= $question_item['question_id']; ?>" id = "question_point_<?= $question_item['question_id']; ?>" type="number" min = 0 max = "<?= $question_item['points']; ?>" class="form-control w-50 question_points_<?= $exam_attempt['entry_id']; ?>" value = "<?= $ques_score; ?>">
                                                                            <span class="input-group-text">
                                                                                / <?= $question_item['points']; ?>
                                                                            </span>
                                                                        </div>
                                                                        
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    
                                                                    <td colspan = "2" class = "markings_collapse collapse text-wrap" id="marking_<?= $question_item['question_id']; ?>">
                                                                        
                                                                        <div class="my-2 rounded" style = "border: 1px solid rgb(220, 220, 220)!important">
                                                                            <div class = "marking_guidelines border-bottom mb-2 px-3 pt-3">
                                                                                <div class = "small text-muted"><small>Marking Guidelines:</small></div>
                                                                                <?= $question_item['info_answer']; ?>
                                                                            </div>
                                                                            <div class = "px-3 pb-3" onclick = "$('#marking_text_<?= $question_item['question_id']; ?>').focus();">
                                                                                <div class = "small text-muted" style = "cursor: default" onclick = "$('#marking_text_<?= $question_item['question_id']; ?>').focus();"><small>Markings:</small></div>
                                                                                <div contenteditable = "true" style = "border: 1px solid rgb(220, 220, 220)!important" name = "markings_editor" placeholder = "Enter your markings for this question..." class = "mt-1 mb-0 p-2" id = "marking_text_<?= $question_item['question_id']; ?>"><?= $marking_for_this_question; ?></div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                </tr>

                                                                <?php

                                                                $temp_array = [
                                                                    'question'              =>      $question_item['question_title'],
                                                                    'candidate_response'    =>      $answer->selected_answer,
                                                                    'score'                 =>      $ques_score,
                                                                    'obtainable'            =>      $question_item['points'],

                                                                ];

                                                                array_push($results_items, $temp_array);

                                                            }
                                                        ?>

                                                        <?php endforeach; ?>
                                                        <?php endforeach; ?>

                                                        <?php endif; ?>

                                                        <tr>
                                                            <td colspan="3" class = "text-wrap">
                                                                Score:
                                                                <span class="font-weight-bold" id = "correct_points"><?= ($attempt_result_score); ?></span> / 
                                                                <span id = "total_points">
                                                                    <?= $total_points_scorable; ?>
                                                                </span>    
                                                                <?php
                                                                    if ($total_points_scorable != 0) {
                                                                        $points_percentage = round($attempt_result_score / $total_points_scorable * 100, 2);

                                                                        $verdict = ($points_percentage > $examination['pass_mark']) ? 'Passed': 'Failed';
                                                                        
                                                                    }
                                                                    else {
                                                                        $points_percentage = 0;
                                                                        $verdict = 'NAN';
                                                                    }

                                                                ?>

                                                                    <?php if ($points_percentage > $examination['pass_mark']): ?>
                                                                    <span class="badge bg-light-success">
                                                                        <?= $points_percentage . "% &bull; " . $verdict; ?>
                                                                    </span>
                                                                    <?php endif; ?>

                                                                    <?php if (!($points_percentage > $examination['pass_mark'])): ?>
                                                                    <span class="badge bg-light-danger">
                                                                        <?= $points_percentage . "% &bull; " . $verdict; ?>
                                                                    </span>
                                                                    <?php endif; ?>
                                                                
                                                            </td>
                                                            <td colspan="1" class = "text-wrap">
                                                                <button data-toggle = "tooltip" title = "Compute and save scores." onclick = "compute_scores(this, '<?= $exam_attempt['entry_id']; ?>');" class="btn btn-success btn-sm w-100"><i class="fas fa-upload"></i></button>
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

    <textarea id = "result_content" class="d-none">
        <?= json_encode($results_items); ?>
    </textarea>
    
    <?= $this->include('includes/footer'); ?>

</div>
<!-- [ Main Content ] end -->

    <div id="set_markings_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">Set Markings for Question</h5>
                    <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <textarea class = "form-control" rows = "6"></textarea>
                </div>
                <div class="modal-footer">
                    <div class = "d-flex justify-content-end w-100">
                        <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal"><i class = "fas fa-save mr-1"></i>Save</button>
                    </div>
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

    <script src="<?= ASSETS_PATH; ?>js/plugins/notify.min.js"></script>

    <script src="<?= ASSETS_PATH; ?>js/print_this.js"></script>

    <script type="text/javascript">
    
        function toggle_collapse(obj) {
            
            if ($(obj).attr('state') == 0) {
                
                $(".markings_collapse").collapse('show');
                $(obj).attr('state', 1);
            }
            else {
                $(".markings_collapse").collapse('hide');
                $(obj).attr('state', 0);
            }
        }

        function send_transcript(obj) {

            var prompt = confirm("This will send candidate a copy of their result. Are you sure to proceed?");

            if (prompt == 1) {

                $(obj).html('<i class = "fas fa-spinner fa-spin"></i> Send to Email');

                $.ajax({
                    url: '<?= base_url('examinations/send_transcript'); ?>',
                    type: 'POST',
                    data: {
                        send_transcript_essay: 1,
                        result_list: $("#result_content").val(),
                        correct_points: $("#correct_points").text(),
                        total_points: ($("#total_points").text()).trim(),
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

        function compute_scores($this, attempt_id) {

            $($this).html('<i class = "fas fa-spinner fa-spin"></i>');

            score_sheet_array = [];

            scores_sum = 0;

            $(".question_points_" + attempt_id).each(function(index, value) {

                scores_sum += Number($(value).val());

                question_attempt = {
                    question: $(value).attr('ques_id'),
                    score: Number($(value).val()),
                    marking: $("#marking_text_" + $(value).attr('ques_id')).html()
                }

                score_sheet_array.push(question_attempt);
            });

            $.ajax({

                url: "<?= base_url('examinations/save_scores'); ?>",
                type: 'POST',
                data: {
                    attempt_id: attempt_id,
                    score_sheet: JSON.stringify(score_sheet_array),
                },
                success: function(data) {

                    $.notify(
                        "Operation success! Scores have been saved.",
                        'success'
                    );

                    $("#correct_points").text(scores_sum);

                    $($this).html('<i class = "fas fa-upload"></i>');

                },
                error: function(error) {
                    console.log("Something went wrong!");
                    console.log(error);

                    $.notify(
                        "Operation error! Please try again.",
                        'error'
                    );
                    
                }
            });
        }
        
        CKEDITOR.inline( 'markings_editor' );

    </script>

</body>

</html>
