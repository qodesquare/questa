<?php

    namespace App\Controllers;
    use App\Models\Subject_model;

    class Subjects extends BaseController {

        public function index() {

            $model = new Subject_model();
            $data['subjects'] = $model->get_subject(['subject_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

            return view('subjects/list_of_subjects', $data);
        }

        public function add_subject() {

            if (isset($_POST['add_subject_btn'])) {

                $data = [
                    'subject_id'                =>          code_generator('SUB', 10),
                    'subject_name'              =>          $this->request->getPost('name'),
                    'abbreviation'              =>          $this->request->getPost('abbreviation'),
                    'description'               =>          $this->request->getPost('description'),
                    'subject_added_by'          =>          $_SESSION['cbt_admin_session']['user']['user_added_by']
                ];

                $model = new Subject_model();
                $result = $model->add_subject($data);

                if ($result) {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation success! Class was successfully added to the database.",
                      'type' => COLOR_SUCCESS
                      
                    );

                    return redirect()->to(base_url() . '/subjects');

                }
                else {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation error! Something went wrong.",
                      'type' => COLOR_ERROR
                      
                    );

                    return redirect()->to(base_url() . '/subjects');

                }
            }
        }

        public function fetch_subject() {

            if (isset($_POST['subject_id'])) {

                $model = new Subject_model();
                $subject = $model->get_subject(['subject_id' => $_POST['subject_id']])->getRowArray();

                ?>

                <input type="hidden" name="subject_id" value="<?= $subject['subject_id']; ?>">

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Title</label>
                    <input type="text" name="name" class="form-control" value="<?= $subject['subject_name']; ?>">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Abbreviation</label>
                    <input type="text" name="abbreviation" class="form-control" value="<?= $subject['abbreviation']; ?>">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Description</label>
                    <textarea class="form-control" name = "description" rows=""><?= $subject['description']; ?></textarea>
                </div>
                <?php
            }
        }

        public function edit_subject() {

            if (isset($_POST['edit_subject_btn'])) {

                $data = [

                    'subject_name'          =>          $this->request->getPost('name'),
                    'abbreviation'          =>          $this->request->getPost('abbreviation'),
                    'description'           =>          $this->request->getPost('description')
                ];

                $model = new Subject_model();
                $result = $model->update_subject($data, ['subject_id' => $_POST['subject_id']]);

                if ($result) {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation success! Subject was successfully edited.",
                      'type' => COLOR_SUCCESS
                      
                    );

                    return redirect()->to(base_url() . '/subjects');

                }
                else {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation error! We could not complete the task.",
                      'type' => COLOR_ERROR
                      
                    );

                    return redirect()->to(base_url() . '/subjects');

                }
            }
        }

        public function delete_subject($id) {

            $model = new Subject_model();
            $delete = $model->delete_subject(['subject_id' => $id]);

            if ($delete) {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation success! Subject was deleted from the database.",
                  'type' => COLOR_SUCCESS
                  
                );

                return redirect()->to(base_url() . '/subjects');
            }
            else {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation error! We could not complete the task. Try again.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/subjects');
            }
        }
    }

?>