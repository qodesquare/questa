<!DOCTYPE html>
<html lang="en" id = "body">

<head>

    <title>Questa Online Exams | Checkpoint</title>

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
    
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.4.0/styles/xt256.min.css">

    <link rel="stylesheet" href="https://unpkg.com/dropzone@5/dist/min/dropzone.min.css" type="text/css" />

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
        
        .hljs-ln-numbers {
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -khtml-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        
            text-align: center;
            color: #ccc;
            border-right: 1px solid #CCC;
            vertical-align: top;
            padding-right: 5px !important;
        
            /* your custom style here */
        }
        
        /* for block of code */
        .hljs-ln-code {
            padding-left: 10px !important;
        }
        
        .file_card:hover .badge {
            cursor: pointer;
        }
        
        .internal_img {
            width: 100% !important;
        }
        
        @media only screen and (min-width: 760px) {
            .internal_img {
                width: 45% !important;
            }
        }
        
        .start_arrow {
            animation: start_arrow 0.5s linear infinite alternate-reverse;
        }
        
        @keyframes start_arrow {
            from {
                transform: translateX(0px);
            }
            to {
                transform: translateX(10px);
            }
        }
        
        #auto_save_element {
            width: 50px;
            height: 50px;
            border-radius: 9999999999999999px;
            background: white;
            display: flex;
            justify-content: center;
            align-items: center;
            position: fixed;
            top: 50px;
            left: calc(50vw - 25px);
            cursor: pointer;
        }
        
        #auto_save_element span {
            position: absolute;
            top: 0;
            right: -10px;
            width: 10px;
            height: 10px;
            background: rgb(114, 103, 239);
            border-radius: 99999999999999px;
        }

    </style>
    
    <script type="text/javascript" src="<?= ASSETS_PATH . "js/plugins/ckeditor/ckeditor.js"; ?>"></script>
</head>

<body style = "overflow-y: auto !important; height: 500px !important">

<!-- [ auth-signin ] start -->
<div class="auth-wrapper">

    <div class="auth-content" style="width: 900px">

        <div class="alert bg-white" id = "exam_head">

            <div class="d-flex justify-content-between">
                <div>
                    <h3 class="mb-0">
                        <?= $examination['exam_title']; ?>
                    </h3>
                    <div class="small mb-2">[ Essay Type ]</div>
                    <div>
                        <span data-toggle = "tooltip" title="Subject" class="pr-3 mr-4 border-right"><i class="fas fa-book mr-2"></i> <?= $examination['subject_name']; ?></span>
                        <span data-toggle = "tooltip" title="Class" class="pr-3 mr-4 border-right"><i class="fas fa-graduation-cap mr-2"></i> <?= $examination['class_name']; ?></span>
                        <span data-toggle = "tooltip" title="Duration" class="text-danger">
                            <i class="fas fa-clock mr-2"></i>
                            <span id = "exam_duration_text"><span id = "exam_duration"><?= $examination['duration']; ?></span> Minutes</span>
                        </span>
                    </div>
                </div>
                <div class="d-flex align-items-center">
                
                    <button onclick="stop_exam();" id = "submit_btn" class="btn btn-primary submit_btn" style="display: none">Submit <i class="fas fa-paper-plane ml-2"></i></button>
                </div>
            </div>
            
        </div>

        <div class="card" id = "exam_instructions">

            <div class="row align-items-center">
                <div class="col-md-12">
                    <div class="card-body">

                        <div>
                            <h4>Welcome <b><?= $_SESSION['cbt_app_session']['user']['first_name'] . " " . $_SESSION['cbt_app_session']['user']['last_name']; ?></b></h4>
                            <div class="small text-muted">
                                CANDIDATE ID: <?= $_SESSION['cbt_app_session']['user']['candidate_id']; ?>
                            </div>
                        </div>

                        <?php if ($examination['exam_instructions'] != ''): ?>
                        <div class="border p-3 mt-4 mb-4" data-toggle = "tooltip" title="It is important that you read these instruction(s).">
                            <?= $examination['exam_instructions']; ?>
                        </div>
                        <?php endif; ?>

                        <?php if ($examination['fullscreen']): ?>
                        <div class="my-3 mb-0 font-weight-bold row">
                            <div class = "col-12">
                                <div class = "p-3 alert alert-danger">
                                    
                                    <div class = "row">
                                        <div class = "col-1 text-center">
                                            <i class="fas fa-info-circle"></i>
                                        </div>
                                        <div class = "col-10">
                                            Please do not attempt to exit the fullscreen mode once the exam starts! If you do so, the examination will end immediately.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php endif; ?>

                        <div class="text-right mt-4">
                            <button onclick="start_exam();" class="btn btn-success">Start Examination <i class="fas fa-arrow-right ml-3 start_arrow"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card" id = "exam_end_summary" style = "display: none;">
            <div class="row align-items-center">
                <div class="col-md-12">
                    <div class="card-body text-center">

                        <div>
                            <h4>Hello <?= $_SESSION['cbt_app_session']['user']['first_name'] . " " . $_SESSION['cbt_app_session']['user']['last_name']; ?>,</h4>
                        </div>

                        <div class="mt-5">

                            <div id = "exam_submit_notif" class="text-info text-center mb-3">
                                <i class="fas fa-spinner fa-spin fa-4x"></i>
                            </div>
                            
                            <div>Your examination is being submitted...</div>
                            <p class="small">
                                This page will now close in <span id="reload_count">5</span> seconds...<i class="fas fa-spinner fa-spin"></i>
                            </p>
                            <button id = "retry_button" class = "btn btn-info btn-sm d-none" onclick = "stop_exam();"><i class = "fas fa-redo-alt mr-2"></i> Retry</button>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="card" id = "question_panel" style = "display: none;">
            <div class="card-header pb-0">
                
                <?php if ($questions): ?>
                <ul class="nav nav-tabs border-0" id="myTab" role="tablist">
                    
                    <?php if (count($attachments) > 0): ?>
                    <li class="nav-item">
                        <a class="nav-link question_tab mr-2" id="attachment_tab" data-toggle="tab" href="#attachments_panel" role="tab" aria-controls="home" aria-selected="true"><i class="fas fa-paperclip mr-1"></i> Attachments</a>
                    </li>
                    <?php endif; ?>

                    <?php if ($examination['allow_candidates_upload']): ?>
                    <li class="nav-item">
                        <a class="nav-link question_tab mr-2" id="my_uploads_tab" data-toggle="tab" href="#uploads_panel" role="tab" aria-controls="home" aria-selected="true"><i class="fas fa-upload mr-1"></i> My Uploads</a>
                    </li>
                    <?php endif; ?>

                    <?php foreach($questions as $k => $ques): ?>
                    <li class="nav-item">
                        <a class="nav-link question_tab <?= ($k == 0) ? 'active': ''; ?>" id="question_tab_<?= $ques['question_id']; ?>" data-toggle="tab" href="#ques_<?= $ques['question_id']; ?>" role="tab" aria-controls="home" aria-selected="true">Q<?= $k + 1; ?></a>
                    </li>
                    <?php endforeach; ?>
                </ul>
                <?php endif; ?>

            </div>
            <div class="card-body">

                <div class="mb-4 d-none">
                    <span class="badge bg-info mr-2">Answered: <span id = "answered_ques">0</span></span>
                    <span class="badge bg-warning">Unanswered: <span id = "unanswered_ques"><?= count($questions); ?></span></span>
                </div>
                
                <?php if ($questions): ?>
                <div class="tab-content" id="myTabContent">

                    <?php if (count($attachments) > 0): ?>
                    <div class="tab-pane fade" id="attachments_panel" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
                        <?php if ($attachments): ?>
                        <div class="row">
                        <?php foreach($attachments as $file_item): rsort($attachments); ?>

                            <div id = "<?= $file_item['entry_id']; ?>" class="col-md-2 col-sm-6 mb-4">
                                <div class="file_card card mb-0 shadow-0 border h-100" style = "box-shadow: 0 0 0 0; position: relative; overflow: hidden;">
                                    <div class="card-body px-1 py-3 text-center">
                                        <img src="<?= ASSETS_PATH . 'images/file_icon.png'; ?>" class = "img-fluid">
                                        <div class="small mt-2">
                                            <a onclick="show_attachment(this);" data-toggle = "modal" data-target = "#attachments_modal" href="<?= UPLOAD_PATH . 'examinations_attachments/' . $file_item['filepath']; ?>" class="small text-primary"><?= $file_item['filename']; ?></a>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>

                        <?php endforeach; ?>
                        </div>
                        <?php endif; ?>

                    </div>
                    <?php endif; ?>

                    <?php if ($examination['allow_candidates_upload']): ?>
                    <div class="tab-pane fade" id="uploads_panel" role="tabpanel" aria-labelledby="home-tab" tabindex="0">

                        <div class="p-3 border mb-2">

                            <div class="row justify-content-between align-items-center">
                                <div class="col-12 small">
                                    <i class="fas fa-info-circle text-primary mr-1"></i>Please ensure you delete any file(s) you did not intend to submit!
                                    
                                </div>
                                
                            </div>
                            
                        </div>

                        <form action="<?= base_url('examination/upload_student_files/' . $examination['exam_id']); ?>" class="dropzone" id="my-dropzone" method = "POST" enctype = "multipart/form-data"></form>

                    </div>
                    <?php endif; ?>

                    <?php foreach($questions as $k => $item): ?>
                    <div class="tab-pane fade <?= ($k == 0) ? 'show active': ''; ?>" id="ques_<?= $item['question_id']; ?>" role="tabpanel">
                      
                        <div class="card question_card border" my_tab="question_tab_<?= $item['question_id']; ?>" id = "<?= $item['question_id']; ?>">
                            <h5 class="card-header border-0">

                                <div class="d-flex justify-content-between">
                                    <div class="mb-4 font-weight-bold">Question <?= $k + 1; ?></div>
                                    <div><span class="badge bg-light-dark"><?= $item['points']; ?> Mark<?= ($item['points'] > 1) ? 's': ''; ?></span></div>
                                </div>
                                    
                                <div class="row align-items-start">
                                    <?php if (!($item['image'] == 'image_question.png')): ?>
                                    <div class="col-md-3 col-sm-12 mb-2" id = "image_box_<?= $k + 1; ?>">
                                        
                                        <a href="<?= UPLOAD_PATH . 'questions/' . $item['image']; ?>" class="image_pop d-block">
                                            <img onerror = "jettison_image('#image_box_<?= $k + 1; ?>');" src="<?= UPLOAD_PATH . 'questions/' . $item['image']; ?>" class = "img-fluid rounded">
                                        </a>
                                        <div class = "small text-muted mt-3 text-center"><small>Click on image to enlarge.</small></div>
                                    </div>
                                    <?php endif; ?>
                                    <div class="<?= (($item['image'] == 'image_question.png')) ? 'col-sm-12': 'col-md-9'; ?>">
                                        <h4 class="d-flex h-100 align-items-center">
                                            <div data-id = "<?= $item['question_id']; ?>" class = "w-100 rounded d-inline-block question_title" style = "min-width: 100%; max-width: 80%"><?= $item['question_title']; ?></div>
                                        </h4>
                                    </div>
                                </div>
                            </h5>
                            <div class="card-body px-4 pb-4 pt-0">
                                
                                <?php if ($item['hints'] && $item['info_answer']): // strlen($item['hints'] is giving value of 11 when it is empty string ?>
                                <div class="row">
                                    
                                    <?php if (strlen($item['hints']) != 11): ?>
                                    
                                    <div class="col-sm-12 col-md-12 mb-3">
                                        <div class="rounded-0 question_options d-flex flex-column">
                                            <div class="d-inline-block small text-muted text-uppercase"><span class="badge bg-light-primary">Hint:</span></div>
                                            <div id = "question_hint_<?= $item['question_id']; ?>" class = "d-inline-block w-100 text-muted small" style = "font-size: 8px !important"><?= $item['hints']; ?></div>
                                        </div>
                                    </div>
                                    <?php endif; ?>

                                    <div class="col-sm-12 col-md-12">
                                        <div class="border p-2 rounded question_options d-flex flex-column">
                                            <div class="d-inline-block small text-muted mb-1" onclick="$('#question_response_<?= $item['question_id']; ?>').focus();">Type your response:</div>
                                            <div id = "question_response_<?= $item['question_id']; ?>" contenteditable = "true" class = "d-inline-block w-100 question_response_input" style = "min-height: 100px;"></div>
                                        </div>
                                    </div>

                                </div>
                                <?php endif; ?>
                                
                            </div>
                        </div>

                        <div class="mt-4 d-flex justify-content-center">
                            <?php if ($k > 0):

                                $previous = $questions[$k - 1]['question_id'];
                            ?>

                            <button onclick="goto_question('#ques_<?= $previous; ?>');" class="btn btn-outline-dark mr-3 btn-sm"><i class="fas fa-caret-left mr-2"></i> Previous</button>
                            <?php if ($k == count($questions) - 1): ?>
                                <button onclick="stop_exam();" id = "submit_btn_2" class="btn btn-outline-primary btn-sm submit_btn ml-2" style="display: none">Submit <i class="fas fa-paper-plane ml-2"></i></button>

                            <?php endif; ?>

                            <?php endif; ?>

                            <?php if (!($k == count($questions) - 1)):

                                $next = $questions[$k + 1]['question_id'];
                            ?>

                            <button onclick="goto_question('#ques_<?= $next; ?>');" class="btn btn-outline-dark btn-sm">Next <i class="ml-2 fas fa-caret-right"></i></button>
                            
                            <?php endif; ?>
                        </div>

                    </div>
                    <?php endforeach; ?>
                </div>
                <?php endif; ?>

            </div>
        </div>
    </div>
</div>
<!-- [ auth-signin ] end -->

<!------ Auto Save ------>
<!------ This will stave off for a while ------>
<!------ Get the backup in the Locastorage archive ---->
    <div id = "auto_save_element" style = "display: none">
        <i class = "fas fa-redo-alt fa-2x fa-spin"></i>
        <span></span>
    </div>

<!------ Auto Save ------>

    <div id="attachments_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-centered" style = "width: 1000px" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="">Document Viewer</h5>
                    <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    
                     <iframe id = "target_url_frame" src="<?= ASSETS_PATH . '/images/file_not_supported.png'; ?>" height="500vh" width="100%" title="Attachments"></iframe> 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-sm" data-dismiss="modal">Close</button>
                    <a target = "_BLANK" id = "download_target" href = "" class="btn btn-outline-primary btn-sm"><i class = "fas fa-cloud-download-alt mr-2"></i>Download</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Required Js -->
    <script src="<?= ASSETS_PATH; ?>js/vendor-all.min.js"></script>
    <script src="<?= ASSETS_PATH; ?>js/plugins/bootstrap.min.js"></script>
    <script src="<?= ASSETS_PATH; ?>js/plugins/feather.min.js"></script>
    <script src="<?= ASSETS_PATH; ?>js/pcoded.min.js"></script>
    
    <script src="<?= ASSETS_PATH; ?>js/jquery.magnific-popup.min.js"></script>
    
    <script src="<?= ASSETS_PATH; ?>js/plugins/notify.min.js"></script>
    
    <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.4.0/highlight.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/highlightjs-line-numbers.js/2.8.0/highlightjs-line-numbers.min.js"></script>
    <script>
        hljs.highlightAll();
        hljs.initLineNumbersOnLoad();
        
        $(".cke_widget_drag_handler_container").remove();
        
        $(".cke_widget_element").addClass('rounded');
        $(".cke_widget_element").addClass('mb-0');
        $(".cke_widget_element").addClass('pb-0');
        $(".cke_widget_element").css('outline', 0);
        
    </script>

    <?php if ($examination['allow_candidates_upload']): ?>
    <script src="https://unpkg.com/dropzone@5/dist/min/dropzone.min.js"></script>
    <script type="text/javascript">
        
        Dropzone.options.myDropzone = {
          maxFilesize: 10,
          addRemoveLinks: true,
          removedfile: function(file) {
    
            var fileName = (file.name).replace(' ', '_');
    
            $.ajax({
              type: 'POST',
              url: '<?= base_url('examination/delete_uploaded_file'); ?>',
              data: {
                name: fileName,
                request: 'delete'
              },
              success: function(data){
                console.log('success: ' + data);
    
              }
    
            });
    
            var _ref;
    
            return (_ref = file.previewElement) != null ? _ref.parentNode.removeChild(file.previewElement) : void 0;
    
          }
          
        };
    </script>
    <?php endif; ?>

    <?= cbt_app_notyf(); ?>

    <script type="text/javascript">

        function show_attachment(obj) {

            url = $(obj).attr('href');
            the_iframe = $("#target_url_frame");
            the_iframe.attr('src', url);
            
            $("#download_target").attr('href', url);
        }

        $(document).ready(function() {
          $('.image_pop').magnificPopup({type: 'image'});
        });

        exam_duration_minutes = Number($("#exam_duration").text());

        exam_duration_seconds = Number($("#exam_duration").text()) * 60; // Convert to seconds
        
        exam_timer = '';

        function start_exam() {
            
            auto_save();

            $("#exam_instructions").addClass('d-none');
            $("#question_panel").fadeIn();
            
            $(".auth-content").css('width', '100%');

            <?php if ($examination['fullscreen']): ?>
                elem = document.getElementById('body');
                openFullscreen(elem);
            <?php endif; ?>

            $(".submit_btn").fadeIn();

            exam_timer = setInterval(function() {

                if (exam_duration_seconds >= 0) {

                    remaining_hours = Math.floor(exam_duration_seconds / 3600);
                    remaining_minutes = Math.floor(((exam_duration_seconds / 3600) - Math.floor(exam_duration_seconds / 3600)) * 60);

                    remaining_seconds = Math.round((((exam_duration_seconds / 60) - Math.floor(exam_duration_seconds / 60))) * 60);

                    $("#exam_duration_text").html(pad_with_zero(remaining_hours) + "h : " + pad_with_zero(remaining_minutes) + "m : " + pad_with_zero(remaining_seconds) + "s");

                }
                else {

                    stop_exam();
                    clearInterval(exam_timer);
                }

                exam_duration_seconds -= 1;

            }, 1000);
        }

        function pad_with_zero($value) {

            if ($value < 10) {
                $value = "0" + $value;
                
            }
            return $value;
        }

        function stop_exam() {

            chosen_answers = []; // Answers to be sent to server
            
            $(".auth-content").css('width', '900px');

            $("#exam_end_summary").slideDown('slow');
            $("#question_panel").hide();
            $(".submit_btn").fadeOut();

            my_answers = $('.question_card');

            my_answers.each(function(index, value) {

                this_question_id = $(value).attr('id');

                ques_response = {
                    question: this_question_id,
                    selected_answer: $("#question_response_" + this_question_id).html()
                }

                chosen_answers.push(ques_response);
            });

            console.log(chosen_answers);
            clearInterval(exam_timer);

            $.ajax({

                url: "<?= base_url('examination/end_exam'); ?>",
                type: 'POST',
                data: {
                    examination_id: '<?= $examination['exam_id']; ?>',
                    exam_answers: JSON.stringify(chosen_answers),
                    time_spent: <?= ($examination['duration'] * 60); ?> - exam_duration_seconds - 1,
                    time_remaining: exam_duration_seconds
                },
                success: function(data) {

                    count = $("#reload_count").text();
                    
                    reload_timer = setInterval(function() {

                        count--;

                        $("#reload_count").text(count);

                        if (count < 1) {
                            
                            $.notify(
                                "Exam submission success! Page will now close...",
                                'success'
                            );
                            
                            clearInterval(reload_timer);
                            window.location.href = "<?= base_url('auth/sign_in'); ?>"
                        }

                        
                    }, 1000);
                    
                    $('#retry_button').addClass('d-none');
                    
                    $.notify(
                        "Success! Exam has been submitted.",
                        'success'
                    );
                },
                error: function(error) {
                    $.notify(
                        "We could not complete the process. Now retrying...",
                        'error'
                    );
                    console.log("Something went wrong!");
                    console.log(error);
                    
                    $('#retry_button').removeClass('d-none');
                }
            });
        }

        function goto_question(obj) {

            $('#myTab a[href="' + obj + '"]').tab('show');
        }

        function jettison_image(obj) {
            $(obj).remove();
        }
        
        $("#checker_form").submit(function(evt) {

            evt.preventDefault();

            $("[name = check_in_btn]").prop('disabled', true);

            $("[name = check_in_btn]").html('Validating <i class = "fas fa-spinner fa-spin"></i>');

            $.ajax({

                url: '<?= base_url('auth/check_in'); ?>',
                type: "POST",
                data: {

                    candidate_check_in: $("#user_code").val(),
                    exam_code: $("#exam_code").val()
                },
                success: function(data) {
                    console.log(JSON.parse(data));
                },
                error: function(error) {
                    console.log("Something went wrong!");
                    console.log(error);
                }
            })
        });

        document.addEventListener('keydown', (e) => {
            e = e || window.event;
            if(e.keyCode == 116){
                e.preventDefault();
            }
        });

    </script>

    <?php if ($examination['fullscreen']): ?>
    <script type="text/javascript">

        function openFullscreen(elem) {

          if (elem.requestFullscreen) {
            elem.requestFullscreen();
          }
          else if (elem.webkitRequestFullscreen) {
            elem.webkitRequestFullscreen();
          }
          else if (elem.msRequestFullscreen) {
            elem.msRequestFullscreen();
          }

        }

        document.addEventListener("fullscreenchange", function () {
            console.log(document.fullscreen);

            if (document.fullscreen == false)
                stop_exam();
        }, false);
        document.addEventListener("mozfullscreenchange", function () {
            console.log(document.mozFullScreen);

            if (document.fullscreen == false)
                stop_exam();
        }, false);
        document.addEventListener("webkitfullscreenchange", function () {
            console.log(document.webkitIsFullScreen);

            if (document.fullscreen == false)
                stop_exam();
        }, false);

    </script>
    <?php endif; ?>

    <script>

        CKEDITOR.disableAutoInline = true;
        
        all_editing_space = $("[contenteditable = 'true']");

        all_editing_space.each(function (index, element) {

            id = $(element).attr('id');

            CKEDITOR.inline(id);
        });
        
        // Auto Save Function definition and declaration
        
        function auto_save() {
            
            auto_save_timer = setInterval(() => {
                
                backup_object = {
                    candidate_name: '<?= $_SESSION['cbt_app_session']['user']['first_name'] . " " . $_SESSION['cbt_app_session']['user']['last_name']; ?>',
                    candidate_id: '<?= $_SESSION['cbt_app_session']['user']['candidate_id']; ?>',
                    exam_name: '<?= $examination['exam_title']; ?>',
                    exam_id: '<?= $examination['exam_id']; ?>',
                    times_stamp: (new Date()).toString(),
                    response_objects: []
                }
                
                questions = $(".question_title");
                question_responses = $(".question_response_input");
                
                questions.each((index, value) => {
                    
                    response_obj = {}
                    
                    response_obj.question_id = $(value).attr('data-id'),
                    response_obj.question_title = $(value).html();
                    response_obj.candidate_response = $(question_responses[index]).html()
                    
                    backup_object.response_objects.push(response_obj);
                });
                
                // Now commit to backup storage
                
                window.localStorage.setItem("questa_backup", JSON.stringify(backup_object));

            }, 20_000);
        }

    </script>

</body>

</html>
