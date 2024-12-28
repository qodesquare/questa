<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Quiz App | Subjects</title>
    
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
                            <h5 class="m-b-10">Subjects</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Home</a></li>
                            <li class="breadcrumb-item">Subjects</li>
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
                            <h5>List of Subjects</h5>
                            <span class="d-block m-t-5">Showing list of all subjects in this app.</span>
                        </div>
                        <?php if (is_owner_account()): ?>
                        <div>
                            <a href="" data-toggle = "modal" data-target = "#add_modal" class="btn btn-primary btn-sm">Add Subject</a>
                        </div>
                        <?php endif; ?>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover" id = "items_table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Title</th>
                                        <th>Abbreviation</th>
                                        <th>Date Added</th>
                                        <th>Action(s)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if ($subjects): rsort($subjects); ?>
                                    <?php foreach($subjects as $k => $item): ?>
                                    <tr>
                                        <td><?= $k + 1; ?></td>
                                        <td><?= $item['subject_name']; ?></td>
                                        <td><?= $item['abbreviation']; ?></td>
                                        <td><?= $item['date_created']; ?></td>
                                        <td>
                                            <button onclick="fetch_item(this, '<?= $item['subject_id']; ?>');" class="btn btn-outline-warning btn-sm"><i class="fas fa-edit"></i></button>
                                            <?php if (is_owner_account()): ?>
                                            <button onclick="delete_item('<?= $item['subject_id']; ?>');" class="btn btn-outline-danger btn-sm"><i class="fas fa-trash-alt"></i></button>
                                            <?php endif; ?>
                                        </td>
                                    </tr>
                                    <?php endforeach; ?>
                                    <?php endif; ?>
                                </tbody>
                            </table>
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

    <?php if (is_owner_account()): ?>
    <div class="modal fade" id="add_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <form action="<?= base_url('subjects/add_subject'); ?>" method = "POST" enctype="multipart/form-data">

            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title font-weight-bold">New Subject</h4>
                <button type="button" class="close" style="background: transparent !important;" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                
                <div class="form-group">
                    <label class="font-weight-bold mb-2">Title</label>
                    <input type="text" name="name" class="form-control">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Abbreviation</label>
                    <input type="text" name="abbreviation" class="form-control">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Description</label>
                    <textarea class="form-control" name = "description" rows=""></textarea>
                </div>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-sm" data-dismiss="modal">Close</button>
                <button type="submit" name = "add_subject_btn" class="btn btn-primary btn-sm">Submit</button>
              </div>
            </div>

          </form>
        </div>
    </div>
    <?php endif; ?>

    
    <div class="modal fade" id="edit_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form action="<?= base_url('subjects/edit_subject'); ?>" method = "POST" enctype="multipart/form-data">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title font-weight-bold">Edit Subject</h4>
                        <button type="button" class="close" style="background: transparent !important;" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" id = "edit_target">
            
                        Fetching...

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn" data-dismiss="modal">Close</button>
                        <button type="submit" name = "edit_subject_btn" class="btn btn-primary">Update</button>
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
          $('#items_table').DataTable();
        });

        function fetch_item(obj, id) {

            $(obj).html('<i class = "fas fa-spinner fa-spin"></i>');

            $.ajax({

                url: '<?= base_url('subjects/fetch_subject'); ?>',
                type: 'POST',
                data: {
                    subject_id: id
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

            var prompt = confirm("Are you sure to delete this subject?");

            if (prompt == 1) {
                window.location.href = "<?= base_url('subjects/delete_subject/'); ?>/" + id;
            }
        }

    </script>

</body>

</html>
