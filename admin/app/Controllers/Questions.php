<?php

    namespace App\Controllers;

    use App\Models\Question_model;
    use App\Models\Examination_model;

    class Questions extends BaseController {

        public function index() {

            return view('classes/list_of_classes');
        }

        public function push_question() {

            $questions = json_decode($this->request->getPost('questions'));
            
            $questions_ordering = ($this->request->getPost('questions_ordering'));
            
            $data = [
                'questions_ordering'    =>  $questions_ordering
            ];
            
            $model = new Examination_model();
            $result = $model->update_exam($data, ['exam_id' => $this->request->getPost('examination_id')]);

            foreach($questions as $k => $item) {

                $this->add_questions($item, $this->request->getPost('examination_id'));
            }

        }

        public function add_questions($question, $examination) {

            $model = new Examination_model();
            $delete_questions_for_exam = $model->delete_item(['question_id' => $question->question_id]);

            $image_for_question = (explode('/', $question->image));

            if (isset($_POST['essay_type'])) {
                $hints = $question->hints;
                $info_answer = $question->info_answer;
            }
            else {
                $hints = 'null';
                $info_answer = 'null';
            }

            $data = [
                'question_id'           =>          $question->question_id,
                'question_title'        =>          $question->title,
                'option_a'              =>          $question->option_a,
                'option_b'              =>          $question->option_b,
                'option_c'              =>          $question->option_c,
                'option_d'              =>          $question->option_d,
                'answer'                =>          $question->question_answer,
                'points'                =>          $question->question_points,
                'image'                 =>          $image_for_question[count($image_for_question) - 1],
                'question_added_by'     =>          $_SESSION['cbt_admin_session']['user']['user_added_by'],
                'hints'                 =>          $hints,
                'info_answer'           =>          $info_answer
            ];

            $model = new Question_model();
            $question_check = $model->get_question(['question_id' => $data['question_id']])->getRowArray();

            if (is_array($question_check)) {
                $result = $model->update_question($data, ['question_id' => $data['question_id']]);
            }
            else {
                $data['points'] = 1;
                $result = $model->add_question($data);
            }

            if ($result) {

                $model = new Question_model();
                $check_ques = $model->get_question(['question_id' => $data['question_id']])->getRowArray();

                if (!(is_array($check_ques) && count($check_ques) > 0)) {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation success! Some questions are duplicates. Only unique questions saved",
                      'type' => COLOR_WARNING
                      
                    );

                    echo 0;
                }

                $data = [
                    'entry_id'          =>          code_generator('ENT', 10),
                    'exam_id'           =>          $examination,
                    'question_id'       =>          $data['question_id']
                ];

                $model = new Examination_model();
                $result = $model->add_item($data);

                if ($result) {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation success! Questions successfully added to the database.",
                      'type' => COLOR_SUCCESS
                      
                    );
                    echo 1;
                }
                else {
                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation suspended! Could not complete task.",
                      'type' => COLOR_SUCCESS
                      
                    );
                    echo 0;
                }
            }
            else {
                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation suspended! Could not complete task.",
                  'type' => COLOR_SUCCESS
                  
                );
                echo 0;
            }
        }

        public function delete_question() {

            $question_id = $_POST['question_id'];

            $model = new Examination_model();
            $delete = $model->delete_item(['question_id' => $question_id]);

            if ($delete) {
                echo 1;
            }
            else {
                echo 0;
            }
        }
        
        public function delete_question_image() {
            
            if (isset($_POST['delete_question_image'])) {
                
                $question_id = $this->request->getPost('question_id');
                
                $model = new Question_model();
                $the_question = $model->get_question(['question_id' => $question_id])->getRowArray();
                
                $question_image = $the_question['image']; // get the image filepath
                
                if ($question_image != 'image_question.png') {
                    unlink('uploads/questions/' . $question_image); // Delete the actual image from disk    
                }
                
                $update = $model->update_question(['image' => 'image_question.png'], ['question_id' => $question_id]);
            }
        }

        public function set_answer() {

            $data = [
                'answer'        =>          $_POST['option']
            ];

            $model = new Question_model();
            $result = $model->update_question($data, ['question_id' => $_POST['question_id']]);

            echo $result;
        }

        public function set_points() {

            $data = [
                'points'        =>          $_POST['points']
            ];

            $model = new Question_model();
            $result = $model->update_question($data, ['question_id' => $_POST['question_id']]);

            echo $result;
        }
    }

?>