<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Exams| Generate Examinations</title>
    
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Questa Online Exam App helps educators to create fast and instant assessments to evaluate students with ease.">
    <meta name="keywords" content="Quiz, App, Tech, Education, Examination, Testing App, CBT, Computer-based Test, Online Exam, Online Test">
    <meta name="author" content="Bamsquare Education and Tech Enterprise">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="<?= base_url(); ?>">
    <meta property="og:title" content="Questa Online Examination App">
    <meta property="og:description" content="For Educators, Students and enthusiasts">
    <meta property="og:image" content="<?= ASSETS_PATH; ?>images/favicon.png">

    <!-- Favicon icon -->
    <link rel="icon" href="<?= ASSETS_PATH; ?>images/favicon.png" type="image/x-icon">

    <!-- font css -->
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>fonts/feather.css">
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>fonts/fontawesome.css">
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>fonts/material.css">

    <!-- vendor css -->
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>css/style.css" id="main-style-link">

    <style type="text/css">

        #score_result {
            display: inline-block;
            color: white;
            font-size: 50px;
            width: 120px;
            height: 120px;
            background: rgb(165, 225, 171);
            border-radius: 9999999999999px;
        }

        .nav-link {
            background: transparent;
        }

        .options_panel {
            cursor: pointer;

        }

        .options_panel:hover {
            background: rgb(173, 167, 245);
            border-color: rgb(173, 167, 245);
            color: white;
        }

        .option_selected {
            background: rgb(114, 103, 239);
            color: white;
            border-color: rgb(173, 167, 245);
        }
        
        /* Firefox */
        .feed-scroll {
          scrollbar-width: thin;
          scrollbar-color: rgb(194, 202, 226);
        }

        /* Chrome, Edge and Safari */
        .feed-scroll::-webkit-scrollbar {
          width: 10px;
          width: 10px;
        }

        .feed-scroll::-webkit-scrollbar-track {
          border-radius: 5px;
          background-color: rgb(194, 202, 226);
        }

        .feed-scroll::-webkit-scrollbar-track:hover {
          background-color: rgb(194, 202, 226);
        }

        .feed-scroll::-webkit-scrollbar-track:active {
          background-color: rgb(194, 202, 226);
        }

        .feed-scroll::-webkit-scrollbar-thumb {
          border-radius: 5px;
          background-color: rgb(194, 202, 226);
        }

        .feed-scroll::-webkit-scrollbar-thumb:hover {
          background-color: rgb(194, 202, 226);
        }

        .feed-scroll::-webkit-scrollbar-thumb:active {
          background-color: #62A34B;
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
                    <div class="col-md-6">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Examinations</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Home</a></li>
                            <li class="breadcrumb-item">Generate</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->

        <div class="row">
            
            <div class="col-xl-12 col-md-4">

                <div class="card feed-card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <div>
                            <h5>Generated Exams</h5>
                            <small>List showing examinations you have generated.</small>
                        </div>
                        <button data-toggle="modal" data-target="#generate_modal" class="btn btn-sm btn-primary">Generate Exam</button>
                    </div>
                    <div class="feed-scroll" style="height: 200px;position:relative; overflow-y: auto">
                        <div class="card-body">
                            <?php if ($generated_exams): ?>
                            <?php foreach($generated_exams as $k => $exam): ?>
                            <div class="row m-b-25 align-items-center exam_feed_row">
                                <div class="col-md-10 col-sm-12 d-flex align-items-start">
                                    <i data-feather="file-text" class="bg-light-<?= ($exam['taken']) ? 'success': 'primary'; ?> feed-icon p-2 wid-30 hei-30"></i>
                                    <div class="ml-3">
                                        <h6 class="m-0"><?= $exam['title']; ?></h6>
                                        <small>
                                            <span class="badge bg-info"><?= ucfirst($exam['type']); ?></span>
                                            <span class="badge bg-info"><?= ucfirst($exam['subject']); ?></span>
                                        </small>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-12 small text-right">
                                    <?php if ($exam['taken']): ?>
                                        <span data-toggle = "modal" data-target = "#start_exam_modal" class="btn btn-sm btn-success text-white small">
                                            <small>Retake <i data-feather="play"></i></small>
                                        </span>
                                    <?php endif; ?>

                                    <?php if (!$exam['taken']): ?>
                                        <span data-toggle = "modal" data-target = "#start_exam_modal" class="btn btn-sm text-primary small">
                                            <small>Start <i class="fas fa-play-circle ml-2"></i></small>
                                        </span>
                                    <?php endif; ?>
                                </div>
                            </div>
                            <?php endforeach; ?>
                            <?php endif; ?>
                            
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

<form id="generate_form">
    <div class="modal fade" id="generate_modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Generate Exams</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">

                <?php

                    $types = [
                        'utme',
                        'wassce',
                        'post-utme'
                    ];

                    $subjects = [
                        'english',
                        'mathematics',
                        'commerce',
                        'accounting',
                        'biology',
                        'physics',
                        'chemistry',
                        'englishlit',
                        'government',
                        'crk',
                        'geography',
                        'economics',
                        'irk',
                        'civiledu',
                        'insurance',
                        'currentaffairs',
                        'history'
                    ];

                    $years = [];

                    for ($i = 2001; $i < 2021; $i++) {
                        array_push($years, $i);
                    }
                ?>

                <div class="form-group mb-3">
                    <label class="font-weight-bold mb-1">Title
                        <span title="Suggest a suitable title."><i class="fas fa-question-circle"></i></span>
                    </label>
                    <input id = "title" type="text" class="form-control form-control-sm" placeholder="Suggest a suitable title..." value="lkjhgfghjkiuyg" name="" required>

                </div>

                <div class="form-group mb-3">
                    <label class="font-weight-bold mb-1">Exam Type</label>
                    <select id="type" class="form-control form-control-sm" required>
                        <option value="">Please select exam type...</option>
                        <?php foreach($types as $type): ?>
                            <option value="<?= $type; ?>"><?= ucfirst($type); ?></option>
                        <?php endforeach; ?>
                        
                    </select>
                </div>

                <div class="form-group mb-3">
                    <label class="font-weight-bold mb-1">Subject</label>
                    <select id="subject" class="form-control form-control-sm" required>
                        <option value="">Please select a subject...</option>
                        <?php foreach($subjects as $subject): ?>
                            <option value="<?= $subject; ?>"><?= ucfirst($subject); ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-1">Year</label>
                    <select id="year" class="form-control form-control-sm">
                        <option value="">Please select a year...</option>
                        <?php foreach($years as $year): ?>
                            <option value="<?= $year; ?>"><?= ($year); ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-1">Number of Questions</label>
                    <input id="number_of_questions" class="form-control form-control-sm" type="number" min="10" max="60" name="" required>
                </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-sm" data-dismiss="modal">Close</button>
            <button id = "submit_button" type="submit" class="btn btn-sm btn-primary">Confirm</button>
          </div>
        </div>
      </div>
    </div>
</form>

<div class="modal fade" id="start_exam_modal" data-backdrop="static" tabindex="-1" aria-labelledby="" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xl">
    <div class="modal-content" id="start_exam_panel">
      <div class="modal-header">
        <h5 class="modal-title" id="feature_exam_title">Generate Exams</h5>
        <div>
            <div class="d-flex justify-content-center align-items-center">
                <div class="rounded-0 alert mb-0 alert-success py-1 px-3 font-weight-bold" id = "exam_duration_counter" onclick="set_duration();" style="cursor: pointer;">
                    <i class="fas fa-clock mr-2"></i>
                    <span data-count = "60" id = "time_counter" style="font-family: consolas">01h : 00m : 00s</span>
                    
                </div>
                <button id = "submit_exam_btn" class="ml-2 btn btn-sm btn-outline-danger d-none" onclick="submit_exam();">Submit</button>
            </div>
            <div class="small text-center" id = "exam_duration_text"><small>Click to change time</small></div>
        </div>
      </div>
      <div class="modal-body" id = "generated_questions_panel">

            Loading...
            
      </div>
      <div class="modal-footer small">
        <a href="<?= base_url('generate_exams'); ?>">[ Cancel ]</a>
      </div>
    </div>
  </div>
</div>

<!-- Required Js -->
<script src="<?= ASSETS_PATH; ?>js/vendor-all.min.js"></script>
<script src="<?= ASSETS_PATH; ?>js/plugins/bootstrap.min.js"></script>
<script src="<?= ASSETS_PATH; ?>js/plugins/feather.min.js"></script>
<script src="<?= ASSETS_PATH; ?>js/pcoded.min.js"></script>

<script>
    $("body").append('<div class="fixed-button active"><a href="<?= base_url(); ?>" target="_blank" class="btn btn-md btn-success"><i class="material-icons-two-tone text-white">shopping_cart</i> Development Mode</a> </div>');
</script>

<?= cbt_app_notyf(); ?>

<script type="text/javascript">

    function submit_exam() {
        var prompt = confirm("Are you sure you want to submit now? Click yes to confirm.");

        if (prompt == true) {
            stop_exam();
        }
    }

    function format_duration(time) {

        function pad_with_zero($value) {

            if ($value < 10) {
                $value = "0" + $value;
                
            }
            return $value;
        }

        time = time * 60;

        remaining_hours = Math.floor(time / 3600);
        remaining_minutes = Math.floor(((time / 3600) - Math.floor(time / 3600)) * 60);

        remaining_seconds = Math.round((((time / 60) - Math.floor(time / 60))) * 60);

        return {
            hour: pad_with_zero(remaining_hours),
            minute: pad_with_zero(remaining_minutes),
            second: pad_with_zero(remaining_seconds)
        }
    }

    function set_duration() {

        let user_choice_duration = Number(prompt("Exam duration (minutes):"));

        if (isNaN(user_choice_duration)) {
            user_choice_duration = 0;
        }

        $("#time_counter").attr('data-count', user_choice_duration);
        $("#time_counter").text(format_duration(user_choice_duration).hour + "h : " + format_duration(user_choice_duration).minute + "m : " + format_duration(user_choice_duration).second + "s");
    }

    let exams_array = [];
        
    function check_in(target_button, candidate_id, exam_id) {

        $(target_button).prop('disabled', true);

        $(target_button).html('Validating <i class = "fas fa-spinner fa-spin"></i>');

        $.ajax({

            url: '<?= base_url('auth/check_in'); ?>',
            type: "POST",
            data: {

                candidate_check_in: candidate_id,
                exam_code: exam_id
            },
            success: function(data) {
                console.log(JSON.parse(data));
                result = JSON.parse(data);

                if ((result.exam_exists == true) && (result.candidate_exists == true)) {

                    $(target_button).removeClass('btn-primary');
                    $(target_button).addClass('btn-success');
                    $(target_button).html('Validation Success <i class = "fas fa-check-circle"></i>');

                    width = window.innerWidth;
                    height = window.innerHeight;

                    window.location.href = "<?= base_url('examination/start/'); ?>/" + exam_id;
                }
                else {
                    $(target_button).addClass('btn-danger');
                    $(target_button).removeClass('btn-success');
                    $(target_button).html('Validation Error <i class = "fas fa-info-circle"></i>');

                    setTimeout(function() {

                        $(target_button).removeClass('btn-danger');
                        $(target_button).addClass('btn-primary');
                        $(target_button).html('Check In <i class="fas fa-arrow-right ml-2"></i>');
                        $(target_button).prop('disabled', false);
                    }, 5000);
                }
                
            },
            error: function(error) {
                console.log("Something went wrong!");
                console.log(error);
            }
        })
    }

    $("#generate_form").submit(function(evt) {

        evt.preventDefault();

        let no_of_ques = $("#number_of_questions").val();
        let subject = $("#subject").val();
        let type = $("#type").val();

        $("#submit_button").html('Working... <i class = "fas fa-spinner fa-spin"></i>');
        $("#submit_button").prop('disabled', true);

        async function postData(url = "", data = {}) {
          const response = await fetch(url, {
            method: "GET",
            mode: "cors",
            cache: "no-cache",
            credentials: "same-origin",
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
                'AccessToken': 'QB-a212a634b5fef6d6c62b'
            },
            redirect: "follow",
            referrerPolicy: "no-referrer",
          });
          return response.json(); // parses JSON response into native JavaScript objects
        }

        postData(`https://questions.aloc.com.ng/api/v2/m/${no_of_ques}?subject=${subject}`)
        .then((data) => {
            console.log(data);

            // Send to Server
            $.ajax({
                url: '<?= base_url('generate_exams/save_generated_exam'); ?>',
                method: 'POST',
                data: {
                    title: $("#title").val(),
                    year: $("#year").val(),
                    subject: $("#subject").val(),
                    type: $("#type").val(),
                    save_generated_exam: JSON.stringify(data.data)
                },
                success: function(data) {

                    if (data == 0)
                        console.log("No success")
                    else
                        console.log("Success");

                    $("#submit_button").html('Confirm');
                    $("#submit_button").prop('disabled', false);

                    $("#start_exam_modal").modal('show');
                    $("#generate_modal").modal('hide');

                    $("#feature_exam_title").text($("#title").val());

                    $("#generated_questions_panel").html(data);
                },
                error: function(error) {
                    console.log(error);

                    $("#submit_button").html('Confirm');
                    $("#submit_button").prop('disabled', false);
                }
            });
        })
        .catch(error => {
            $("#submit_button").html('Confirm');
            $("#submit_button").prop('disabled', false);

            alert("Seems your network has issues. Try again!");
        });
    });

    function start_exam($this, target_to_focus) {

        let exam_duration = Number($("#time_counter").attr('data-count')) * 60;

        if (isNaN(exam_duration) || exam_duration <= 0) {
            alert("Exam duration is wrong!");
            return;
        }

        $("#exam_duration_counter").attr('onclick', ''); // Remove onclick event
        $("#exam_duration_text").addClass('d-none');

        $("button.questions_tab_link").attr('disabled', false);

        $("#submit_exam_btn").removeClass('d-none');

        $($this).remove();
        $(target_to_focus).click();

        exam_timer = setInterval(function() {

            if (exam_duration >= 0) {

                remaining_hours = Math.floor(exam_duration / 3600);
                remaining_minutes = Math.floor(((exam_duration / 3600) - Math.floor(exam_duration / 3600)) * 60);
                remaining_seconds = Math.round((((exam_duration / 60) - Math.floor(exam_duration / 60))) * 60);

                $("#time_counter").html(remaining_hours + "h : " + remaining_minutes + "m : " + remaining_seconds + "s");

            }
            else {

                stop_exam();
                clearInterval(exam_timer);
            }

            exam_duration -= 1;

        }, 1000);

        elem = document.getElementById('start_exam_panel');
        openFullscreen(elem);
    }

    function stop_exam() {

        clearInterval(exam_timer);

        chosen_answers = []; // Answers to be sent to server

        $(".options_panel").attr('onclick', '');

        $("#submit_exam_btn").addClass('d-none');

        questions_card = $('.questions_card');

        number_of_questions = questions_card.length;

        correct_answers = 0;

        questions_card.each(function(index, value) {

            answer = $($(value).find('.answer')).val();
            selected_answer = $($(value).find('.option_selected')).attr('data-select');

            if (selected_answer != undefined) {
                if (answer == selected_answer) {
                    correct_answers++;

                    $($(value).find('.option_selected')).css('background-color', 'rgb(0, 200, 0)');
                }
                else {
                    $($(value).find('.option_selected')).css('background-color', 'rgb(200, 0, 0)');

                    ($(value).find('.options_panel')).each((index, value) => {
                        if ($(value).attr('data-select') == answer) {
                            $(value).css('background-color', 'rgb(0, 200, 0)');

                        }
                    });
                }
            }

        });

        $(".question_options").removeClass('options_panel');

        $("#result_tab_link").removeClass('d-none');
        $("#result_tab_link > button").click();

        $("#score_result").text(correct_answers);
        $("#no_of_questions").text(number_of_questions);

        $("#score_result").css({ 'background-color': 'rgb(0, 200, 0)', 'color': 'white' });

        if (correct_answers < 0.5 * number_of_questions) {
            $("#score_result").css({ 'background-color': 'rgb(200, 0, 0)', 'color': 'white' });
        }
    }

    function select_option(target_obj) {

        target_parent = $(target_obj).parents('.parent_for_options');

        options = $(target_parent).find(".options_panel");
        $(options).removeClass('option_selected');
        $(target_obj).addClass('option_selected');

    }

</script>

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

</body>

</html>
