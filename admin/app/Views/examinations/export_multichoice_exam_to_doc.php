<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Quiz App | Export Examination</title>
    
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

        .response_dashes {
            border-bottom: 1px dotted black;
            position: relative;
            height: 20px;
        }

        .response_dashes span.add_response_dash, .response_dashes span.remove_response_dash {
            position: absolute;
            right: 0;
            bottom: 5px;
            opacity: 0;
            transition: opacity 0.5;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 5px;
            border: 1px solid black;
            border-radius: 99999999999px;
            height: 20px;
            width: 20px;
            cursor: pointer;
            color: rgb(114, 103, 239);
            border-color: rgb(114, 103, 239);
        }

        .response_dashes span.remove_response_dash {
            color: rgb(255, 85, 95);
            border-color: rgb(255, 85, 95);
        }

        .response_dashes:hover span.add_response_dash, .response_dashes:hover span.remove_response_dash {

            opacity: 1;
        }

        .response_dashes span.response_order {
            position: absolute;
            left: 0;
            bottom: 5px;
            opacity: 0;
            transition: opacity 0.5s;
            font-size: 8px;
        }

        .response_dashes:hover span.response_order {

            opacity: 1;
        }

        .response_dashes span.remove_response_dash {
            right: 25px;
        }

        [contenteditable = "true"] {
            position: relative;
        }

        [contenteditable = "true"]::before {
            content: '\270D';
            font-size: 25px;
            position: absolute;
            top: -25px;
            font-weight: normal;
            display: none;
        }

        [contenteditable = "true"]:hover::before {
            display: inline;
        }

        .image_sizer_container:hover .image_sizer_panel {
            opacity: 1;
        }

        .image_sizer_panel {
            position: absolute;
            top: 0;
            right: -100px;
            width: 100px;
            opacity: 0;
            transition: opacity 0.5s;
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
                    <div class="col-lg-7 col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Document Maker</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Home</a></li>
                            <li class="breadcrumb-item"><a href = "<?= base_url('examinations/view_examination/' . $examination['exam_id']); ?>"><?= $examination['exam_title']; ?></a></li>
                            <li class="breadcrumb-item">Export to PDF</li>
                        </ul>
                    </div>
                    <div class="col-lg-5 col-md-12 text-right">
                        <div class="row justify-content-end">
                            <div class="col-9">
                                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                  <label class="btn btn-outline-info btn-sm">
                                    <input class="toggle_markings" type="radio" name="options" id="option1" value = "1" checked> Show Markings
                                  </label>
                                  <label class="btn btn-outline-info btn-sm">
                                    <input class="toggle_markings" type="radio" name="options" id="option2" value = "0"> Hide Markings
                                  </label>
                                </div>
                            </div>
                            <div class="col-1">
                                <button data-toggle = "tooltip" title = "Print" class="btn btn-sm btn-primary" onclick="printDiv('questions_panel');"><i class="fas fa-print"></i></button>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row justify-content-center mt-4" id = "questions_panel">
            <div class="col-xl-8 col-md-12 col-sm-12">
                <div class="card p-0" style="box-shadow: 0 0 0 0 black">
                    <div class="card-header border-0 mb-0 p-0 text-center" style="border-color: black !important;">
                        <div class="border py-1" style="border-color: black !important">
                            <div class="text-dark w-100 mt-3" contenteditable = "true"><b>Multichoice Type</b> <small class="small">(<span id = "total_points"></span> Marks)</small></div>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        
                        <div class="border-top-0 border pt-3 pb-4" style="border-color: black !important;">
                            <?php $total_points_for_question = 0; if ($exam_questions): ?>
                            <?php foreach ($exam_questions as $k => $question):

                                $total_points_for_question += $question['points'];
                            ?>

                            <div class="px-4 py-0 row">
                                <div class="col-12">
                                    <div class="d-flex">
                                        <div class="mr-4" style=""><?= ($k + 1); ?>. </div>
                                        <div style="width: 100%" id = "target_for_response_append_<?= $question['question_id']; ?>">
                                            <div class="mb-1">
                                                <div contenteditable = "true"><?= $question['question_title']; ?></div>
                                                <?php if ($question['image'] != 'image_question.png'): ?>
                                                <div class="mt-3 image_sizer_container" style="position: relative; width: 100px">
                                                    <div class="image_sizer_panel">
                                                        <input type="range" name="" min="50" max = "100" step="0.5" value="100" onchange = "change_image_zoom(this, 'question_image_<?= $question['question_id']; ?>')">
                                                    </div>
                                                    <img id = "question_image_<?= $question['question_id']; ?>" src="<?= UPLOAD_PATH . '/questions/' . $question['image']; ?>" width = "300px">
                                                </div>
                                                <?php endif; ?>
                                            </div>
                                            <div class="row mt-3">
                                                <div class="col-6">
                                                    <div class="d-flex align-items-start">
                                                        <span class="mr-3">A. </span>
                                                        <div>
                                                            <?= $question['option_a']; ?>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="d-flex align-items-start">
                                                        <span class="mr-3">B. </span>
                                                        <div>
                                                            <?= $question['option_b']; ?>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mt-2">
                                                <div class="col-6">
                                                    <div class="d-flex align-items-start">
                                                        <span class="mr-3">C. </span>
                                                        <div>
                                                            <?= $question['option_c']; ?>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="d-flex align-items-start">
                                                        <span class="mr-3">D. </span>
                                                        <div>
                                                            <?= $question['option_d']; ?>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="text-right mt-0 mb-2 markings_points">
                                        [<?= $question['points']; ?>]
                                    </div>
                                </div>
                            </div>

                            <?php endforeach; ?>
                            <?php endif; ?>
                        </div>

                        <div class="border border-top-0 p-3" style="border-color: black !important;">
                            <div class="d-flex align-items-center justify-content-between">
                                <div>
                                    <img src="<?= ASSETS_PATH; ?>images/logo.png" width = "50px">
                                </div>
                                <div class="small">
                                    &copy; All rights reserved <?= date("Y"); ?>
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

    <script src="<?= ASSETS_PATH; ?>js/plugins/notify.min.js"></script>

    <script type="text/javascript">

        function change_image_zoom(range_obj, target) {

            change_rate = $(range_obj).val();

            new_width = Number(300 * change_rate / 100) + 'px';

            $("#" + target).css('width', (new_width));
        }

        function printDiv(divName){
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;

            $('body').html(printContents);

            window.print();

            $('body').html(originalContents);

        }

        $(".toggle_markings").change(function(evt) {
            let state = Number($(this).val());

            if (state === 1) {
                $(".markings_points").show();
            }
            else {
                $(".markings_points").hide();
            }
        });

    </script>

    <?= cbt_app_notyf(); ?>

    <script type="text/javascript">
        
        $("#total_points").text('<?= $total_points_for_question; ?>');

    </script>

</body>

</html>
