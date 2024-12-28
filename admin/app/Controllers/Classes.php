<?php

    namespace App\Controllers;

    use App\Models\Class_model;
    use App\Models\Candidate_model;
    use App\Models\Examination_model;

    class Classes extends BaseController {

        public function index() {

            $model = new Class_model();
            $data['classes'] = $model->get_class(['classes_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

            return view('classes/list_of_classes', $data);
        }

        public function add_class() {

            if (isset($_POST['add_class_btn'])) {

                $data = [
                    'class_id'              =>          code_generator('CLS', 10),
                    'class_name'            =>          $this->request->getPost('name'),
                    'abbreviation'          =>          $this->request->getPost('abbreviation'),
                    'description'           =>          $this->request->getPost('description'),
                    'classes_added_by'      =>          $_SESSION['cbt_admin_session']['user']['user_added_by']
                ];

                $model = new Class_model();
                $result = $model->add_class($data);

                if ($result) {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation success! Class was successfully added to the database.",
                      'type' => COLOR_SUCCESS
                      
                    );

                    return redirect()->to(base_url() . '/classes');

                }
                else {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation error! Something went wrong.",
                      'type' => COLOR_ERROR
                      
                    );

                    return redirect()->to(base_url() . '/classes');

                }
            }
        }

        public function fetch_class() {

            if (isset($_POST['class_id'])) {

                $model = new Class_model();
                $class = $model->get_class(['class_id' => $_POST['class_id'], 'classes_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getRowArray();

                ?>

                <input type="hidden" name="class_id" value="<?= $class['class_id']; ?>">

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Name</label>
                    <input type="text" name="name" class="form-control" value="<?= $class['class_name']; ?>">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Abbreviation</label>
                    <input type="text" name="abbreviation" class="form-control" value="<?= $class['abbreviation']; ?>">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Description</label>
                    <textarea class="form-control" name = "description" rows=""><?= $class['description']; ?></textarea>
                </div>

                <?php
            }
        }

        public function edit_class() {

            if (isset($_POST['edit_class_btn'])) {

                $data = [

                    'class_name'            =>          $this->request->getPost('name'),
                    'abbreviation'          =>          $this->request->getPost('abbreviation'),
                    'description'           =>          $this->request->getPost('description')
                ];

                $model = new Class_model();
                $result = $model->update_class($data, ['class_id' => $_POST['class_id']]);

                if ($result) {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation success! Class was successfully edited.",
                      'type' => COLOR_SUCCESS
                      
                    );

                    return redirect()->to(base_url() . '/classes');

                }
                else {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation error! We could not complete the task.",
                      'type' => COLOR_ERROR
                      
                    );

                    return redirect()->to(base_url() . '/classes');

                }
            }
        }

        public function delete_class($id) {

            $model = new Class_model();
            $delete = $model->delete_class(['class_id' => $id]);

            if ($delete) {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation success! Class was deleted from the database.",
                  'type' => COLOR_SUCCESS
                  
                );

                return redirect()->to(base_url() . '/classes');
            }
            else {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation error! We could not complete the task. Try again.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/classes');
            }
        }

        public function fetch_candidates() {

            if (isset($_POST['class_id'])) {

                $model = new Candidate_model();

                if ($_POST['class_id'] == 'all') {
                    $candidates = $model->get_candidate(['candidate_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();
                }
                else {
                    $candidates = $model->get_candidate(['candidate_class' => $_POST['class_id'], 'candidate_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();
                }

                $model = new Examination_model();
                $exam_candidates = $model->get_candidates(['examination_id' => $_POST['exam_id']])->getResultArray();
                
                if ($candidates) {
                    foreach($candidates as $k => $item) { ?>

                        <tr>
                            <td style="width: 1%;"><?= $k + 1; ?></td>
                            <td>
                                <?php if ($exam_candidates): ?>
                                <?php foreach($exam_candidates as $candidate): ?>

                                <?php
                                    if ($candidate['candidate_id'] == $item['candidate_id']) {
                                        $checked = 'checked';

                                        break;
                                    }
                                    else {
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
                            </td>
                        </tr>

                    <?php }
                }
            }
        }
    }

?>