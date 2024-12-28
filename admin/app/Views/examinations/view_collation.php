<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Quiz App | View Collation</title>
    
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

    <link rel="stylesheet" type="text/css" href="<?= ASSETS_PATH; ?>js/plugins/select_2_plugin/bootstrap-multiselect.min.css">

    <style type="text/css">

        .exam_card .card-header {

        }

        .exam_card:hover .card-header h5 {

            color: rgb(114, 103, 239);
            cursor: pointer;
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
                            <h5 class="m-b-10">My Collation</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Home</a></li>
                            <li class="breadcrumb-item"><a href = "<?= base_url('examinations/collations'); ?>">Collation</a></li>
                            <li class="breadcrumb-item"><?= $collation['collation_name']; ?></li>
                        </ul>
                    </div>
                    <div class = "col-md-6">
                        <div class = "text-right">
                            <button class = "btn btn-sm btn-primary" data-toggle="collapse" href="#configPanel"><i data-feather = "settings"></i><span class = "ml-2">Configs</span></button>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-xl-12 collapse" id="configPanel">
                <div class="card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <div class = "small">Collaboration URL: 
                            <div class = "badge bg-light text-dark">
                                <?= base_url('examinations/collation_collab/' . $_SESSION['cbt_admin_session']['user']['user_id'] . '/' . $collation['collation_id']); ?>
                            </div>
                        </div>
					    
                    </div>
                    
                    <div class="card-body">
                        
                        <div class = "row">
                            <div class = "col-sm-12 col-md-8">
                                <div class = "mb-2">
                                    <div class="form-check">
                                        <input 
                                        id = "collab_status" 
                                        class="form-check-input input-primary" type="checkbox" <?= ($collation['collaboration_status']) ? 'checked': ''; ?>
                                        />
                                        
                                        <label class="form-check-label" for="customCheckc1">
                                            Collaboration Status
                                        </label>
                                    </div>
                                </div>
        						<p class = "">
        						    <textarea 
        						    id = 'collaboration_instruction' class = "form-control" rows = "5" 
        						    placeholder = "Enter instructions for collaborators to adhere to..."><?= $collation['collaboration_instructions']; ?></textarea>
        						</p>
        						
        						<div class = "text-right">
        						    <i id = "collab_notif" class = "fas fa-spinner fa-spin d-none"></i>
                                    <button onclick = "set_collaboration_status(this, '#collab_status', '<?= $collation['collation_id']; ?>');" class = "btn btn-sm btn-primary">Save</button>
                                </div>
                                
                            </div>
                            
                        </div>
                        
					</div>
                </div>
            </div>
            
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <div>
                            <h5><?= $collation['collation_name']; ?></h5>
                            <span class="d-block m-t-5 small">Examinations assigned to this collation.</span>
                        </div>
                        <?php if (is_owner_account()): ?>
                        <div>
                            <form id = "assign_exams" action="" method="POST">
                                <select id="examinations_list" multiple="multiple" class="" required>
                                    <?php if ($all_examinations): ?>
                                    <?php foreach($all_examinations as $item): ?>
                                        <option value="<?= $item['exam_id']; ?>"><?= $item['exam_title']; ?></option>
                                    <?php endforeach; ?>
                                    <?php endif; ?>
                                </select>
                                <button id = "btn_submit" class="btn btn-primary">
                                    <i class="fas fa-paper-plane"></i>
                                </button>
                            </form>
                        </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            
            <!-- customer-section end -->
        </div>

        <div class="row">

            <?php if ($assigned_examinations): ?>
            <?php foreach($assigned_examinations as $item): ?>
            <div class="col-sm-12 col-md-4">
                <div class="card support-bar exam_card overflow-hidden" id = "<?= $item['exam_id']; ?>">
                    <div class="card-header">
                        
                        <div class="mt-1 d-flex justify-content-between align-items-center">
                            <div>
                                <h5 class="m-0 font-weight-bold"><?= $item['exam_title']; ?></h5>
                                <span class="text-muted small">
                                    <?php
                                        if ($item['type'] == 1)
                                            echo 'Multichoice';
                                        else if ($item['type'] == 2)
                                            echo 'Essay';
                                    ?>

                                </span>

                                <?php if ($item['status'] == 1): ?>
                                <span class="small" data-toggle = "tooltip" title = "Exam is active">
                                    <span class="badge bg-light-success"><i class="fas fa-check-circle"></i></span>
                                </span>
                                <?php endif; ?>

                                <?php if ($item['status'] == 0): ?>
                                <span class="small" data-toggle = "tooltip" title = "Exam is inactive">
                                    <span class="badge bg-light-danger"><i class="fas fa-info-circle"></i></span>
                                </span>
                                <?php endif; ?>

                            </div>
                            <div>
                                <input onchange = "show_btn();" value = "<?= $item['exam_id']; ?>" type="checkbox" class="form-check-input exam_cards_select">
                            </div>
                            
                        </div>
                    </div>
                    <div class="card-body pb-0 pt-0">
                        
                        <p class="mb-3 mt-0">
                            <div class="row mx-0 small">
                                <div class="col-3 border-right">
                                    <span><?= $item['class_name']; ?></span>
                                </div>
                                <div class="col-9 border-left">
                                    <span><?= $item['subject_name']; ?></span>
                                </div>
                            </div>
                        </p>
                        <p class="" style="position: relative !important;">
                            <div class="form-group">
                                <small>Assigned to: <i class="fas fa-spinner fa-spin d-none"></i></small>
                                <select onchange = "assign_personnel(this, '<?= $item['exam_id']; ?>');" class="form-select form-select-sm mt-2">
                                    
                                    <?php if ($personnel): ?>
                                        <option value = "">None</option>

                                        <?php foreach($personnel as $person): ?>
                                            <option value = "<?= $person['user_id']; ?>" <?= ($person['user_id'] == $item['assigned_to']) ? 'selected': ''; ?>><?= $person['first_name'] . " " . $person['last_name']; ?></option>
                                        <?php endforeach; ?>
                                    <?php endif; ?>

                                </select>
                                
                            </div>
                        </p>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>
            <?php endif; ?>

            <?php if (!$assigned_examinations): ?>
                <div class="col-12">
                        <div class="p-4 alert alert-primary d-flex justify-content-center align-items-center">
                            <i class="fas fa-info-circle mr-2"></i>
                            <div>
                                You have not assigned any examinations to this collation.
                            </div>
                        </div>
                    </div>
            <?php endif; ?>
            
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

    <script type="text/javascript" src="<?= ASSETS_PATH; ?>js/plugins/select_2_plugin/bootstrap-multiselect.min.js"></script>

    <?= cbt_app_notyf(); ?>

    <script type="text/javascript">
        
        $(document).ready(function() {
            $('#examinations_list').multiselect({
                maxHeight: 400,
                enableFiltering: true,
                buttonText: function(options, select) {
                    if (options.length === 0) {
                        return 'Select exams to assign to this collation ...';
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

        function assign_personnel(obj, exam_id) {

            let indicator = $($(obj).prev()).children('i');

            $(indicator).removeClass('d-none');

            $.ajax({
                url: '<?= base_url('examinations/assign_personnel'); ?>',
                type: 'POST',
                data: {
                    assign_personnel: $(obj).val(),
                    exam_id: exam_id
                },
                success: function(data) {
                    
                    $(indicator).addClass('d-none');
                    
                    if ($(obj).val() == '') {
                        $msg = 'Operation success!';
                    }
                    else {
                        $msg = 'Success! Personnel assigned.';
                    }
                    $.notify(
                        $msg,
                        'success'
                    );
                },
                error: function(error) {
                    console.log(error);
                    $.notify(
                        "We could not complete the process. Something went wrong!",
                        'error'
                    );
                    $(indicator).addClass('d-none');
                }
            })
        }

        $("#assign_exams").submit((event) => {

            event.preventDefault();

            $("#btn_submit").html('<i class = "fas fa-spinner fa-spin"></i>');

            var exams_list = [];
            $.each($("#examinations_list option:selected"), function(){            
                exams_list.push($(this).val());
            });

            console.log(exams_list);

            $.ajax({
                url: '<?= base_url('examinations/assign_exams'); ?>',
                type: "POST",
                data: {
                    exams: (exams_list),
                    collation_id: '<?= $collation['collation_id']; ?>',
                    assign_exams: 1
                },
                success: function(data) {
                    
                    $("#btn_submit").html('<i class = "fas fa-paper-plane"></i>');

                    window.location.href = '<?= base_url('examinations/view_collation/' . $collation['collation_id']); ?>';
                },
                error: function(error) {
                    console.log(error);
                    alert("Something went wrong!");
                    $("#btn_submit").html('<i class = "fas fa-paper-plane"></i>');
                }
            });
        });

        $(".exam_card .card-header h5").click(function() {

            let id = $(this).parent().parent().parent().parent().attr('id');

            window.location.href = '<?= base_url('examinations/view_examination/'); ?>/' + id;
        });

        function delete_selected() {

            let selected = $(".exam_cards_select:checked");

            if (selected.length <= 0) {
                alert("Please select an item!");
                return;
            }

            let selected_arr = [];

            selected.each(function(index, value) {
                selected_arr.push($(value).val());
            });

            $("#delete_btn").html('<i class = "fas fa-spinner fa-spin"></i>');

            $.ajax({
                url: '<?= base_url('examinations/delete_exams_assigned'); ?>',
                type: 'POST',
                data: {
                    delete_exams_assigned: 1,
                    selected_exams: JSON.stringify(selected_arr),
                    collation_id: '<?= $collation['collation_id']; ?>'
                },
                success: function(data) {
                    
                    $("#delete_btn").html('<i class = "fas fa-trash-alt"></i>');

                    if (data == '1') {
                        window.location.href = "<?= base_url('examinations/view_collation/' . $collation['collation_id']); ?>"
                    }
                },
                error: function(error) {
                    console.log(error);
                    alert("Something went wrong!");
                    $("#delete_btn").html('<i class = "fas fa-trash-alt"></i>');
                }
            })

            console.log(selected_arr);
        }

        function show_btn() {

            let selected = $(".exam_cards_select");

            let count = 0;

            selected.each(function(index, value) {

                if ($(value).prop('checked') == true)
                    count++;
            });

            if (count > 0)
                $("#delete_btn").parent().removeClass('d-none');
            else
                $("#delete_btn").parent().addClass('d-none');
        }
        
        function set_collaboration_status(btn_target, target_obj, collation) {
            
            let current_status = $(target_obj).prop('checked'); console.log(current_status);
            current_status = (current_status === true) ? 1: 0;
            
            let collaboration_instruction = $("#collaboration_instruction").val();
            
            $("#collab_notif").removeClass('d-none');
            $(btn_target).addClass('d-none');
            
            $.ajax({
                url: '<?= base_url('examinations/set_collation_collab/'); ?>/' + collation,
                type: 'POST',
                data: {
                    collation_id: collation,
                    collation_collaboration_status: current_status,
                    collaboration_instruction: collaboration_instruction
                },
                success: function(data) {
                    
                    $.notify(
                        "Operation success! Collation status is now changed.",
                        'success'
                    );
                    
                    $("#collab_notif").addClass('d-none');
                    $(btn_target).removeClass('d-none');
                },
                error: function(error) {
                    console.log(error);
                    
                    $("#collab_notif").addClass('d-none');
                    $(btn_target).removeClass('d-none');
                }
            })
            
        }

    </script>

    <script>
    $("body").append('<div class="fixed-button active d-none"><button id = "delete_btn" onclick = "delete_selected();" class="btn btn-danger" data-toggle = "tooltip" title = "Remove selected"><i class="fas fa-trash-alt text-white"></i></button> </div>');
</script>

</body>

</html>