<!DOCTYPE html>
<html lang="en">

<head>

    <title>Questa Online Exams | Checkpoint - Access Token</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Questa Online Exam App helps educators to create fast and instant assessments to evaluate students with ease.">
    <meta name="keywords" content="Quiz, App, Tech, Education, Examination, Testing App, CBT, Computer-based Test, Online Exam, Online Test">
    <meta name="author" content="Bamsquare Education and Tech Enterprise">
    
    <!-- Open Graph / Facebook -->
    
    <meta property="og:type" content="website">
    <meta property="og:url" content="<?= base_url(); ?>">
    <meta property="og:title" content="<?= $examination['exam_title']; ?>">
    <meta property="og:description" content="<?= $candidate['first_name'] . " " . $candidate['last_name']; ?>">
    <meta property="og:image" content="<?= ASSETS_PATH; ?>images/favicon.png">

    <!-- Favicon icon -->
    <link rel="icon" href="<?= ASSETS_PATH; ?>images/favicon.png" type="image/x-icon">

    <!-- font css -->
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>fonts/feather.css">
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>fonts/fontawesome.css">
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>fonts/material.css">

    <!-- vendor css -->
    <link rel="stylesheet" href="<?= ASSETS_PATH; ?>css/style.css" id="main-style-link">


</head>

<!-- [ auth-signin ] start -->
<div class="auth-wrapper" style="background: rgb(50, 50, 50);">
    <div class="auth-content">
        <div class="card">
            <div class="row align-items-center text-center">
                <div class="col-md-12">
                    <div class="card-body">

                        <form id = "checker_form" action="<?= base_url('auth/check_in'); ?>" method = "POST">
                            
                            <div class="border-bottom rounded pb-4 mb-4">
                                <img src="<?= ASSETS_PATH; ?>images/logo.png" alt="questa_logo" width = "150px" class="img-fluid">
                            </div>
                            <div class="input-group mb-3 d-none">
                                <span class="input-group-text"><i data-feather="mail"></i></span>
                                <input type="text" class="form-control" placeholder="Enter Examination Code" id = "exam_code" name = "exam_no" value = "<?= $exam_id; ?>" required>
                            </div>

                            <div class="input-group mb-4 d-none">
                                <span class="input-group-text"><i data-feather="lock"></i></span>
                                <input type="text" class="form-control" placeholder="Enter User Code" id = "user_code" name = "usercode" value="<?= $candidate_id; ?>" required>
                            </div>

                            <div class="text-left mb-4">
                                <p class="mb-0">
                                    Welcome
                                </p>
                                <h3>
                                    <?= $candidate['first_name'] . " " . $candidate['last_name']; ?>
                                </h3>
                            </div>

                            <div class="input-group mb-4">
                                <span class="input-group-text"><i data-feather="lock"></i></span>
                                <input type="text" class="form-control" placeholder="Enter access token" id = "access_token" name = "access_token" value="" required>
                            </div>

                            <button name = "check_in_btn" class="btn btn-block btn-primary w-100">Check In</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- [ auth-signin ] end -->

<!-- Required Js -->
<script src="<?= ASSETS_PATH; ?>js/vendor-all.min.js"></script>
<script src="<?= ASSETS_PATH; ?>js/plugins/bootstrap.min.js"></script>
<script src="<?= ASSETS_PATH; ?>js/plugins/feather.min.js"></script>
<script src="<?= ASSETS_PATH; ?>js/pcoded.min.js"></script>

<?= cbt_app_notyf(); ?>

    <script type="text/javascript">
        
        $("#checker_form").submit(function(evt) {

            evt.preventDefault();

            $("[name = check_in_btn]").prop('disabled', true);

            $("[name = check_in_btn]").html('Validating <i class = "fas fa-spinner fa-spin"></i>');

            $.ajax({

                url: '<?= base_url('auth/check_in'); ?>',
                type: "POST",
                data: {

                    candidate_check_in: $("#user_code").val(),
                    exam_code: $("#exam_code").val(),
                    access_token: $("#access_token").val()
                },
                success: function(data) {
                    console.log(JSON.parse(data));
                    result = JSON.parse(data);

                    if ((result.exam_exists == true) && (result.candidate_exists == true) && (result.access_token_correct == true)) {

                        $("[name = check_in_btn]").removeClass('btn-primary');
                        $("[name = check_in_btn]").addClass('btn-success');
                        $("[name = check_in_btn]").html('Validation Success <i class = "fas fa-check-circle"></i>');

                        width = window.innerWidth;
                        height = window.innerHeight;

                        window.location.href = "<?= base_url('examination/start/'); ?>/" + $("#exam_code").val();
                    }
                    else {
                        $("[name = check_in_btn]").addClass('btn-danger');
                        $("[name = check_in_btn]").removeClass('btn-success');
                        $("[name = check_in_btn]").html('Validation Error <i class = "fas fa-info-circle"></i>');
                        $("[name = check_in_btn]").prop('disabled', false);

                        setTimeout(function() {

                            $("[name = check_in_btn]").removeClass('btn-danger');
                            $("[name = check_in_btn]").addClass('btn-primary');
                            $("[name = check_in_btn]").html('Signin');
                        }, 2000);
                    }
                    
                },
                error: function(error) {
                    console.log("Something went wrong!");
                    console.log(error);
                }
            })
        });

    </script>

</body>

</html>
