<?php

    namespace App\Controllers;
    use App\Models\Subject_model;

    class Test_controller extends BaseController {

        public function index() {
            
            $body = view('email_templates/candidate_result_multichoice.php', []);
        
          	$mail = send_email($body, 'jolawale28@gmail.com', 'Welcome to Questa!');
          	
          	// debug_print($mail);

            $data = [];

            return view('email_templates/candidate_result_multichoice', $data);
        }
        
        public function test_delete() {
            
            unlink('uploads/test.txt');
        }
    }
?>