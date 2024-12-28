<?php

    namespace App\Controllers;

    use App\Models\Candidate_model;
    use App\Models\Class_model;

    class Candidates extends BaseController {

        public function index() {

            $model = new Candidate_model();
            $data['candidates'] = $model->get_with_join(
                'candidates_tb',
                'classes_tb',
                ['candidate_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']],
                'candidates_tb.candidate_class = classes_tb.class_id'
            )->getResultArray();

            $model = new Class_model();
            $data['classes'] = $model->get_class(['classes_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

            return view('candidates/list_of_candidates', $data);
        }

        public function add_candidate() {

            if (isset($_POST['add_candidate_btn'])) {

                $data = [
                    'candidate_id'                =>      code_generator('', 7),
                    'first_name'                  =>      $this->request->getPost('first_name'),
                    'middle_name'                 =>      $this->request->getPost('middle_name'),
                    'last_name'                   =>      $this->request->getPost('last_name'),
                    'email'                       =>      $this->request->getPost('email'),
                    'password'                    =>      password_hash('12345', PASSWORD_DEFAULT),
                    'candidate_class'             =>      $this->request->getPost('class'),
                    'candidate_added_by'            =>      $_SESSION['cbt_admin_session']['user']['user_added_by']
                ];

                $model = new Candidate_model();
                $result = $model->add_candidate($data);

                if ($result) {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation success! Candidate added to database",
                      'type' => COLOR_SUCCESS
                      
                    );

                    return redirect()->to(base_url() . '/candidates/');

                }
            }
        }

        public function fetch_candidate() {

            if (isset($_POST['candidate_id'])) {

                $model = new Candidate_model();
                $candidate = $model->get_candidate(['candidate_id' => $_POST['candidate_id'], $_SESSION['cbt_admin_session']['user']['user_added_by']])->getRowArray();

                $model = new Class_model();
                $classes = $model->get_class();

                ?>

                <input type="hidden" name="candidate_id" value="<?= $candidate['candidate_id']; ?>">

                <div class="form-group">
                    <label class="font-weight-bold mb-2">First Name</label>
                    <input type="text" name="first_name" class="form-control" value="<?= $candidate['first_name']; ?>">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Middle Name</label>
                    <input type="text" name="middle_name" class="form-control" value="<?= $candidate['middle_name']; ?>">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Last Name</label>
                    <input type="text" name="last_name" class="form-control" value="<?= $candidate['last_name']; ?>">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Email</label>
                    <input type="text" name="email" class="form-control" value="<?= $candidate['email']; ?>">
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Class (Grade Level)</label>
                    <select class="form-control" name="class">
                        <option value="">Please select</option>

                        <?php if ($classes): ?>
                        <?php foreach($classes as $class): ?>
                            <option value="<?= $class['class_id']; ?>" <?= ($class['class_id'] == $candidate['candidate_class']) ? 'selected': ''; ?>><?= $class['class_name']; ?></option>
                        <?php endforeach; ?>
                        <?php endif; ?>
                    </select>
                </div>

                <?php
            }
        }

        public function edit_candidate() {

            if (isset($_POST['edit_candidate_btn'])) {

                $data = [
                    'first_name'                  =>      $this->request->getPost('first_name'),
                    'middle_name'                 =>      $this->request->getPost('middle_name'),
                    'last_name'                   =>      $this->request->getPost('last_name'),
                    'email'                       =>      $this->request->getPost('email'),
                    'candidate_class'             =>      $this->request->getPost('class')
                ];

                $model = new candidate_model();
                $result = $model->update_candidate($data, ['candidate_id' => $_POST['candidate_id']]);

                if ($result) {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation success! candidate was successfully edited.",
                      'type' => COLOR_SUCCESS
                      
                    );

                    return redirect()->to(base_url() . '/candidates');

                }
                else {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation error! We could not complete the task.",
                      'type' => COLOR_ERROR
                      
                    );

                    return redirect()->to(base_url() . '/candidates');

                }
            }
        }

        public function delete_candidate($id) {

            $model = new Candidate_model();
            $delete = $model->delete_candidate(['candidate_id' => $id]);

            if ($delete) {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation success! Candidate was deleted from the database.",
                  'type' => COLOR_SUCCESS
                  
                );

                return redirect()->to(base_url() . '/candidates');
            }
            else {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation error! We could not complete the task. Try again.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/candidates');
            }
        }

        public function delete_exam_attempt($entry_id, $exam_id) {

            $model = new Candidate_model();
            $delete = $model->delete_exam_attempts(['entry_id' => $entry_id]);

            if ($delete) {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation success! Examination attempt was deleted from the database.",
                  'type' => COLOR_SUCCESS
                  
                );

                return redirect()->to(base_url() . '/examinations/results/' . $exam_id);
            }
            else {
                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation error! We could not complete the task. Try again.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/examinations/results/' . $exam_id);

            }
        }
    }

?>