<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Quiz App | Add Examination</title>
    
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
                            <li class="breadcrumb-item">Add</li>
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
                    
                    <div class="card-header pb-0 d-flex justify-content-center align-items-center">
                        <nav>
                          <div class="nav nav-tabs border-0" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active font-weight-bold" id="nav-home-tab" data-toggle="tab" href="#details" role="tab" aria-controls="nav-home" aria-selected="true">Basic Info</a>
                          </div>
                        </nav> 
                    </div>
                    <div class="card-body">
                        
                        <div class="tab-content" id="myTabContent">
                          <div class="tab-pane fade show active" id="details" role="tabpanel" aria-labelledby="home-tab">
                              
                            <div class="row justify-content-center">
                                <div class="col-sm-12 col-md-8">
                                    
                                    <form action="<?= base_url('examinations/add_examination'); ?>" method = "POST">
                                        <div class="row mb-3">
                                            <label for="" class="col-sm-12 col-md-3 col-form-label">Exam N<u>o</u></label>
                                            <div class="col-sm-12 col-md-9">
                                                <input name = "exam_no" type="text" class="form-control" value="<?= code_generator('', 7); ?>" readonly style = "font-family: consolas">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="" class="col-sm-12 col-md-3 col-form-label">Type</label>
                                            <div class="col-sm-12 col-md-9 pt-2">
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name = "type" value = "1" required>
                                                    <label class="form-check-label">
                                                        Multi-choice
                                                    </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name = "type" value = "2" required>
                                                    <label class="form-check-label">
                                                        Essay
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="" class="col-sm-12 col-md-3 col-form-label">Title</label>
                                            <div class="col-sm-12 col-md-9">
                                                <input name = "title" type="text" class="form-control" id="" required>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="" class="col-sm-12 col-md-3 col-form-label">Class</label>
                                            <div class="col-sm-12 col-md-9">
                                                <select name = "class" class="form-control" required>
                                                    <option value="">Please select Class</option>
                                                    <?php if ($classes): ?>
                                                    <?php foreach($classes as $item): ?>
                                                    <option value="<?= $item['class_id']; ?>"><?= $item['class_name']; ?></option>
                                                    <?php endforeach; ?>
                                                    <?php endif; ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="" class="col-sm-12 col-md-3 col-form-label">Subject</label>
                                            <div class="col-sm-12 col-md-9">
                                                <select name = "subject" class="form-control" required>
                                                    
                                                    <option value="">Please select Subject</option>
                                                    <?php if ($subjects): ?>
                                                    <?php foreach($subjects as $item): ?>
                                                    <option value="<?= $item['subject_id']; ?>"><?= $item['subject_name']; ?></option>
                                                    <?php endforeach; ?>
                                                    <?php endif; ?>

                                                </select>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="" class="col-sm-12 col-md-3 col-form-label">Duration <i data-toggle = "tooltip" title = "The time duration for this examination is set in minutes. [60minutes = 1Hour]." class="fas fa-question-circle"></i></label>
                                            <div class="col-sm-12 col-md-9">
                                                <div class="input-group">
                                                    <input name="duration" min="1" step="1" value="1" type="number" type="text" class="form-control" required>
                                                    <span class="input-group-text">Minutes</span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label for="" class="col-sm-12 col-md-3 col-form-label">Allow File Upload <i data-toggle = "tooltip" title = "Allow candidates to upload documents when attempting the examination." class="fas fa-question-circle"></i></label>
                                            <div class="col-sm-12 col-md-9">
                                                <select name = "allow_upload" class="form-control" required>
                                                    <option value="">Please select</option>
                                                    <option value="1" selected>Yes</option>
                                                    <option value="0">No</option>
                                                </select>
                                            </div>
                                            
                                        </div>

                                        <div class="row mb-3">
                                            <label for="" class="col-sm-12 col-md-3 col-form-label">Shuffle Questions <i data-toggle = "tooltip" title = "Questions set for this examination are shown to candidates in randomised order." class="fas fa-question-circle"></i></label>
                                            <div class="col-sm-12 col-md-9">
                                                <select name = "shuffle" class="form-control" required>
                                                    <option value="">Please select</option>
                                                    <option value="1">Yes</option>
                                                    <option value="0" selected>No</option>
                                                </select>
                                            </div>
                                            
                                        </div>

                                        <div class="row mb-3">
                                            <label for="" class="col-sm-12 col-md-3 col-form-label">Fullscreen Mode <i data-toggle = "tooltip" title = "Examination can be presented to candidates in fullscreen or just as normal in-browser app. Fullscreen mode discourages malpractice." class="fas fa-question-circle"></i></label>
                                            <div class="col-sm-12 col-md-9">
                                                <select name = "fullscreen" class="form-control" required>
                                                    <option value="">Please select</option>
                                                    <option value="1" selected>Yes</option>
                                                    <option value="0">No</option>
                                                </select>
                                            </div>
                                            
                                        </div>

                                        <div class="row mb-3">
                                            <label for="" class="col-sm-12 col-md-3 col-form-label">Instruction(s) <i data-toggle = "tooltip" title = "Set guiding instructions for candidates to follow." class="fas fa-question-circle"></i></label>
                                            <div class="col-sm-12 col-md-9">
                                                <textarea rows="6" id = "exam_instructions" class="form-control" name = "exam_instructions" required></textarea>
                                            </div>
                                        </div>
                                        <div class="text-right">
                                            <button name = "create_exam_btn" type="submit" class="btn btn-primary">Create Exam</button>
                                        </div>
                                    </form>

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

    <script type="text/javascript">

        CKEDITOR.replace( 'exam_instructions' );

    </script>

</body>

</html>
