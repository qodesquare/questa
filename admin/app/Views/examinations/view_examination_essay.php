<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Exams | View Examination - Essay</title>
    
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

    <link rel="stylesheet" type="text/css" href="<?= ASSETS_PATH; ?>js/plugins/select_2_plugin/bootstrap-multiselect.min.css">

    <link rel="stylesheet" href="https://unpkg.com/dropzone@5/dist/min/dropzone.min.css" type="text/css" />

    <style type="text/css">

        .question_card, .candidate_card {

            box-shadow: 0px 0px 0px 0px transparent;
        }
        
        .question_card {
            position: relative;
        }
        
        .question_card > .ordering_panel {
            position: absolute;
            width: 100%;
            
        }
        
        .question_options:hover span {
            cursor: text;
        }

        .question_options:hover {
            border-color: rgba(216, 213, 251) !important;
        }

        .question_card:hover, .candidate_card:hover {

            box-shadow: 0px 0px 15px rgb(240, 240, 240) !important;
            border-color: transparent !important;
        }

        .delete_question_btn, .insert_question_btn {
            transition: opacity 0.5s;
        }

        .question_card:hover .delete_question_btn, .question_card:hover .insert_question_btn, .question_card:hover .ordering_panel {
            opacity: 1 !important;
        }

        html {
          scroll-behavior: smooth;
        }

        .progress {
            border-radius: 999999px;
            cursor: pointer;
        }

        .file_card:hover span {

            right: 10px !important;
        }

        .file_card span {
            transition: right 0.5s;
            cursor: pointer;
        }
        
        .attachment_card:hover {
            cursor: pointer;
        }
        
        .attachment_card:hover a {
            text-decoration: underline;
        }

    </style>

    <script type="text/javascript" src="<?= ASSETS_PATH . "js/plugins/ckeditor/ckeditor.js"; ?>"></script>

</head>

<body class="" onload = "order_questions();">

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
                            <li class="breadcrumb-item"><?= $examination['exam_title']; ?> <span class = "small">[Essay]</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row justify-content-center">
            <div class="col-xl-8 col-md-12 col-lg-8 col-sm-12">
                <div class="card">
                    
                    <div class="card-header row justify-content-between">
                        
                        <div class="col-sm-12 col-md-12">
                            <div class="d-flex align-items-center justify-content-between">
                                <div>
                                    <span class="d-block small"><?= $examination['exam_id']; ?></span>
                                    <h2 class=""><?= $examination['exam_title']; ?></h2>
                                </div>
                                <div>
                                    

                                    <div class="dropdown">
                                        <a class="btn btn-icon btn-outline-secondary btn-sm dropdown-toggle arrow-none mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false" data-offset="-155, 10">
                                            <i data-feather="more-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu pc-h-dropdown">
                                            
                                            <a href="<?= base_url('examinations/tickets/' . $examination['exam_id']); ?>" class="dropdown-item">
                                                <i class="fas fa-file-invoice" style="width: 20px"></i>
                                                <span>Tickets</span>
                                            </a>
                                            <a href="<?= base_url('examinations/results/' . $examination['exam_id']); ?>" class="dropdown-item">
                                                <i class="fas fa-clipboard-list" style="width: 20px"></i>
                                                <span>Results</span>
                                            </a>
                                            
                                            <a href="<?= base_url('examinations/export_exam/' . $examination['exam_id']); ?>" target = "_BLANK" class="dropdown-item">
                                                <i class="fas fa-file-export" style="width: 20px"></i>
                                                <span>Export</span>
                                            </a>
                                            
                                            <a href="<?= base_url('examinations/edit_examination/' . $examination['exam_id']); ?>" class="dropdown-item text-warning">
                                                <i class="fas fa-edit" style="width: 20px"></i>
                                                <span>Edit Details</span>
                                            </a>
                                            <a onclick = "delete_item('<?= $examination['exam_id']; ?>');" href="javascript:void(0)" class="dropdown-item text-danger">
                                                <i class="fas fa-trash-alt" style="width: 20px"></i>
                                                <span>Delete Exam</span>
                                            </a>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            
                            <div class="small mt-3">

                                <div class="row justify-content-center align-items-center">
                                    <div class="col-md-3 col-sm-12">
                                        <span data-toggle = "tooltip" title = "Examination type" class="">
                                            <?php if ($examination['type'] == 1): ?>
                                                <i data-feather="check-circle" class="mr-1"></i> Multi-choice
                                            <?php endif; ?>

                                            <?php if ($examination['type'] == 2): ?>
                                                <i class="mr-1 fas fa-pen"></i> Essay
                                            <?php endif; ?>
                                            
                                        </span>
                                    </div>
                                    <div class="col-md-3 col-sm-12">
                                        <span data-toggle = "tooltip" title = "Subject" class="mr-4">
                                            <i class="fas fa-book"></i> <?= $examination['subject_name']; ?>
                                        </span>
                                    </div>
                                    <div class="col-md-3 col-sm-12">
                                        <span data-toggle = "tooltip" title = "Class" class="mr-4">
                                            <i class="fas fa-graduation-cap"></i> <?= $examination['class_name']; ?>
                                        </span>
                                    </div>
                                    <div class="col-md-3 col-sm-12">
                                        <span data-toggle = "tooltip" title = "Duration" class=""><i class="fas fa-clock"></i> <?= $examination['duration']; ?> Minutes</span>
                                    </div>
                                    
                                </div>

                            </div>

                            <?php if (is_owner_account()): ?>

                            <div class="w-100 d-flex mt-3 small justify-content-between align-items-center">
                                <div class="form-check mr-3">
                                    <?php

                                        if ($examination['status'] == 1) {
                                            $checked = 'checked';
                                            $status = 'Active';
                                        }
                                        else {
                                            $checked = '';
                                            $status = 'Inactive';
                                        }

                                        if ($examination['shuffle_questions'] == 1) {
                                            $shuffle_checked = 'checked';
                                        }
                                        else {
                                            $shuffle_checked = '';
                                        }

                                    ?>
                                    <input <?= $checked; ?> type="checkbox" class="form-check-input" onclick="set_status(this, '<?= $examination['exam_id']; ?>');">
                                    <label class="form-check-label" id = "exam_status_text"><?= $status; ?></label>
                                </div>
                                <div class="form-check" data-toggle = "tooltip" title = "Show questions in random order to candidates.">
                                    <input onchange = "shuffle_exam_questions(this, '<?= $examination['exam_id']; ?>')" type="checkbox" class="form-check-input" <?= $shuffle_checked; ?>>
                                    <label class="form-check-label" for="validationFormCheck1">Shuffle Questions</label>
                                    <span id="shuffle_exam_notif"></span>
                                </div>
                                <div class="ml-3 d-flex align-items-center">
                                    <div class="mr-2">
                                        Assigned to:
                                        <i class="fas fa-spinner fa-spin d-none" id = "assign_notif"></i>
                                    </div>
                                    <select onchange = "assign_personnel();" id="persons" class="" required>
                                        <option value = "">None</option>
                                        <?php if ($personnel): ?>
                                        <?php foreach($personnel as $user): ?>
                                        <option value="<?= $user['user_id']; ?>" <?= ($user['user_id'] == $examination['assigned_to']) ? 'selected': ''; ?>><?= $user['first_name'] . " " . $user['last_name']; ?></option>
                                        <?php endforeach; ?>
                                        <?php endif; ?>
                                    
                                    </select>
                                </div>
                            </div>

                            <?php endif; ?>

                        </div>

                        <div class="col-12 mt-3">

                            <small>Progress Chart</small>
                            
                            <div class="progress mb-2" id = "progress" style="height: 20px; overflow: hidden">

                                <?php if ($exam_questions): ?>
                                <div data-toggle = "tooltip" title = "Questions have been set." class="progress-bar bg-info" role="progressbar" style="width: 60%;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">
                                    <span>Questions <i class="fas fa-check-circle"></i></span>
                                </div>
                                <?php endif; ?>

                                <?php if ($exam_candidates): ?>
                                <div data-toggle = "tooltip" title = "Candidates have been assigned." class="progress-bar bg-primary" role="progressbar" style="width: 20%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">
                                    <span>Candidates <i class="fas fa-check-circle"></i></span>
                                </div>
                                <?php endif; ?>
                                
                                <?php if ($examination['status'] == 1): ?>
                                    <div data-toggle = "tooltip" title = "Exam has been set as active." class="progress-bar bg-success progress_curved" role="progressbar" style="width: 20%;" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                        <span>Activated <i class="fas fa-check-circle"></i></span>
                                    </div>
                                <?php endif; ?>

                            </div>

                            <?php if ($last_editor): ?>
                            <small>
                                <span class="small text-muted">Last edited: <?= $last_editor['first_name'] . " " . $last_editor['last_name']; ?> @ <?= date("jS M, Y h:i:sa", strtotime($examination['date_updated'])); ?></span>
                            </small>
                            <?php endif; ?>

                        </div>

                    </div>

                </div>

                <div class="card">
                    <div class="card-header row justify-content-between align-items-center">

                        <div class="col-12 pb-2 mb-2 align-items-center d-flex justify-content-between">
                            <div>
                                <h5 class="m-0">Attachments</h5>
                                <div class="small m-0 text-muted">
                                    <small>Upload supporting documents and other resources. Supports all file types.</small>
                                </div>
                            </div>
                            <div>
                                <button class = "btn btn-light border btn-sm" data-toggle = "dropdown" data-target = "#attachment_modal">
                                    <i class = "fas fa-folder-open"></i>
                                </button>
                                
                                <div class="dropdown-menu dropdown-menu-right pc-h-dropdown pb-0">
                                    <div class=" dropdown-header border-bottom pb-3">
                                        <h5 class="text-overflow m-0">
                                            <span class="badge bg-light-primary">
                                                <a href="javascript:void(0)">
                                                    Files Access List
                                                </a>
                                            </span>
                                        </h5>
                                    </div>
                                    
                                    <ul class="list-group rounded-0 list-group-flush">
                                    
                                        <?php if ($attachments): ?>
                                        <?php foreach($attachments as $file_item): ?>
                                        
                                        <li class="list-group-item p-0">
                                            <a target = "_BLANK" href="<?= UPLOAD_PATH . 'examinations_attachments/' . $file_item['filepath']; ?>" class="dropdown-item">
                                                <i class="fas fa-file-alt mr-2"></i>
                                                <span><?= $file_item['filename']; ?></span>
                                            </a>
                                        </li>
                                        
                                        <?php endforeach; ?>
                                        <?php endif; ?>
                                    
                                    </ul>
                                    
                                </div>
                            </div>
                        </div>

                        <div class="col-12">
                            <form action="<?= base_url('examinations/upload_file_attachments/' . $examination['exam_id']); ?>" class="dropzone" id="my-dropzone" method = "POST" enctype = "multipart/form-data"></form>
                        </div>
                    </div>

                </div>

            </div>
            
            <!-- title-section end -->
        </div>

        <div class="row justify-content-center">

            <div class="col-xl-8 col-md-12 col-lg-8 col-sm-12">
                <div class="card">
                    
                    <div class="card-header pb-0 d-flex justify-content-center align-items-center">
                        
                        <nav>
                          <div class="nav nav-tabs border-0" id="nav-tab" role="tablist">
                            <a class="nav-item font-weight-bold nav-link active" onclick="toggle_btn();" id="nav-question-tab" data-toggle="tab" href="#questions" role="tab" aria-controls="nav-home" aria-selected="true">Questions</a>

                            <?php if (is_owner_account() || $check_if_assigned_to_user): ?>
                            <a class="nav-item font-weight-bold nav-link" onclick="toggle_btn();" id="nav-candidates-tab" data-toggle="tab" href="#students" role="tab" aria-controls="nav-home" aria-selected="true">Candidates</a>
                            <?php endif; ?>
                          </div>
                        </nav> 

                    </div>
                    <div class="card-body">
                        <div class="tab-content" id="myTabContent">
                          <div class="tab-pane fade show active" id="questions" role="tabpanel" aria-labelledby="home-tab">

                            <div class="alert fade border show d-flex justify-content-between align-items-center" role="alert">
                                <span><i class="fas fa-info-circle mr-2"></i><span id = "total_no_of_questions"><?= count($exam_questions); ?></span> Questions (<span id = "total_points"></span> Marks)</span>
                                <button id = "add_question_btn" data-toggle = "tooltip" title = "Add question to the list" onclick="add_question(0, '#question_container');" class="btn btn-primary btn-sm"><i class="fas fa-plus mr-1"></i>Add</button>
                            </div>

                            <?php if (!$exam_questions): ?>
                            <div class="alert small text-danger text-center fade show" id = "no_question_alert">
                                There are no questions set for this examination!
                            </div>
                            <?php endif; ?>
                            
                            <div id = "question_container">
                                
                                <?php $total_points_for_question = 0; if ($exam_questions): ?>
                                <?php foreach($exam_questions as $k => $item):
                                    $total_points_for_question += $item['points'];
                                    
                                    $ordering_array = json_decode($examination['questions_ordering']);
                                    
                                    $index_ordering = (is_array($ordering_array)) ? array_search($item['question_id'], $ordering_array): $k;
                                ?>
                                <div class="card shadow-0 border question_card mb-4" id = "<?= $item['question_id']; ?>" data-index = "<?= $index_ordering; ?>">
                                    <div class = "ordering_panel" style = "opacity: 0">
                                        <div class = "d-flex justify-content-center">
                                            <button onclick = "reorder(this, 'up')" title = "Move Up" class = "rounded-0 btn btn-sm border text-primary">&#8593;</button>
                                            <button onclick = "reorder(this, 'down')" title = "Move Down" class = "rounded-0 btn btn-sm border text-primary">&#8595;</button>
                                        </div>
                                    </div>
                                    <div class="card-body shadow-0">
                                        
                                        <div class="row">
                                            <div class="col-12 mb-3 d-flex justify-content-between align-items-center">
                                                <h5>Question <span class = "question_order"><?= ($index_ordering + 1); ?></span></h5>
                                                <div class = "d-flex justify-content-center align-items-center">
                                                    <button onclick = "add_question(1, '#<?= $item['question_id']; ?>');" data-toggle = "tooltip" title = "Click to insert question after this one." class = "btn btn-info btn-sm mr-2 insert_question_btn" style = "opacity: 0;"><i class = "fas fa-plus-circle"></i></button>
                                                    <button onclick="delete_question('<?= $item['question_id']; ?>');" class="btn btn-danger btn-sm delete_question_btn" style = "opacity: 0;"><i class="fas fa-trash-alt"></i></button>
                                                </div>
                                            </div>
                                        
                                            <div class="col-md-12 col-lg-3 col-sm-12 mb-3">
                                                <div class="border rounded">
                                                    <div style = "height: 100px; overflow: hidden; position: relative;">
                                                        <img onerror = "place_image(this)" id = "question_image_<?= $item['question_id']; ?>" data-toggle = "tooltip" title = "Click image to enlarge" style = "cursor: pointer" onclick="view_image(this);" src="<?= UPLOAD_PATH . 'questions/' . $item['image']; ?>" class = 'img-fluid rounded-top border-bottom ques_image w-100'>
                                                    </div>
                                                    <button id = "question_button_<?= $item['question_id']; ?>" onclick="$(this).next().click()" class="btn btn-outline-secondary btn-sm w-100 border-0 rounded-bottom"><small>Select Image</small></button>
                                                    <input id = "image_upload_<?= $item['question_id']; ?>" onchange="set_image('<?= $item['question_id']; ?>');" type="file" name="file" class="w-100 d-none" accept=".jpg, .png, .jpeg">
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-lg-9 col-sm-12 d-flex align-items-start mb-3 pl-0">
                                                <div class="p-2 border h-100 w-100 rounded question_title ck_editable" id = "question_title_<?= $item['question_id']; ?>" contenteditable = "true"><?= $item['question_title']; ?></div>
                                            </div> 
                                            
                                        </div>

                                        <div class="row">

                                            <div class="col-sm-12 col-md-12 mb-3">
                                                <div class="border p-2 rounded question_options d-flex flex-column">
                                                    <div class="d-inline-block small text-muted mb-1" onclick="$('#question_hint_<?= $item['question_id']; ?>').focus();">Hints: Show candidates some extra information they might need.</div>
                                                    <div id = "question_hint_<?= $item['question_id']; ?>" contenteditable = "true" class = "d-inline-block w-100"><?= $item['hints']; ?></div>
                                                </div>
                                            </div>

                                            <div class="col-sm-12 col-md-12">
                                                <div class="border p-2 rounded question_options d-flex flex-column">
                                                    <div class="d-inline-block small text-muted mb-1" onclick="$('#question_comment_<?= $item['question_id']; ?>').focus();">Set your marking guidelines.</div>
                                                    <div id = "question_comment_<?= $item['question_id']; ?>" contenteditable = "true" class = "d-inline-block w-100"><?= $item['info_answer']; ?></div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="card-footer">
                                        <div class="row justify-content-center">
                                            <div class="col-sm-12 col-md-12">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <small>Set Points</small>
                                                        <div class="input-group input-group-sm">
                                                            <input id = "points_for_question_<?= $item['question_id']; ?>" onkeyup = "make_display('btn_submit_points_<?= $item['question_id']; ?>');" onchange = "make_display('btn_submit_points_<?= $item['question_id']; ?>');" id = "points_for_question_<?= $item['question_id']; ?>" min = "0" max = "127" type="number" class="form-control" value = "<?= ($item['points'] == 0) ? 1: $item['points']; ?>">

                                                            <button id = "btn_submit_points_<?= $item['question_id']; ?>" onclick = "set_points(this, '<?= $item['question_id']; ?>');" data-toggle = "tooltip" title = "Set points for this question." class="btn btn-info btn-sm d-none"><i class = "fas fa-upload"></i></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php endforeach; ?>
                                <?php endif; ?>
                            </div>

                            <div class="text-center">
                                <button onclick = "submit_questions(this);" class="btn btn-primary">Submit Questions <i class="fas fa-paper-plane ml-2"></i></button>
                            </div>
                              
                          </div>

                          <?php if (is_owner_account() || $check_if_assigned_to_user): ?>
                          <div class="tab-pane fade" id="students" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="row justify-content-center mb-4">
                                <div class="col-sm-12 col-md-6 text-center">

                                    <?php if ($classes): ?>
                                    <select onchange="fetch_candidates(this);" name="class" class="form-control">
                                        <option value="all" selected>All</option>
                                        <?php foreach($classes as $class_item): ?>
                                        <option value="<?= $class_item['class_id']; ?>"><?= $class_item['class_name']; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                    <?php endif; ?>

                                    <span class="small d-none" id = "notif">Working...<i class="fas fa-spinner fa-spin"></i></span>
                                    
                                </div>
                            </div>

                            <div class="table-responsive">
                                <table class="table table-hover" id = "items_table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>
                                                <input type="checkbox" onclick = "check_all(this);">
                                            </th>
                                            
                                            <th>Name</th>
                                        </tr>
                                    </thead>
                                    <tbody id = "table_target">
                                        
                                        <?php if ($candidates): ?>
                                        <?php foreach($candidates as $k => $item): ?>
                                        <tr>
                                            <td style="width: 1%;"><?= $k + 1; ?></td>
                                            <td>
                                                <?php if ($exam_candidates): ?>
                                                <?php foreach($exam_candidates as $candidate): ?>

                                                <?php
                                                    if ($candidate['candidate_id'] == $item['candidate_id']) {
                                                        $checked = 'checked';
                                                        $access_token = $candidate['access_token'];

                                                        break;
                                                    }
                                                    else {
                                                        $access_token = '';
                                                        $checked = '';
                                                    }
                                                
                                                ?>

                                                <?php endforeach; ?>
                                                <?php endif; ?>

                                                <?php if (!$exam_candidates) $checked = ''; ?>

                                                <input type="checkbox" value="<?= $item['candidate_id']; ?>" class="candidates_check_box" <?= $checked; ?> >
                                            </td>
                                            
                                            <td>
                                                <div><?= $item['first_name'] . " " . $item['middle_name'] . " " . $item['last_name']; ?></div>
                                                <b class="small"><?= $item['candidate_id']; ?></b>
                                                <div class="text-muted small">
                                                    <span onclick="copy_to_clipboard(this);" class="badge bg-light-primary" style = "cursor: pointer;" data-toggle = "tooltip" title = "Click to copy direct link">
                                                        <?= ACCESS_PATH . ('auth/access_token/' . $examination['exam_id'] . "/" . $item['candidate_id']); ?>
                                                    </span>

                                                    <?php
                                                        if(!isset($access_token)) {
                                                            $access_token = '';
                                                        }
                                                    ?>

                                                    <?php if ($access_token != ''): ?>
                                                    <span style = "cursor: pointer" onclick="copy_to_clipboard(this);" data-toggle = "tooltip" title = "Click to copy Access Token" class = "badge bg-dark ml-1"><?= $access_token; ?></span>
                                                    <span style = "cursor: pointer" onclick="copy_access_to_clipboard(this);" data-toggle = "tooltip" class = "badge bg-info ml-1" text_title = "<?= $item['first_name'] . " " . $item['last_name'] . " &bull; " . $examination['exam_title'] . "&#13;" . ACCESS_PATH . ('auth/access_token/' . $examination['exam_id'] . "/" . $item['candidate_id']); ?>&#13;Access Code: <?= $access_token; ?>">
                                                        Copy Access Link
                                                    </span>
                                                    <?php endif; ?>
                                                </div>
                                            </td>
                                        </tr>
                                        <?php endforeach; ?>
                                        <?php endif; ?>

                                    </tbody>
                                </table>
                            </div>

                            <div class="text-center mt-4">
                                <button onclick = "assign_candidates(this);" class="btn btn-primary">Assign Candidates <i class="fas fa-paper-plane ml-2"></i></button>
                            </div>

                          </div>
                            <?php endif; ?>

                        </div>

                    </div>

                </div>
            </div>
            
            <!-- customer-section end -->
        </div>

    </div>
    <?= $this->include('includes/footer'); ?>

    <div id="enlarge_image_modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">Image Viewer</h5>
                    <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <img id = "image_enlarge_holder" src="<?= ASSETS_PATH . 'images/question.jpg'; ?>" class = "w-100 rounded">
                </div>
                <div class="modal-footer">
                    <div class = "d-flex justify-content-between w-100">
                        <button onclick = "delete_image(this);" id = "delete_image_button" type="button" class="btn text-danger btn-sm"><i class = "fas fa-trash-alt mr-1"></i>Remove</button>
                        <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal"><i class = "fas fa-times-circle mr-1"></i>Close</button>
                    </div>
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

    <script type="text/javascript" src="<?= ASSETS_PATH; ?>js/plugins/select_2_plugin/bootstrap-multiselect.min.js"></script>

    <script src="<?= ASSETS_PATH; ?>js/plugins/datatables/datatables.min.js"></script>

    <script src="<?= ASSETS_PATH; ?>js/plugins/notify.min.js"></script>

    <script type="text/javascript" src="<?= ASSETS_PATH; ?>js/simple_upload.js"></script>

    <script src="https://unpkg.com/dropzone@5/dist/min/dropzone.min.js"></script>

    <script type="text/javascript">

        let updates_made = false;

        Dropzone.options.myDropzone = {
          maxFilesize: 10,
          addRemoveLinks: true,
          removedfile: function(file) {

            var fileName = (file.name).replace(' ', '_');
            
            $.notify(
                "File deletion in progress...",
                'info'
            );

            $.ajax({
              type: 'POST',
              url: '<?= base_url('examinations/delete_uploaded_file'); ?>',
              data: {
                name: fileName,
                request: 'delete'
              },
              success: function(data){
                console.log('success: ' + data);
                
                $.notify(
                    "Operation success! File delete successful!",
                    'success'
                );
                
                var _ref;

                return (_ref = file.previewElement) != null ? _ref.parentNode.removeChild(file.previewElement) : void 0;
              },
              error: function(error) {
                  
                console.log("Error occured: " + error);
                $.notify(
                    "Operation suspended! File delete NOT successful!",
                    'error'
                );
              }

            });

          }
          
        };

        Dropzone.autoDiscover = false;
        $("#my-dropzone").dropzone({

          init: function() {

            myDropzone = this;
            $.ajax({
              url: '<?= base_url('examinations/get_exam_attachments/' . $examination['exam_id']); ?>',
              type: 'post',
              data: {
                request: 'fetch',
                examination_id: '<?= $examination['exam_id']; ?>'
              },
              dataType: 'json',
              success: function(response){
                $.each(response, function(key , value) {

                  var mockFile = { name: value.real_name, size: value.size};
                  myDropzone.emit("addedfile", mockFile);
                  myDropzone.emit("thumbnail", mockFile, '<?= base_url(); ?>/' + value.path);
                  myDropzone.emit("complete", mockFile);

                });

              }

            });

          }

        });

        function delete_file(file_id) {

            $("#file_delete_notif").html('<i class = "fas fa-spinner fa-spin"></i>');

            $.ajax({
                url: '<?= base_url('examinations/delete_file_attachment'); ?>',
                type: 'POST',
                data: {
                    file_attachment_id: file_id
                },
                success: function(data) {

                    if (data == 1) {
                        $("#" + file_id).remove();
                    }
                    $.notify(
                        "Operation success! File delete successful!",
                        'success'
                    );

                    $("#file_delete_notif").html('');
                },
                error: function(error) {
                    console.log(error);
                    $.notify(
                        "Operation error! File not deleted.",
                        'error'
                    );
                    $("#file_delete_notif").html('');
                }
            })
        }
        
        $(document).ready(function() {
            $('#items_table').DataTable({
                order: [[0, 'asc']],
                lengthMenu: [
                    [25, 50, 100, -1],
                    [25, 50, 100, 'All'],
                ],
            });
          
        });

        $(document).ready(function() {
            $('#persons').multiselect({
                maxHeight: 400,
                enableFiltering: true,
                buttonWidth: '100%',
                buttonText: function(options, select) {
                    if (options.length === 0) {
                        return 'Select personnel to assign...';
                    }
                    else if (options.length > 5) {
                        return 'More than 5 options selected!';
                    }
                    else {
                        var labels = [];
                        options.each(function() {
                            if ($(this).attr('label') !== undefined) {
                                labels.push($(this).attr('label'));
                            }
                            else {
                                labels.push($(this).html());
                            }
                        });
                        return labels.join(', ') + '';
                    }
                }
            });

            $(".multiselect").addClass('btn btn-light');
        });

    </script>

    <script>
        $("body").append(`
            <div id = "fixed_btn" class="text-center fixed-button active d-flex flex-column" style = "display: none; background: transparent !important; box-shadow: 0 0px 0px rgb(0 0 0 / 35%)">
                <button onclick = "scroll_to_top();" class = "mb-1 btn btn-dark px-3 btn-sm d-block" data-toggle = "tooltip" title = "Scroll up">
                    <i class = "fas fa-angle-up"></i>
                </button>
                <button data-toggle = "tooltip" id = "add_question_btn_2" title = "Add Question" onclick = "$('#add_question_btn').click();"  class = "btn btn-primary px-3 btn-sm">
                    <i class = "fas fa-plus"></i>
                </button>
                <button onclick = "scroll_to_down();" class = "mt-1 btn btn-dark px-3 btn-sm d-block mb-2" data-toggle = "tooltip" title = "Scroll down">
                    <i class = "fas fa-angle-down"></i>
                </button>
            </div>
        `);
    </script>

    <script type="text/javascript">

        function toggle_btn() {

            $("#add_question_btn_2").slideToggle('d-none');

        }

        function scroll_to_top() {

            $('html, body').animate({scrollTop: 0}, "fast");
        }

        function scroll_to_down() {

            $('html, body').animate({scrollTop: $(document).height()}, "fast");
        }
        
        function view_image(obj) {
            
            image_path = $(obj).attr('src');
            
            if (image_path.includes('image_question.png')) {
                $.notify(
                    "No image available for this question!",
                    'warning'
                );
                return;
            }

            $("#image_enlarge_holder").attr('src', image_path);
            target = $(obj).attr('id');
            
            $("#delete_image_button").attr('target', target);
            $("#enlarge_image_modal").modal('show');

        }
        
        function delete_image(this_obj) {
            
            $(this_obj).html('<i class = "fas fa-spinner fa-spin"></i> Remove');
            
            value = $(this_obj).attr('target');
            question_id = (value).substring(15, value.length); console.log(question_id);
            
            $.ajax({
               url: '<?= base_url('questions/delete_question_image'); ?>',
               type: 'POST',
               data: {
                   question_id: question_id,
                   delete_question_image: 1
               },
               success: function(data) { console.log(data);
                   
                    $.notify(
                        "Operation success! Image has been removed.",
                        'success'
                    );
                    
                    $(this_obj).html('<i class = "fas fa-trash-alt"></i> Remove');
                    $("#enlarge_image_modal").modal('hide');
                    $("#question_image_" + question_id).attr('src', '<?= UPLOAD_PATH . 'questions/image_question.png'; ?>');
                   
               },
               error: function(error) {
                    console.log(error);
                   
                    $.notify(
                       "Operation error! Image not removed.",
                       'error'
                    );
                    
                    $(this_obj).html('<i class = "fas fa-trash-alt"></i> Remove');
                    $("#enlarge_image_modal").modal('hide');
               }
            });

            updates_made = true;
        }

        function assign_personnel() {

            $("#assign_notif").removeClass('d-none');

            $.ajax({
                url: '<?= base_url('examinations/assign_personnel'); ?>',
                type: 'POST',
                data: {
                    assign_personnel: $("#persons").val(),
                    exam_id: '<?= $examination['exam_id']; ?>'
                },
                success: function(data) {
                    
                    $("#assign_notif").addClass('d-none');
                    
                    if ($("#persons").val() == '') {
                        msg = "Personnel has been removed";
                    }
                    else {
                        msg = "Personnel has been assigned";
                    }
                    
                    $.notify(
                        "Operation success! " + msg,
                        'success'
                    );
                },
                error: function(error) {
                    console.log(error);
                    $("#assign_notif").addClass('d-none');
                    
                    $.notify(
                       "Operation error! Not assigned.",
                       'error'
                    );
                }
            });

            updates_made = true;
        }

        function set_image(question_id) {

            $this_obj = $("#image_upload_" + question_id);

            $target_image = $("#question_image_" + question_id);
            $target_button = $("#question_button_" + question_id);
            
            $target_button.text(0 + "%");

            $this_obj.simpleUpload("<?= base_url('examinations/upload_file/'); ?>/" + question_id, {

                allowedExts: ["jpg", "jpeg", "png"],
                allowedTypes: ["image/jpg", "image/jpeg", "image/png", "image/x-png"],
                maxFileSize: 200_000, // in bytes

                start: function(file){
                    //upload started
                    console.log("upload started");
                },

                progress: function(progress){
                    //received progress
                    console.log("upload progress: " + Math.round(progress) + "%");
                    $target_button.text(Math.round(progress) + "%");
                },

                success: function(data){
                    //upload successful
                    console.log("upload successful!");
                    console.log(data);

                    $target_image.attr('src', '<?= UPLOAD_PATH . ('/questions/'); ?>' + data);
                    
                    $.notify(
                        "Operation success! File uploaded.",
                        'success'
                    );
                },

                error: function(error){
                    //upload failed
                    console.log("upload error: " + error.name + ": " + error.message);
                    console.log(error);
                    $target_button.text("NO upload!");
                    
                    $.notify(
                        "Operation not completed. Please submit questions before making this upload.",
                        'info'
                    );
                }

            });
        }

        function delete_question(question_id) {

            var prompt = confirm("Are you sure to remove question?");

            if (prompt == 1) {

                $.ajax({

                    url: '<?= base_url('questions/delete_question'); ?>',
                    type: 'POST',
                    data: {
                        question_id: question_id,
                        examination_id: '<?= $examination['exam_id']; ?>'
                    },
                    success: function(data) {
                        
                        no_of_questions = ($(".question_card")).length;
                        $("#total_no_of_questions").text(no_of_questions - 1);

                        if ((no_of_questions - 1) == 0) {
                            $("#no_question_alert").removeClass('d-none');
                        }

                        $("#" + question_id).remove();
                        
                        $.notify(
                            "Operation success! Question removed.",
                            'success'
                        );
                    },
                    error: function(error) {
                        console.log(error);
                        $.notify(
                            "Operation error! Not completed.",
                            'error'
                        );
                    }
                });

            }
            
        }

        function assign_candidates(obj) {

            $(obj).html('Assign Candidates <i class="fas fa-spinner fa-spin ml-2"></i>');

            selected_candidates = $(".candidates_check_box");

            candidates_array = [];

            for (i = 0; i < selected_candidates.length; i++) {

                if ($(selected_candidates[i]).prop('checked') == true) {
                    candidate_id = $(selected_candidates[i]).val();
                    candidates_array.push(candidate_id);
                }

            }

            $.ajax({

                url: '<?= base_url('examinations/push_candidate'); ?>',
                type: 'POST',
                data: {
                    candidates: JSON.stringify(candidates_array),
                    examination_id: '<?= $examination['exam_id']; ?>'
                },
                success: function(data) {
                    
                    $(obj).prop('disabled', 'true');
                    $(obj).html('Redirecting... <i class="fas fa-spinner fa-spin ml-2"></i>');

                    window.location.href = '<?= base_url('examinations/view_examination/' . $examination['exam_id']); ?>';
                },
                error: function(error) {
                    console.log(error);
                    alert('Something went wrong! Try again.');
                }

            });
        }

        $(window).scroll(function(evt) {

            scroll_amount = ($(window)).scrollTop();
            scrollTo = Number($("#add_question_btn")[0].getBoundingClientRect().top) + 15;

            if (scroll_amount >= scrollTo) {

                $("#fixed_btn").fadeIn();
            }
            else {
                $("#fixed_btn").fadeOut();
            }

        });

        function add_question(target_type = 0, element_to_target = "#question_container") {

            $("#no_question_alert").addClass('d-none');

            no_of_questions = ($(".question_card")).length;

            $("#total_no_of_questions").text(no_of_questions + 1);

            question_id = code_generator();
            option_a_id = code_generator();
            
            question_object = `
                <div class="card shadow-0 border question_card mb-4" id = "${question_id}">
                    <div class = "ordering_panel" style = "opacity: 0">
                        <div class = "d-flex justify-content-center">
                            <button onclick = "reorder(this, 'up')" title = "Move Up" class = "rounded-0 btn btn-sm border text-primary">&#8593;</button>
                            <button onclick = "reorder(this, 'down')" title = "Move Down" class = "rounded-0 btn btn-sm border text-primary">&#8595;</button>
                        </div>
                    </div>
                    <div class="card-body shadow-0">
                        
                        <div class="row">
                            <div class="col-12 mb-3 d-flex justify-content-between align-items-center">
                                <h5>Question <span class = "question_order">${no_of_questions + 1}</span></h5>
                                <div class = "d-flex justify-content-center align-items-center">
                                    <button onclick = "add_question(1, '#${question_id}');" data-toggle = "tooltip" title = "Click to insert question after this one." class = "btn btn-info btn-sm mr-2 delete_question_btn" style = "opacity: 0;"><i class = "fas fa-plus-circle"></i></button>
                                    <button onclick="delete_question('${question_id}');" class="btn btn-danger btn-sm delete_question_btn" style = "opacity: 0;"><i class="fas fa-trash-alt"></i></button>
                                </div>
                                
                            </div>
                        
                            <div class="col-md-12 col-lg-3 col-sm-12 mb-3">
                                <div class="border rounded">
                                    <div style = "height: 100px; overflow: hidden; position: relative;">
                                        <img id = "question_image_${question_id}" data-toggle = "tooltip" title = "Click image to enlarge" style = "cursor: pointer" onclick="view_image(this);" src="<?= UPLOAD_PATH . 'questions/image_question.png'; ?>" class = 'img-fluid border-bottom ques_image w-100'>
                                    </div>
                                    <button id = "question_button_${question_id}" onclick="$(this).next().click()" class="btn btn-outline-secondary btn-sm w-100 border-0 rounded-bottom"><small>Select Image</small></button>
                                    <input id = "image_upload_${question_id}" onchange="set_image('${question_id}');" type="file" name="file" class="w-100 d-none" accept=".jpg, .png, .jpeg">
                                </div>
                            </div>
                            <div class="col-md-12 col-lg-9 col-sm-12 d-flex align-items-start mb-3 pl-0">
                                <div class="p-2 border h-100 w-100 rounded question_title ck_editable" id = "question_title_${question_id}" contenteditable = "true"></div>
                            </div>
                            
                        </div>

                        <div class="row">

                            <div class="col-sm-12 col-md-12 mb-3">
                                <div class="border p-2 rounded question_options d-flex flex-column">
                                    <div class="d-inline-block small text-muted" onclick="$('#question_hint_${question_id}').focus();">Hints: Show candidates some extra information they might need</div>
                                    <div id = "question_hint_${question_id}" contenteditable = "true" class = "d-inline-block w-100"></div>
                                </div>
                            </div>

                            <div class="col-sm-12 col-md-12">
                                <div class="border p-2 rounded question_options d-flex flex-column">
                                    <div class="d-inline-block small text-muted" onclick="$('#question_comment_${question_id}').focus();">Set your marking guidelines.</div>
                                    <div id = "question_comment_${question_id}" contenteditable = "true" class = "d-inline-block w-100"><?= ''; ?></div>
                                </div>
                            </div>
                            
                        </div>

                    </div>

                </div>
            `;
            
            if (target_type == 0) { // If a parent target
                $(element_to_target).append(question_object);
                
                $('html, body').animate({scrollTop: document.body.scrollHeight}, "fast");
            }
            else if (target_type == 1) { // If a child target
                $(element_to_target).after(question_object);
                
                $('html, body').animate({
                    scrollTop: Number($(element_to_target).offset().top) + 300
                }, 'fast', 'swing');
            }

            CKEDITOR.disableAutoInline = true;
            CKEDITOR.inline("question_title_" + question_id);

            CKEDITOR.inline("question_hint_" + question_id);
            CKEDITOR.inline("question_comment_" + question_id);
            
            question_orders = $(".question_order");
            
            question_orders.each((index, value) => {
                $(value).text(index + 1);
            });

            updates_made = true;
        }

        function submit_questions(obj) {
            
            let questions_ordering = [];

            var prompt = confirm("Are you sure to save questions?");

            if (prompt == 0) {
                return;
            }

            $(obj).html('Submit Questions <i class="fas fa-spinner fa-spin ml-2"></i>');

            questions = $(".question_card");

            questions_array = [];

            for (i = 0; i < questions.length; i++) {

                question_id = $(questions[i]).attr('id');

                title = $("#question_title_" + question_id).html();
                image = $("#question_image_" + question_id).attr('src');
                hints = $("#question_hint_" + question_id).html();
                answer_comment = $("#question_comment_" + question_id).html();
                question_points = $("#points_for_question_" + question_id);

                if (!(question_points.length > 0)) {
                    question_points = 1;
                }
                else {
                    question_points = question_points.val();
                }

                var question = {
                    question_id: question_id,
                    title: title,
                    image: image,
                    hints: hints,
                    info_answer: answer_comment,
                    question_points: question_points,
                    option_a: 'null',
                    option_b: 'null',
                    option_c: 'null',
                    option_d: 'null',
                    question_answer: 'null'
                };
                
                questions_ordering.push(question_id);

                questions_array.push(question);

            }
            
            $.ajax({
                url: '<?= base_url('questions/push_question'); ?>',
                type: 'POST',
                data: {
                    questions: JSON.stringify(questions_array),
                    questions_ordering: JSON.stringify(questions_ordering),
                    examination_id: '<?= $examination['exam_id']; ?>',
                    essay_type: true
                },
                success: function(data) {
                    
                    $(obj).prop('disabled', 'true');
                    $(obj).html('Redirecting... <i class="fas fa-spinner fa-spin ml-2"></i>');

                    window.location.href = '<?= base_url('examinations/view_examination/' . $examination['exam_id']); ?>';
                },
                error: function(error) {
                    console.log(error);
                    alert('Something went wrong! Try again.');
                }
            });
        }

        function make_display(obj_to_display) {

            $("#" + obj_to_display).removeClass('d-none');

            updates_made = true;
        }

        function check_all(obj) {

            state_of_this = $(obj).prop('checked');

            $(".candidates_check_box").prop('checked', state_of_this);
        }

        function set_points($this, question_id) {

            var points = $("#points_for_question_" + question_id).val();
            $($this).html('<i class = "fas fa-spinner fa-spin"></i>');

            $.ajax({

                url: '<?= base_url('questions/set_points'); ?>',
                type: 'POST',
                data: {
                    question_id: question_id,
                    points: points
                },
                success: function(data) {

                    $.notify(
                        "Operation success! " + points + " points set for question: " + question_id + ".",
                        'success'
                    );

                    $($this).html('<i class = "fas fa-upload"></i>');

                    setTimeout(function() {

                        $($this).addClass('d-none');
                    }, 3000);
                },
                error: function(error) {
                    console.log(error);
                    alert('Something went wrong! Try again.');

                    $($this).html('<i class = "fas fa-upload"></i>');
                }
            });

            updates_made = true;
        }

        function delete_item(id) {

            var prompt = confirm("Are you sure to delete this examination?");

            if (prompt == 1) {
                window.location.href = "<?= base_url('examinations/delete_examination/'); ?>/" + id;
            }
        }

        <?php if (is_owner_account()): ?>
        function set_status(obj, id) {

            $("#exam_status_text").html('<i class = "fas fa-spinner fa-spin"></i>');

            $.ajax({

                url: '<?= base_url('examinations/set_status'); ?>',
                type: 'POST',
                data: {
                    examination_id: id,
                    status: $(obj).prop('checked')
                },
                success: function(data) {

                    if (data == 'true')
                        $("#exam_status_text").html('Active');
                    else
                        $("#exam_status_text").html('Inactive');

                    $.notify(
                        'Operation success! Examination status has been changed',
                        'success'
                    );
                },
                error: function(error) {

                    console.log(error);

                    $.notify(
                        'Operation error! We could not complete the process',
                        'error'
                    );
                }
            });

            updates_made = true;
        }
        <?php endif; ?>

        function shuffle_exam_questions($this, $id) {

            $("#shuffle_exam_notif").html('<i class = "fas fa-spinner fa-spin"></i>');

            $.ajax({

                url: '<?= base_url('examinations/shuffle_questions/'); ?>/' + $id,
                type: 'POST',
                data: {
                    shuffle_questions: $id,
                    state: $($this).prop('checked')
                },
                success: function(data) {
                    data  = JSON.parse(data);

                    $.notify(
                        data.msg,
                        data.type
                    );

                    $("#shuffle_exam_notif").html('');
                },
                error: function(error) {
                    console.log(error);
                    alert('Something went wrong! Try again.');

                    $("#shuffle_exam_notif").html('');
                }
            });

            updates_made = true;
        }

        function copy_to_clipboard(obj) {
            navigator.clipboard.writeText($(obj).text().trim());

            $.notify(
                'Copied to clipboard!',
                'success'
            );

        }
        
        function copy_access_to_clipboard(obj) {
            
            text = $(obj).attr('text_title');
            
            navigator.clipboard.writeText(text);

            $.notify(
                'Copied to clipboard!',
                'success'
            );
        }

        $("#total_points").text('<?= $total_points_for_question; ?>');

    </script>
    
    <script type="text/javascript">
    
        // Ensures that page close event is intercepted
        // Page won't close prematurely so questions will not be lost.
    
        window.addEventListener("beforeunload", function (e) {
            const confirmationMessage = "\o/";
    
            if (updates_made == true) {

                (e || window.event).returnValue = confirmationMessage;
                return confirmationMessage;
            }
        });
        
        function reorder(target_button, direction) {
            // Get ID of the parent object of target button
            parent_id = $($(target_button).parents(".question_card")).attr('id');
            
            // Get the element after the parent
            element_after_parent = $($("#" + parent_id).next()).attr('id');
            
            // Get the element before the parent
            element_before_parent = $($("#" + parent_id).prev()).attr('id');
            
            element_to_move = $("#" + parent_id);
            before = $("#" + element_before_parent);
            after = $("#" + element_after_parent);
            
            if (direction == "up" && Object.keys(before).length !== 0) {
                before.before(element_to_move);
            }
            
            if (direction == "down" && Object.keys(after).length !== 0) {
                after.after(element_to_move);
            }
        }
        
        function order_questions() {
            
            $('#question_container').find('.question_card').sort(function (a, b) {
               return $(a).attr('data-index') - $(b).attr('data-index');
            })
            .appendTo($('#question_container'));
        }
        
    </script>

</body>

</html>
