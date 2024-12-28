<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Exams| Dashboard</title>
    
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

<script>
    $("body").append('<div class="fixed-button active"><a href="https://gumroad.com/dashboardkit" target="_blank" class="btn btn-md btn-success"><i class="material-icons-two-tone text-white">shopping_cart</i> Development Mode</a> </div>');
</script>

<?= cbt_app_notyf(); ?>

<script type="text/javascript">
        
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

</script>

</body>

</html>
