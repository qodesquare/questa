<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Quiz App | Collations</title>
    
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

    <style type="text/css">
        
        .tips_badge:hover {
            color: rgb(144, 103, 239);
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
                            <h5 class="m-b-10">My Collations</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Home</a></li>
                            <li class="breadcrumb-item">Collations</li>
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
                            <h5>Collations</h5>
                            <span class="d-block m-t-5">Collations are used to group and collaborate on assessment items.</span>
                        </div>
                        <?php if (is_owner_account()): ?>
                        <div>
                            <a href="" data-toggle = "modal" data-target = "#add_modal" class="btn btn-primary btn-sm">New Collation</a>
                        </div>
                        <?php endif; ?>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover" id = "items_table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Description</th>
                                        <th>Date Added</th>
                                        <th>Action(s)</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php if ($collations): rsort($collations); ?>
                                        <?php foreach($collations as $k => $item): 
                                            
                                            $url = '';
                                        
                                            if (is_owner_account()) {
                                                $url = base_url('examinations/view_collation/' . $item['collation_id']);
                                            }
                                            else {
                                                $url = base_url('examinations/collation_collab/' . $_SESSION['cbt_admin_session']['user']['user_added_by'] . "/" . $item['collation_id']);
                                            }
                                        ?>
                                    <tr>
                                        <td><?= $k + 1; ?></td>
                                        <td>
                                            <a href="<?= $url; ?>">
                                                <?= $item['collation_name']; ?>
                                            </a>
                                        </td>
                                        <!--<td>-->
                                        <!--    13-->
                                        <!--</td>-->
                                        <td class = "text-wrap">
                                            <?= $item['description']; ?>
                                        </td>
                                        <td><?= date("jS M, Y h:i:sa", strtotime($item['date_created'])); ?></td>
                                        <td>
                                            <?php if (is_owner_account()): ?>
                                            <a data-toggle = "tooltip" title = "Click to view contents" href="<?= base_url('examinations/view_collation/' . $item['collation_id']); ?>" class="btn btn-outline-primary btn-sm">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                            <button onclick="fetch_item(this, '<?= $item['collation_id']; ?>');" class="btn btn-outline-warning btn-sm"><i class="fas fa-edit"></i></button>
                                            <button onclick="delete_item('<?= $item['collation_id']; ?>');" class="btn btn-outline-danger btn-sm"><i class="fas fa-trash-alt"></i></button>
                                            <?php endif; ?>
                                            
                                            <?php if (!is_owner_account()): ?>
                                            <a 
                                            data-toggle = "tooltip" 
                                            title = "Click to collaborate on this collation" 
                                            href="<?= $url; ?>" 
                                            class="btn btn-outline-info btn-sm">
                                                <i class="fas fa-eye"></i>
                                            </a>
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


    <div class="modal fade" id="add_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <form action="<?= base_url('examinations/add_collation'); ?>" method = "POST" enctype="multipart/form-data">

            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title font-weight-bold">Add Collation</h4>
                <button type="button" class="close" style="background: transparent !important;" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                
                <div class="form-group">
                    <label class="font-weight-bold mb-2">Name</label>
                    <input type="text" name="name" class="form-control">
                    <small>Set a good title for your collation</small>
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Description</label>
                    <textarea class="form-control" name="description"></textarea>
                    <small>Give your description about the collation.</small>
                </div>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-sm" data-dismiss="modal">Close</button>
                <button type="submit" name = "add_collation_btn" class="btn btn-primary btn-sm">Submit</button>
              </div>
            </div>

          </form>
        </div>
    </div>

    <div class="modal fade" id="edit_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <form action="<?= base_url('examinations/edit_collation'); ?>" method = "POST" enctype="multipart/form-data">

            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title font-weight-bold">Edit Collation</h4>
                <button type="button" class="close" style="background: transparent !important;" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body" id = "edit_target">
                
                Fetching...

              </div>
              <div class="modal-footer">
                <button type="button" class="btn" data-dismiss="modal">Close</button>
                <button type="submit" name = "confirm_edit_collation" class="btn btn-primary">Update</button>
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

                url: '<?= base_url('examinations/edit_collation'); ?>',
                type: 'POST',
                data: {
                    collation_id: id,
                    edit_collation: 1
                },
                success: function(data) {

                    $("#edit_target").html(data);
                    $("#edit_modal").modal('show');
                    $(obj).html('<i class = "fas fa-edit"></i>');
                },
                error: function(error) {
                    console.log(error);
                    $.notify(
                        "We could not complete the process. Something went wrong!",
                        'error'
                    );
                }
            });
        }

        function delete_item(id) {

            var prompt = confirm("Are you sure to delete this collation?");

            if (prompt == 1) {
                window.location.href = "<?= base_url('examinations/delete_collation/'); ?>/" + id;
            }
        }

    </script>

</body>

</html>
