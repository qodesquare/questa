<!DOCTYPE html>
<html lang="en">

<head>
    <title>Questa Online Quiz App | Candidates</title>
    
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
                            <h5 class="m-b-10">Candidates</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Home</a></li>
                            <li class="breadcrumb-item">Candidates</li>
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
                            <h5>List of Candidates</h5>
                            <span class="d-block m-t-5">Showing list of all candidates in this app.</span>
                        </div>
                        <?php if (is_owner_account()): ?>
                        <div>
                            <a href="" data-toggle = "modal" data-target = "#add_modal" class="btn btn-primary btn-sm">Add Candidate</a>
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
                                        <th>Email</th>
                                        <th>Class</th>
                                        <th>Date Added</th>
                                        <th>Action(s)</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php if ($candidates): ?>
                                        <?php foreach($candidates as $k => $item): ?>
                                    <tr>
                                        <td><?= $k + 1; ?></td>
                                        <td>
                                            <?= $item['first_name'] . ' ' . $item['middle_name'] . ' ' . $item['last_name']; ?>
                                            <div style  ="font-family: consolas" class="small font-weight-bold"><?= $item['candidate_id']; ?></div> 
                                        </td>
                                        <td>
                                            <?= $item['email']; ?>
                                        </td>
                                        <td>
                                            <?= $item['class_name']; ?>
                                        </td>
                                        <td><?= $item['date_created']; ?></td>
                                        <td>
                                            <button onclick="fetch_item(this, '<?= $item['candidate_id']; ?>');" class="btn btn-outline-warning btn-sm"><i class="fas fa-edit"></i></button>
                                            <?php if (is_owner_account()): ?>
                                            <button onclick="delete_item('<?= $item['candidate_id']; ?>');" class="btn btn-outline-danger btn-sm"><i class="fas fa-trash-alt"></i></button>
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
          <form action="<?= base_url('candidates/add_candidate'); ?>" method = "POST" enctype="multipart/form-data">

            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title font-weight-bold">Add Candidate</h4>
                <button type="button" class="close" style="background: transparent !important;" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                
                <div class="form-group">
                    <label class="font-weight-bold mb-2">First Name</label>
                    <input type="text" name="first_name" class="form-control">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Middle Name</label>
                    <input type="text" name="middle_name" class="form-control">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Last Name</label>
                    <input type="text" name="last_name" class="form-control">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Email</label>
                    <input type="text" name="email" class="form-control">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Class (Grade Level)</label>
                    <select class="form-control" name="class">
                        <option value="">Please select</option>

                        <?php if ($classes): ?>
                        <?php foreach($classes as $class): ?>
                            <option value="<?= $class['class_id']; ?>"><?= $class['class_name']; ?></option>
                        <?php endforeach; ?>
                        <?php endif; ?>
                    </select>
                </div>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-sm" data-dismiss="modal">Close</button>
                <button type="submit" name = "add_candidate_btn" class="btn btn-primary btn-sm">Submit</button>
              </div>
            </div>

          </form>
        </div>
    </div>

    <div class="modal fade" id="edit_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <form action="<?= base_url('candidates/edit_candidate'); ?>" method = "POST" enctype="multipart/form-data">

            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title font-weight-bold">Edit Candidate</h4>
                <button type="button" class="close" style="background: transparent !important;" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body" id = "edit_target">
                
                Fetching...

              </div>
              <div class="modal-footer">
                <button type="button" class="btn" data-dismiss="modal">Close</button>
                <button type="submit" name = "edit_candidate_btn" class="btn btn-primary">Update</button>
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

                url: '<?= base_url('candidates/fetch_candidate'); ?>',
                type: 'POST',
                data: {
                    candidate_id: id
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

            var prompt = confirm("Are you sure to delete this candidate?");

            if (prompt == 1) {
                window.location.href = "<?= base_url('candidates/delete_candidate/'); ?>/" + id;
            }
        }

    </script>

</body>

</html>
