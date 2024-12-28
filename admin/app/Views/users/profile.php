<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Quiz App | User Profile</title>
    
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
                            <h5 class="m-b-10">Users</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Home</a></li>
                            <li class="breadcrumb-item"><a href="<?= base_url('users'); ?>">Users</a></li>
                            <li class="breadcrumb-item">Profile</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-xl-3 col-md-3 col-sm-12">
                <div class="card">
                    <div class="card-body text-center">
                        
                        <img src="<?= (ASSETS_PATH . 'images/user.png'); ?>" width = "130px" class = "rounded-circle">

                        <h5 class="mt-3 mb-0">
                            <?= $user['first_name'] . " " . $user['last_name']; ?>
                        </h5>

                        <p class="mt-0 text-muted">
                            <?= $user['email']; ?>
                        </p>

                        <div class="">
                            <?php if ($_SESSION['cbt_admin_session']['user']['user_id'] == $user['user_id']): ?>
                            <button data-toggle = "modal" data-target = "#change_password_modal" class="btn btn-primary btn-sm">
                                
                                Change Password
                            </button>
                            <?php endif; ?>

                            <?php if ($_SESSION['cbt_admin_session']['user']['user_id'] != $user['user_id']): ?>
                            <button onclick = "reset_account();" data-toggle = "modal" data-target = "#reset_account_modal" class="btn btn-danger mt-2 btn-sm">
                                
                                Reset Account
                            </button>
                            <?php endif; ?>

                            <div id = "notif"></div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-xl-9 col-md-9 col-sm-12">
                <div class="card">
                    <div class="card-header pb-0 d-flex justify-content-between align-items-center">
                        
                        <ul class="nav nav-tabs border-0" id="myTab" role="tablist">
                          <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#exams" role="tab" aria-controls="home" aria-selected="true">Assigned Exams</a>
                          </li>
                          <!--<li class="nav-item">-->
                          <!--  <a class="nav-link" id="profile-tab" data-toggle="tab" href="#subjects" role="tab" aria-controls="profile" aria-selected="false">Subjects</a>-->
                          <!--</li>-->
                        </ul>

                    </div>
                    <div class="card-body">
                        
                        <div class="tab-content" id="myTabContent">
                          <div class="tab-pane fade show active" id="exams" role="tabpanel" aria-labelledby="home-tab">
                              
                            <div class="table-responsive">
                                <table class="table table-hover" id = "items_table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Title</th>
                                            <th>Class</th>
                                            <th>Subject</th>
                                            <th>Date Added</th>
                                            <th>Action(s)</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if ($examinations): rsort($examinations); ?>
                                        <?php foreach($examinations as $k => $item): ?>
                                        <tr>
                                            <td><?= $k + 1; ?></td>
                                            <td>
                                                <div class="font-weight-bold"><?= $item['exam_title']; ?></div>
                                                <div class="small"><?= $item['exam_id']; ?></div>   
                                            </td>
                                            <td><?= $item['class_name']; ?></td>
                                            <td><?= $item['subject_name']; ?></td>
                                            <td><?= $item['date_created']; ?></td>
                                            <td>
                                                <a href="<?= base_url('examinations/view_examination/' . $item['exam_id']); ?>" class="btn btn-outline-primary btn-sm"><i class="fas fa-eye"></i></a>
                                            </td>
                                        </tr>
                                        <?php endforeach; ?>
                                        <?php endif; ?>
                                    </tbody>
                                </table>
                            </div>

                          </div>
                          <!--<div class="tab-pane fade" id="subjects" role="tabpanel" aria-labelledby="profile-tab">-->
                              
                          <!--  <div class="table-responsive">-->
                          <!--      <table class="table table-hover" id = "items_table_2">-->
                          <!--          <thead>-->
                          <!--              <tr>-->
                          <!--                  <th>#</th>-->
                          <!--                  <th>Title</th>-->
                          <!--                  <th>Abbreviation</th>-->
                          <!--                  <th>Date Added</th>-->
                          <!--              </tr>-->
                          <!--          </thead>-->
                          <!--          <tbody>-->
                          <!--              <?php if ($subjects): rsort($subjects) ?>-->
                          <!--              <?php foreach($subjects as $k => $item): ?>-->
                          <!--              <tr>-->
                          <!--                  <td><?= $k + 1; ?></td>-->
                          <!--                  <td><?= $item['subject_name']; ?></td>-->
                          <!--                  <td><?= $item['abbreviation']; ?></td>-->
                          <!--                  <td><?= $item['date_created']; ?></td>-->
                          <!--              </tr>-->
                          <!--              <?php endforeach; ?>-->
                          <!--              <?php endif; ?>-->
                          <!--          </tbody>-->
                          <!--      </table>-->
                          <!--  </div>-->

                          <!--</div>-->

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


    <div class="modal fade" id="change_password_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <form action="<?= base_url('users/change_password'); ?>" method = "POST" enctype="multipart/form-data">

            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title font-weight-bold">Change Password</h4>
                <button type="button" class="close" style="background: transparent !important;" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">

                <input type="hidden" value="<?= $user['user_id']; ?>" name="user_id">
                
                <div class="form-group mt-3">
                    <label class="font-weight-bold mb-2">Old Password</label>
                    <input type="text" name="o_password" class="form-control" required>
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">New Password</label>
                    <input type="text" name="n_password" class="form-control" required>
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Confirm Password</label>
                    <input type="text" name="c_password" class="form-control" required>
                </div>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn" data-dismiss="modal">Close</button>
                <button type="submit" name = "change_password_btn" class="btn btn-primary">Submit</button>
              </div>
            </div>

          </form>
        </div>
    </div>

    <div class="modal fade" id="reset_account_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <form action="<?= base_url('users/reset_account'); ?>" method = "POST" enctype="multipart/form-data">

            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title font-weight-bold">Reset Account</h4>
                <button type="button" class="close" style="background: transparent !important;" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">

                <input type="hidden" value="<?= $user['user_id']; ?>" name="user_id">
                
                <div class="form-group mt-3">
                    <label class="font-weight-bold mb-2">Password for this account will be set to:</label>
                    <input type="text" name = "new_password" id="reset_account_password" class="form-control form-control-lg" style="font-family: consolas;" required>
                </div>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn" data-dismiss="modal">Close</button>
                <button type="submit" name = "reset_account_btn" class="btn btn-primary">Submit</button>
              </div>
            </div>

          </form>
        </div>
    </div>

    <!-- Required Js -->
    <script src="<?= ASSETS_PATH; ?>js/vendor-all.min.js"></script>
    <script src="<?= ASSETS_PATH; ?>js/plugins/bootstrap.min.js"></script>
    <script src="<?= ASSETS_PATH; ?>js/plugins/feather.min.js"></script>
    <script src="<?= ASSETS_PATH; ?>js/pcoded.min.js"></script>

    <script src="<?= ASSETS_PATH; ?>js/plugins/datatables/datatables.min.js"></script>

    <?= cbt_app_notyf(); ?>

    <script type="text/javascript">
        
        $(document).ready(function() {
          $('#items_table, #items_table_2').DataTable();
        });

        function fetch_item(obj, id) {

            $(obj).html('<i class = "fas fa-spinner fa-spin"></i>');

            $.ajax({

                url: '<?= base_url('users/fetch_user'); ?>',
                type: 'POST',
                data: {
                    user_id: id
                },
                success: function(data) {

                    $("#edit_target").html(data);
                    $("#edit_modal").modal('show');
                    $(obj).html('<i class = "fas fa-edit"></i>');
                },
                error: function(error) {
                    console.log(error);
                    alert('Something went wrong!');
                }
            });
        }

        function delete_item(id) {

            var prompt = confirm("Are you sure to delete this user?");

            if (prompt == 1) {
                window.location.href = "<?= base_url('users/delete_user/'); ?>/" + id;
            }
        }

        function reset_account() {

            $("#reset_account_password").val(code_generator('', 9));
        }

    </script>

</body>

</html>
