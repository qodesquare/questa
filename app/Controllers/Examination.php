<?php

    namespace App\Controllers;

    use App\Models\Examination_model;
    use App\Models\Question_model;
    use App\Models\Candidate_model;

    class Examination extends BaseController {

        public function index() {

            $model = new Candidate_model();
            $data['candidates'] = $model->get_candidate();

            return view('candidates/list_of_candidates', $data);
        }

        public function start($exam_id) {
            
            if (!isset($_SESSION['cbt_app_session']['user'])) {
                
                return redirect()->to(base_url() . '/auth/sign_in');
            }

            $model = new Examination_model();
            $data['examination'] = $model->get_with_join_b(
                'examinations_tb',
                'classes_tb',
                'subjects_tb',
                ['examinations_tb.exam_id' => $exam_id],
                'examinations_tb.class = classes_tb.class_id',
                'examinations_tb.subject = subjects_tb.subject_id'
            )->getRowArray();

            if (!$data['examination']['status']) {

                $_SESSION['cbt_app_session']['exam_name'] = $data['examination']['exam_title'];

                return redirect()->to(base_url() . '/examination/exam_inactive');
            }

            if ($data['examination']['status']) { // This done for double certainty check

                $model = new Question_model();
                $data['questions'] = $model->get_with_join(
                    'questions_examinations_tb',
                    'questions_tb',
                    ['questions_examinations_tb.exam_id' => $exam_id],
                    'questions_examinations_tb.question_id = questions_tb.question_id'
                )->getResultArray();

                if ($data['examination']['shuffle_questions']) {
                    shuffle($data['questions']);
                }
            }

            $model = new Examination_model();
            $data['attachments'] = $model->get_exam_attachments(['examination_id' => $exam_id])->getResultArray();

            $_SESSION['attempt_id'] = code_generator('ENT', 10);

            if ($data['examination']['type'] == 1)
                return view('examination_multichoice_start', $data);
            else
                return view('examination_essay_start', $data);
            
        }

        public function get_file_attachments($exam_id, $candidate_id) {

            if (isset($_GET)) {

                $model = new Candidate_model();
                $files = $model->get_submission_upload(['exam_id' => $exam_id, 'candidate_id' => $candidate_id])->getResultArray();

                echo (json_encode($files));
            }
        }

        public function upload_student_files($exam_id) {

            if (isset($_FILES)) {

                $file = $this->request->getFile('file');

                if ($file->isValid() && ! $file->hasMoved()) {

                    $newName = $file->getRandomName();
                    $newName = str_replace(' ', '_', $newName);

                    $file->move('admin/uploads/students_uploads', $newName);

                    $data = [
                        'entry_id'              =>      code_generator('ENT', 10),
                        'attempt_id'            =>      $_SESSION['attempt_id'],
                        'file_path'             =>      $newName,
                        'filename'              =>      $file->getClientName(),
                        'file_type'             =>      $file->getClientMimeType(),
                        'candidate_id'          =>      $_SESSION['cbt_app_session']['user']['candidate_id'],
                        'exam_id'               =>      $exam_id
                    ];

                    $model = new Candidate_model();
                    $model->add_submission_upload($data);

                }
            }
        }

        public function delete_uploaded_file() {

            if (isset($_POST['request']) && $_POST['request'] == 'delete') {

                $model = new Candidate_model();
                $file = $model->get_submission_upload(['filename' => $_POST['name']])->getRowArray();

                $result = $model->delete_submission_upload(['file_path' => $file['file_path']]);

                // Not working for now; find other method of deleting the file
                // unlink('/admin/uploads/students_uploads/' . $file['file_path']); 

                if ($result)
                    echo 1;
                else
                    echo 0;
            }
        }

        public function end_exam() {

            if (isset($_POST['exam_answers'])) {

                $exam_answers = $_POST['exam_answers'];
                $examination_id = $_POST['examination_id'];

                $model = new Examination_model();
                // $delete = $model->delete_candidate(['candidate_id' => $_SESSION['cbt_app_session']['user']['candidate_id']]);
                
                $delete = $model->delete_candidate(['candidate_id' => $_SESSION['cbt_app_session']['user']['candidate_id'], 'examination_id' => $examination_id]);

                $data = [
                    'entry_id'              =>          $_SESSION['attempt_id'],
                    'examination_id'        =>          $_POST['examination_id'],
                    'candidate_id'          =>          $_SESSION['cbt_app_session']['user']['candidate_id'],
                    'answer'                =>          $exam_answers,
                    'time_spent'            =>          $_POST['time_spent'],
                    'time_remaining'        =>          $_POST['time_remaining']
                ];

                $model = new Candidate_model();
                $result = $model->add_answer($data);

                unset($_SESSION['attempt_id']);
                
                // If not commented, app will fail upon retry when submission fails
                // To leave it uncommented, then Internet connection must be strong and good.
                unset($_SESSION['cbt_app_session']);

            }
        }

        public function exam_inactive() {

            if (!isset($_SESSION['cbt_app_session']['user'])) {
                
                return redirect()->to(base_url() . '/auth/sign_in');
            }

            $data = [];

            return view('examination_inactive', $data);
        }

        public function sign_out() {

            unset($_SESSION['cbt_app_session']);

            $_SESSION['cbt_app_notyf'] = array(

              'msg' => "Operation success! Now, you have signed out of the system.",
              'type' => COLOR_INFO

            );

            return redirect()->to(base_url() . '/auth/login');
        }
    }

?>