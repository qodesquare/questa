<?php

    namespace App\Controllers;

    use App\Models\Examination_model;
    use App\Models\Question_model;
    use App\Models\Class_model;
    use App\Models\Subject_model;
    use App\Models\Candidate_model;
    use App\Models\User_model;
    use App\Models\Collation_model;

    class Examinations extends BaseController {

        public function index() {

            if (!is_owner_account()) {
                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation aborted! You do not have sufficient rights to access the path.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url());
            }

            $model = new Examination_model();
            $data['examinations'] = $model->get_with_join_b(
                'examinations_tb',
                'classes_tb',
                'subjects_tb',
                ['exam_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']],
                'examinations_tb.class = classes_tb.class_id',
                'examinations_tb.subject = subjects_tb.subject_id'
            )->getResultArray();

            return view('examinations/list_of_exams', $data);
        }

        public function add_examination() {

            if (isset($_POST['create_exam_btn'])) {

                $data = [

                    'exam_id'                       =>          $this->request->getPost('exam_no'),
                    'exam_title'                    =>          $this->request->getPost('title'),
                    'class'                         =>          $this->request->getPost('class'),
                    'subject'                       =>          $this->request->getPost('subject'),
                    'duration'                      =>          $this->request->getPost('duration'),
                    'exam_instructions'             =>          $this->request->getPost('exam_instructions'),
                    'status'                        =>          0,
                    'shuffle_questions'             =>          $this->request->getPost('shuffle'),
                    'allow_candidates_upload'       =>          $this->request->getPost('allow_upload'),
                    'fullscreen'                    =>          $this->request->getPost('fullscreen'),
                    'type'                          =>          $this->request->getPost('type'),
                    'pass_mark'                     =>          50,
                    'exam_added_by'                 =>          $_SESSION['cbt_admin_session']['user']['user_added_by']
                ];

                $model = new Examination_model();
                $result = $model->add_exam($data);

                if ($result > 0)    {
                    
                    if (isset($_POST['collation_id'])) {

                        $collation_id = $_POST['collation_id'];
        
                        $model = new Collation_model();
                        
                        $collation_data = [
                            'item_id'           =>      code_generator('AS', 10),
                            'examination_id'    =>      $data['exam_id'],
                            'collation_id'      =>      $collation_id,
                            'item_added_by'     =>      $_SESSION['cbt_admin_session']['user']['user_added_by']
                        ];
                        
                        $result = $model->add_assigned($collation_data);
                        
                        // Assign to personnel
                        
                        $personnel_id = $_SESSION['cbt_admin_session']['user']['user_id'];
                        $exam_id = $data['exam_id'];
        
                        $model = new Examination_model();
                        $result = $model->update_exam(['assigned_to'  =>  $personnel_id], ['exam_id'  =>  $exam_id]
                        );
                    }

                    if ($result > 0) {
                        
                        $_SESSION['cbt_app_notyf'] = array(

                          'msg' => "Operation success! Examination was successfully added to the database. Now you can start setting questions.",
                          'type' => COLOR_SUCCESS
                          
                        );
    
                        return redirect()->to(base_url() . '/examinations/view_examination/' . $data['exam_id']);
                    }
                    else {
                        
                        $_SESSION['cbt_app_notyf'] = array(

                          'msg' => "Operation error! Something went wrong. Please try again.",
                          'type' => COLOR_ERROR
                          
                        );
    
                        return redirect()->to(base_url() . '/examinations');
                        
                    }

                }
                else {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation error! Something went wrong. Please try again.",
                      'type' => COLOR_ERROR
                      
                    );

                    return redirect()->to(base_url() . '/examinations');
                }

                exit;
            }

            $model = new Class_model();
            $data['classes'] = $model->get_class(['classes_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

            $model = new Subject_model();
            $data['subjects'] = $model->get_subject(['subject_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

            return view('examinations/add_examination', $data);
        }

        public function edit_examination($id) {

            if (isset($_POST['edit_exam_btn'])) {

                $data = [

                    'exam_id'                   =>          $this->request->getPost('exam_no'),
                    'exam_title'                =>          $this->request->getPost('title'),
                    'class'                     =>          $this->request->getPost('class'),
                    'subject'                   =>          $this->request->getPost('subject'),
                    'duration'                  =>          $this->request->getPost('duration'),
                    'exam_instructions'         =>          $this->request->getPost('exam_instructions'),
                    'status'                    =>          $this->request->getPost('exam_status'),
                    'shuffle_questions'         =>          $this->request->getPost('shuffle'),
                    'allow_candidates_upload'       =>          $this->request->getPost('allow_upload'),
                    'fullscreen'                =>          $this->request->getPost('fullscreen'),
                    'type'                      =>          $this->request->getPost('type'),
                    'exam_edited_by'            =>          $_SESSION['cbt_admin_session']['user']['user_id']
                ];

                $model = new Examination_model();
                $result = $model->update_exam($data, ['exam_id' => $id]);

                if ($result > 0)    {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation success! Update was successful.",
                      'type' => COLOR_SUCCESS
                      
                    );

                    return redirect()->to(base_url() . '/examinations/edit_examination/' . $id);

                }
                else {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation error! Something went wrong. Please try again.",
                      'type' => COLOR_ERROR
                      
                    );

                    return redirect()->to(base_url() . '/examinations/edit_examination/' . $id);
                }
            }

            $model = new Examination_model();
            $data['examination'] = $model->get_exam(['exam_id' => $id])->getRowArray();

            $model = new Class_model();
            $data['classes'] = $model->get_class(['classes_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

            $model = new Subject_model();
            $data['subjects'] = $model->get_subject(['subject_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

            return view('examinations/edit_examination', $data);
        }

        public function set_pass_mark($exam_id) {

            if (isset($_POST['set_pass_mark'])) {

                $data = [
                    'pass_mark'     =>      $this->request->getPost('set_pass_mark')
                ];

                $model = new Examination_model();
                $update = $model->update_exam($data, ['exam_id' => $exam_id]);

                if ($update)
                    echo 1;
                else
                    echo 0;
            }
        }

        public function delete_examination($id) {

            $model = new Examination_model();
            $delete = $model->delete_exam(['exam_id' => $id]);

            if ($delete) {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation success! Examination was deleted from the database.",
                  'type' => COLOR_SUCCESS
                  
                );

                return redirect()->to(base_url() . '/examinations');
            }
            else {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation error! We could not complete the task. Try again.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/examinations');
            }
        }

        public function my_list() {

            $model = new Examination_model();
            $data['examinations'] = $model->get_with_join_b(
                'examinations_tb',
                'classes_tb',
                'subjects_tb',
                ['exam_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by'], 'assigned_to' => $_SESSION['cbt_admin_session']['user']['user_id']],
                'examinations_tb.class = classes_tb.class_id',
                'examinations_tb.subject = subjects_tb.subject_id'
            )->getResultArray();

            return view('examinations/my_list', $data);
        }

        public function view_examination($id) {

            $model = new Examination_model();
            
            $check_if_assigned_to_user = $model->get_exam(['assigned_to' => $_SESSION['cbt_admin_session']['user']['user_id'], 'exam_id' => $id])->getResultArray();
            $data['check_if_assigned_to_user'] = count($check_if_assigned_to_user);

            $test = is_owner_account() || (count($check_if_assigned_to_user) > 0);

            if (!$test) {
                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation aborted! You do not have sufficient rights to view the requested resource.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url('examinations/'));
            }
            else {
                if (is_owner_account()) {
                    
                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "You are viewing this because you have priviledged access as an Account Owner.",
                      'type' => COLOR_SUCCESS
                      
                    );
                }
                
                if (count($check_if_assigned_to_user) > 0) {
                    
                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "You are viewing this because this resource is assigned to you.",
                      'type' => COLOR_SUCCESS
                      
                    );
                }
            }

            $model = new Examination_model();
            $data['exam_questions'] = $model->get_with_join(
                'questions_examinations_tb',
                'questions_tb',
                ['questions_examinations_tb.exam_id' => $id],
                'questions_tb.question_id = questions_examinations_tb.question_id'
                
            )->getResultArray();

            $model = new Examination_model();
            $data['examination'] = $model->get_with_join_b(
                'examinations_tb',
                'classes_tb',
                'subjects_tb',
                ['examinations_tb.exam_id' => $id],
                'examinations_tb.class = classes_tb.class_id',
                'examinations_tb.subject = subjects_tb.subject_id'
            )->getRowArray();

            if (!$data['examination']) {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation suspended! Invalid ID token.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/examinations');
            }

            $model = new Examination_model();
            $data['exam_candidates'] = $model->get_candidates(['examination_id' => $id])->getResultArray();

            $model = new Candidate_model();
            $data['candidates'] = $model->get_candidate(['candidate_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

            $model = new Class_model();
            $data['classes'] = $model->get_class(['classes_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

            $model = new User_model();
            $data['last_editor'] = $model->get_user(['user_id' => $data['examination']['exam_edited_by']])->getRowArray();

            $model = new User_model();
            $data['personnel'] = $model->get_user(['user_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

            $model = new Examination_model();
            $data['attachments'] = $model->get_exam_attachments(['examination_id' => $id])->getResultArray();

            $data['attachments_count'] = count($data['attachments']);

            if ($data['examination']['type'] == 1)
                return view('examinations/view_examination_multichoice', $data);
            else
                return view('examinations/view_examination_essay', $data);
        }

        public function upload_file($question_id) {

            if (isset($_FILES)) {

                $file = $this->request->getFile('file');

                if ($file->isValid() && ! $file->hasMoved()) {

                    $newName = $file->getRandomName();
                    $newName = str_replace(' ', '_', $newName);

                    $file->move('uploads/questions', $newName);

                    $data = [
                        'image'        =>      $newName,
                    ];

                    $model = new Question_model();
                    $old_image = $model->get_question(['question_id' => $question_id])->getRowArray();
                    
                    $model->update_question($data, ['question_id' => $question_id]);
                    
                    if ($old_image['image'] != 'image_question.png') { // Ensure not to delete the default image!
                        unlink('uploads/questions/' . $old_image['image']);
                    }

                    echo $newName;

                }
            }
        }

        public function upload_file_attachments($exam_id) {

            if (isset($_FILES)) {

                $file = $this->request->getFile('file');

                if ($file->isValid() && ! $file->hasMoved()) {

                    $newName = $file->getRandomName();
                    $newName = str_replace(' ', '_', $newName);

                    $file->move('uploads/examinations_attachments', $newName);

                    $data = [
                        'entry_id'              =>      code_generator('ENT', 12),
                        'examination_id'        =>      $exam_id,
                        'filepath'              =>      $newName,
                        'filename'              =>      str_replace(' ', '_', $file->getClientName()),
                        'file_type'             =>      $file->getClientMimeType(),
                        'file_added_by'         =>      $_SESSION['cbt_admin_session']['user']['user_added_by']
                    ];

                    $model = new Examination_model();
                    $model->add_exam_attachment($data);

                    echo $newName;

                }
            }
        }

        public function delete_file_attachment() {

            if (isset($_POST['file_attachment_id'])) {

                $model = new Examination_model();
                $delete = $model->delete_exam_attachment(['entry_id' => $_POST['file_attachment_id']]);

                echo $delete;
            }
        }

        public function delete_uploaded_file() {

            if (isset($_POST['request']) && $_POST['request'] == 'delete') {
                
                $file_name = str_replace(' ', '_', $_POST['name']);

                $model = new Examination_model();
                $file_to_delete = $model->get_exam_attachments(['filename' => $file_name])->getRowArray();
                
                $result = $model->delete_exam_attachment(['filepath' => $file_to_delete['filepath'], 'filename' => $file_name]);
                
                // if ($file_to_delete)
                    unlink('uploads/examinations_attachments/' . $file_to_delete['filepath']);
            }
        }

        public function get_file_attachments() {

            if (isset($_POST['get_file_attachments'])) {

                $model = new Examination_model();
                $files = $model->get_exam_attachments(['examination_id' => $_POST['get_file_attachments']])->getResultArray();

                echo (json_encode($files));
            }
        }

        public function get_exam_attachments($exam_id) {

            if (isset($_POST['request']) && $_POST['request'] == 'fetch') {

                $model = new Examination_model();
                $attachment_files = $model->get_exam_attachments(['examination_id' => $this->request->getPost('examination_id')])->getResultArray();

                $fileList = [];
                $dir = 'uploads/examinations_attachments/';

                if (is_dir($dir)){

                    if ($dh = opendir($dir)){

                        while (($file = readdir($dh)) !== false){

                            if($file != '' && $file != '.' && $file != '..') {
                                $file_path = $dir . $file;

                                if( !is_dir($file_path) ) {

                                    $size = filesize($file_path);
                                    $fileList[] = [ 'name' => $file, 'size' => $size, 'path' => $file_path ];
                                }

                            }

                        }

                        closedir($dh);

                    }
                }

                $files_list = array();

                foreach($fileList as $file) {

                    foreach($attachment_files as $a_file) {

                        if ($file['name'] == $a_file['filepath']) {
                            $file['real_name'] = $a_file['filename'];
                            array_push($files_list, $file);
                        }

                    }
                }

                echo json_encode($files_list);
                exit;

            }
        }

        public function set_status() {

            if (isset($_POST['examination_id'])) {

                if ($this->request->getPost('status') == 'true')
                    $status = 1;
                else if ($this->request->getPost('status') == 'false')
                    $status = 0;

                $data = [
                    'status'           =>       $status
                ];

                $model = new Examination_model();
                $result = $model->update_exam($data, ['exam_id' => $this->request->getPost('examination_id')]);

                if ($result)
                    echo $this->request->getPost('status');
                else
                    echo $this->request->getPost('status');
            }
        }

        public function push_candidate() {

            $candidates = json_decode($this->request->getPost('candidates'));

            $model = new Examination_model();
            $delete_data = $model->delete_candidate(['examination_id' => $this->request->getPost('examination_id')]);

            foreach($candidates as $item) {

                $this->assign_candidate($item, $this->request->getPost('examination_id'));
            }
        }

        public function assign_candidate($candidate_id, $exam_id) {

            $data = [
                'entry_id'                  =>          code_generator('ENT', 10),
                'examination_id'            =>          $exam_id,
                'candidate_id'              =>          $candidate_id,
                'access_token'              =>          code_generator('', 5)
            ];

            $model = new Examination_model();
            $result = $model->add_candidate($data);

            if ($result) {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation success! Candidates successfully assigned to the database.",
                  'type' => COLOR_SUCCESS
                  
                );
                echo 1;
            }
            else {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation error! Some tasks were not completed.",
                  'type' => COLOR_ERROR
                  
                );
                echo 0;
            }
        }

        public function results($exam_id) {

            $model = new Examination_model();
            $data['examination'] = $model->get_exam(['exam_id' => $exam_id])->getRowArray();

            $model = new Examination_model();
            $data['questions_for_this_exam'] = $model->get_item(['exam_id' => $exam_id])->getResultArray();

            $model = new Candidate_model();
            $data['examination_attempts'] = $model->get_with_join(
                'candidate_answers_tb',
                'candidates_tb',
                ['candidate_answers_tb.examination_id' => $exam_id],
                'candidate_answers_tb.candidate_id = candidates_tb.candidate_id'

            )->getResultArray();

            $model = new Question_model();
            $data['questions'] = $model->get_question();

            if ($data['examination']['type'] == 1)
                return view('examinations/exam_results_multichoice', $data);
            else
                return view('examinations/exam_results_essay', $data);
        }

        public function view_result($attempt_id, $exam_id) {

            $model = new Examination_model();
            $data['examination'] = $model->get_exam(['exam_id' => $exam_id])->getRowArray();

            $model = new Examination_model();
            $data['questions_for_this_exam'] = $model->get_item(['exam_id' => $exam_id])->getResultArray();

            $model = new Candidate_model();
            $data['exam_attempt'] = $model->get_with_join(
                'candidate_answers_tb',
                'candidates_tb',
                ['candidate_answers_tb.entry_id' => $attempt_id],
                'candidate_answers_tb.candidate_id = candidates_tb.candidate_id'

            )->getRowArray();

            $model = new Candidate_model();
            $data['uploaded_submissions'] = $model->get_uploaded_submissions(
                [
                    'attempt_id'        =>      $attempt_id,
                    'exam_id'           =>      $exam_id
                ]
            )->getResultArray();

            $model = new Question_model();
            $data['questions'] = $model->get_question();

            if ($data['examination']['type'] == 1)
                return view('examinations/result_view_multichoice', $data);
            else
                return view('examinations/result_view_essay', $data);

        }

        public function send_transcript() {

            if (isset($_POST['send_transcript'])) {

                $data['candidate_name'] = $this->request->getPost('candidate_name');
                $data['candidate_email'] = $this->request->getPost('candidate_email');
                $data['exam_name'] = $this->request->getPost('exam_name');
                $data['exam_date'] = date("jS M, Y h:i:sa");
                $data['candidate_name'] = $this->request->getPost('candidate_name');
                $data['correct_answers'] = $this->request->getPost('correct_answers');
                $data['incorrect_answers'] = $this->request->getPost('incorrect_answers');
                $data['correct_points'] = $this->request->getPost('correct_points');
                $data['total_points'] = $this->request->getPost('total_points');

                $body = view('email_templates/candidate_result_multichoice.php', $data);
                $mail = send_email($body, $data['candidate_email'], ($data['exam_name'] . ' ' . ' Examination Result'));

            }

            if (isset($_POST['send_transcript_essay'])) {

                $data['candidate_name'] = $this->request->getPost('candidate_name');
                $data['candidate_email'] = $this->request->getPost('candidate_email');
                $data['exam_name'] = $this->request->getPost('exam_name');
                $data['exam_date'] = date("jS M, Y h:i:sa");
                $data['candidate_name'] = $this->request->getPost('candidate_name');
                $data['correct_points'] = $this->request->getPost('correct_points');
                $data['total_points'] = $this->request->getPost('total_points');
                $data['result_list'] = json_decode($this->request->getPost('result_list'));

                $body = view('email_templates/candidate_result_essay.php', $data);

                // debug_print($body);
                $mail = send_email($body, $data['candidate_email'], ($data['exam_name'] . ' ' . ' Examination Result'));

            }
        }

        public function tickets($exam_id) {

            $model = new Examination_model();
            $data['examination'] = $model->get_exam(['exam_id' => $exam_id])->getRowArray();

            $model = new Examination_model();
            $data['exam_tickets'] = $model->get_with_join(
                'examinations_candidates_tb',
                'candidates_tb',
                ['examinations_candidates_tb.examination_id' => $exam_id],
                'examinations_candidates_tb.candidate_id = candidates_tb.candidate_id'
            )->getResultArray();

            return view('examinations/exam_tickets', $data);
        }

        public function print_tickets($exam_id) {

            $model = new Examination_model();
            $data['exam_tickets'] = $model->get_with_join_b(
                'examinations_candidates_tb',
                'examinations_tb',
                'candidate_tb',
                ['examinations_candidates_tb.examination_id' => $exam_id],
                'examinations_candidates_tb.examination_id = examinations_tb.exam_id',
                'examinations_candidates_tb.candidate_id = candidates_tb.candidate_id'
            )->getResultArray();

            return view('examinations/exam_tickets', $data);
        }

        public function shuffle_questions($id) {

            if (isset($_POST['shuffle_questions'])) {

                $state = ($this->request->getPost('state') == 'true') ? 1: 0;

                $model = new Examination_model();
                $update = $model->update_exam(['shuffle_questions' => $state], ['exam_id' => $this->request->getPost('shuffle_questions')]);

                if ($update) {
                    
                    $result = [
                        'msg'        =>    'Operation success! Questions for this examination will be randomised.',
                        'type'       =>    COLOR_SUCCESS
                    ];
                }
                else {
                    $result = [
                        'msg'        =>    'Operation error! We could not complete the process.',
                        'type'       =>    COLOR_ERROR
                    ];
                }

                return json_encode($result);
            }
        }

        public function save_scores() {

            if (isset($_POST['score_sheet'])) {

                $score_sheet = ($_POST['score_sheet']);
                $exam_attempt_id = $_POST['attempt_id'];

                $data = [
                    'score_sheet'       =>      $score_sheet
                ];

                $model = new Candidate_model();
                $save = $model->update_exam_attempts($data, ['entry_id' => $exam_attempt_id]);

                return print_r($save);
            }
        }

        public function collations() {

            $model = new Collation_model();
            
            if (is_owner_account()) {
                $where = ['collation_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']];
            }
            else {
                $where = ['collation_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by'], 'collaboration_status' => 1];
            }
            $collations = $model->get_collation($where)->getResultArray();

            $data['collations'] = $collations;

            return view('examinations/collations', $data);
        }
        
        public function set_collation_collab($collation_id) {
            
            if (isset($_POST['collation_collaboration_status'])) {
                $collation_id = $this->request->getPost('collation_id');
                
                $model = new Collation_model();
                $this_collation = $model->get_collation(['collation_id' => $collation_id])->getRowArray();
                
                if (($this_collation)) {
                    
                    $model = new Collation_model();
                    $result = $model->update_collation(
                        [
                            'collaboration_status' => $this->request->getPost('collation_collaboration_status'),
                            'collaboration_instructions' => $this->request->getPost('collaboration_instruction')
                        ], 
                        ['collation_id' => $collation_id]
                    );
                    
                    if ($result)
                        echo $collation_id;
                    else
                        echo 0;
                }
                else {
                    echo 0;
                }
                
            }
            else {
                echo 0;
            }
            
        }

        public function add_collation() {

            if (isset($_POST['add_collation_btn'])) {

                $data = [
                    'collation_id'          =>      code_generator('CL', 10),
                    'collation_name'        =>      $this->request->getPost('name'),
                    'description'           =>      $this->request->getPost('description'),
                    'collation_added_by'    =>      $_SESSION['cbt_admin_session']['user']['user_added_by']
                ];

                $model = new Collation_model();
                $result = $model->add_collation($data);

                if ($result > 0)    {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation success! Collation has been created.",
                      'type' => COLOR_SUCCESS
                      
                    );

                    return redirect()->to(base_url() . '/examinations/collations');

                }
                else {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation aborted! We could not complete the request.",
                      'type' => COLOR_ERROR
                      
                    );

                    return redirect()->to(base_url() . '/examinations/collations');

                }
            }
        }
        
        public function view_collation($id) {
            
            if (!is_owner_account()) {
                
                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation not allowed! You are not permitted access.",
                  'type' => COLOR_ERROR
                  
                );
                
                return redirect()->to(base_url());
            }

            $model = new Collation_model();
            $data['assigned_examinations'] = $model->get_with_join_c(
                'examinations_collations_tb',
                'examinations_tb',
                'classes_tb',
                'subjects_tb',
                ['collation_id' => $id, 'item_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']],
                'examinations_collations_tb.examination_id = examinations_tb.exam_id',
                'examinations_tb.class = classes_tb.class_id',
                'examinations_tb.subject = subjects_tb.subject_id'
            )->getResultArray();

            $data['all_assigned_exams'] = $model->get_assigned(['item_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();
            for($i = 1; $i < count($data['all_assigned_exams']); $i++) {
                unset($data['all_assigned_exams'][$i]);
            }

            $data['all_examinations'] = (new Examination_model())->get_exam(['exam_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

            $model = new Examination_model();
            $data['examinations'] = $model->get_with_join(
                'examinations_collations_tb',
                'examinations_tb',
                ['exam_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']],
                'examinations_tb.exam_id = examinations_collations_tb.examination_id'
            )->getResultArray();

            $model = new Collation_model();
            $data['collation'] = $model->get_collation(['collation_id' => $id])->getRowArray();

            $model = new Examination_model();
            $data['assigned_personnel'] = $model->get_with_join(
                'users_to_examinations_tb',
                'users_tb',
                [],
                'users_to_examinations_tb.user_id = users_tb.user_id'
            )->getResultArray();

            $model = new User_model();
            $data['personnel'] = $model->get_user(['user_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

            return view('examinations/view_collation', $data);
        }
        
        public function collation_collab($account_id, $collation_id) {
            
            $model = new Collation_model();
            $data['collation'] = $model->get_collation(['collation_id' => $collation_id])->getRowArray();
            
            if ($data['collation']['collaboration_status'] == 0) {
                
                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation not allowed! You are not permitted access.",
                  'type' => COLOR_ERROR
                  
                );
                
                return redirect()->to(base_url());
            }
            
            $model = new User_model();
            $data['personnel'] = $model->get_user(['user_id' => $account_id])->getRowArray();
            
            $model = new Class_model();
            $data['classes'] = $model->get_class(['classes_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

            $model = new Subject_model();
            $data['subjects'] = $model->get_subject(['subject_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();
            
            // debug_print($data);
            
            return view('examinations/collation_collaboration', $data);
        }

        public function edit_collation() {

            if (isset($_POST['edit_collation'])) {

                $collation_id = $this->request->getPost('collation_id');

                $model = new Collation_model();
                $this_collation = $model->get_collation(['collation_id' => $collation_id])->getRowArray();

                ?>

                <input type="hidden" name="collation_id" value = "<?= $this_collation['collation_id']; ?>">

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Name</label>
                    <input type="text" name="name" class="form-control" value = "<?= $this_collation['collation_name']; ?>">
                    <small>Set a good title for your collation</small>
                </div>

                <div class="form-group">
                    <label class="font-weight-bold mb-2">Description</label>
                    <textarea class="form-control" name="description"><?= $this_collation['description']; ?></textarea>
                    <small>Give your description about the collation.</small>
                </div>

                <?php
            }

            if (isset($_POST['confirm_edit_collation'])) {

                $data = [
                    'collation_name'        =>      $this->request->getPost('name'),
                    'description'           =>      $this->request->getPost('description')
                ];

                $model = new Collation_model();
                $result = $model->update_collation($data, ['collation_id' => $this->request->getPost('collation_id')]);

                if ($result > 0)    {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation success! Update was successful.",
                      'type' => COLOR_SUCCESS
                      
                    );

                    return redirect()->to(base_url() . '/examinations/collations');

                }
                else {
                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation aborted! We could not complete the request.",
                      'type' => COLOR_ERROR
                      
                    );

                    return redirect()->to(base_url() . '/examinations/collations');
                }
            }
        }
        
        public function delete_collation($id) {

            $model = new Collation_model();
            $delete = $model->delete_collation(['collation_id' => $id]);

            if ($delete) {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation success! Collation was deleted from the database.",
                  'type' => COLOR_SUCCESS
                  
                );

                return redirect()->to(base_url() . '/examinations/collations');
            }
            else {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation error! We could not complete the task. Try again.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/examinations/collations');
            }
        }

        public function assign_exams() {

            if (isset($_POST['assign_exams'])) {

                $exams_to_assign = $_POST['exams'];
                $collation_id = $_POST['collation_id'];

                $model = new Collation_model();

                foreach($exams_to_assign as $item) {

                    $data = [
                        'item_id'           =>      code_generator('AS', 10),
                        'examination_id'    =>      $item,
                        'collation_id'      =>      $collation_id,
                        'item_added_by'     =>      $_SESSION['cbt_admin_session']['user']['user_added_by']
                    ];

                    $check_if_exist = $model->get_assigned(['examination_id' => $item, 'collation_id' => $collation_id])->getResultArray();

                    if (!$check_if_exist) {
                        $result = $model->add_assigned($data);
                    }                    

                }

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation success! The selected examinations were assigned to the collation.",
                  'type' => COLOR_SUCCESS
                  
                );
            }
        }

        public function assign_personnel() {

            if (isset($_POST['assign_personnel'])) {

                $personnel_id = $_POST['assign_personnel'];
                $exam_id = $_POST['exam_id'];

                $model = new Examination_model();
                $result = $model->update_exam(
                    ['assigned_to'  =>  $personnel_id],
                    ['exam_id'  =>  $exam_id]
                );

                if ($result) { // success operation
                    echo 1;
                }
                else { // error operation

                    echo 0;
                }
            }
        }

        public function delete_exams_assigned() {

            if (isset($_POST['delete_exams_assigned'])) {

                $selected_exams = json_decode($_POST['selected_exams']);

                $model = new Collation_model();

                $result = false;

                foreach($selected_exams as $item) {

                    $result = $model->delete_assigned(['examination_id' => $item, 'collation_id' => $_POST['collation_id']]);
                }

                if ($result) {
                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation success! The selected examinations were removed from the list.",
                      'type' => COLOR_SUCCESS
                      
                    );
                    echo 1;
                }
                else {
                    echo 0;
                }
            }
        }

        public function export_exam($id) {

            $model = new Examination_model();
            $check_if_assigned_to_user = $model->get_exam(['assigned_to' => $_SESSION['cbt_admin_session']['user']['user_id'], 'exam_id' => $id])->getResultArray();

            $test = is_owner_account() || (count($check_if_assigned_to_user) > 0);

            if (!$test) {
                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation aborted! You do not have sufficient rights to view the requested resource.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url('examinations/'));
            }

            $model = new Examination_model();
            $data['exam_questions'] = $model->get_with_join(
                'questions_examinations_tb',
                'questions_tb',
                ['questions_examinations_tb.exam_id' => $id],
                'questions_tb.question_id = questions_examinations_tb.question_id'
                
            )->getResultArray();

            $model = new Examination_model();
            $data['examination'] = $model->get_with_join_b(
                'examinations_tb',
                'classes_tb',
                'subjects_tb',
                ['examinations_tb.exam_id' => $id],
                'examinations_tb.class = classes_tb.class_id',
                'examinations_tb.subject = subjects_tb.subject_id'
            )->getRowArray();

            if (!$data['examination']) {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation suspended! Invalid ID token.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/examinations/view_examination/' . $id);
            }

            if ($data['examination']['type'] == 1)
                return view('examinations/export_multichoice_exam_to_doc', $data);
            else
                return view('examinations/export_essay_exam_to_doc', $data);
        }
    }

?>