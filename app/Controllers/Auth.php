<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\HTTP\CLIRequest;
use CodeIgniter\HTTP\IncomingRequest;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Psr\Log\LoggerInterface;

use App\Models\User_model;
use App\Models\Examination_model;
use App\Models\Candidate_model;

class Auth extends Controller
{
    /**
     * Instance of the main Request object.
     *
     * @var CLIRequest|IncomingRequest
     */
    protected $request;

    /**
     * An array of helpers to be loaded automatically upon
     * class instantiation. These helpers will be available
     * to all other controllers that extend BaseController.
     *
     * @var array
     */
    protected $helpers = ['utils', 'email_templates'];

    /**
     * Constructor.
     */
    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger) {
        // Do Not Edit This Line
        parent::initController($request, $response, $logger);

        // Preload any models, libraries, etc, here.

        $this->session = \Config\Services::session();

    }

    public function index() {
        
    //     $data['user'] = [
    //         'name' => 'Joseph Olawale'
    //     ];
        
    //     $body = view('welcome_email_template.php', $data);

    //   	$mail = send_email($body, 'jolawale28@gmail.com', 'Welcome to Questa!');
      	
    //   	return view('welcome_email_template.php', $data);

        return redirect()->to(base_url() . '/auth/login/');
    }

    public function login() {

        if (isset($_POST['candidate_login'])) {

            $data = array(

                'email'                 =>        $this->request->getPost('email'),
                'password'              =>        $this->request->getPost('password')
            );

            $user_model = new Candidate_model();
            $where = array(
                'email'               =>    $data['email'],
            );

            $check_user = $user_model->get_candidate($where)->getResultArray();
            $hash_password = false;

            if (isset($check_user[0])) {

                $hash_password = password_verify($data['password'], $check_user[0]['password']);

            }

            if (count($check_user) > 0 && $hash_password == true)  {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Welcome " . $check_user[0]['first_name'] . ". Now, you can access your dashboard.",
                  'type' => COLOR_SUCCESS
                  
                );

                $_SESSION['cbt_app_login_session'] = array(

                  'logged_in' => TRUE,
                  'user' => $check_user[0]
                );
                
                return redirect()->to(base_url() . '/dashboard');
            }
            else {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => 'Sorry. User ID or Password not recognised. Please try again.',
                  'type' => COLOR_ERROR
                  
                );

                $_SESSION['cbt_app_login_session']['logged_in'] = false;

                return redirect()->to(base_url() . '/auth/login');

            }
        }

        $data = [];

        return view('login', $data);
    }

    public function check_in() {

        if (isset($_POST['candidate_check_in'])) {

            $check_result = [
                'exam_exists'               =>      false,
                'candidate_exists'          =>      false,
                'access_token_correct'      =>      false
            ];

            $data = array(

                'exam_id'                 =>        $this->request->getPost('exam_code')
            );

            $model = new Examination_model();
            $check_exam = $model->get_exam(['exam_id' => $data['exam_id']])->getRowArray();

            $exam_exists = false;

            if (isset($check_exam)) {

                if (count($check_exam) > 0) {
                    $check_result['exam_exists'] = true;
                }
                else {
                    $check_result['exam_exists'] = false;
                }

            }

            $data = [
                'candidate_id'          =>          $this->request->getPost('candidate_check_in')
            ];

            $model = new Examination_model();
            $check_candidate_for_exam = $model->get_candidates(['candidate_id' => $this->request->getPost('candidate_check_in')])->getRowArray();

            $model = new Candidate_model();
            $check_candidate = $model->get_candidate(['candidate_id' => $this->request->getPost('candidate_check_in')])->getRowArray();

            if (isset($check_candidate_for_exam) && isset($check_candidate)) {

                $_SESSION['cbt_app_session'] = array(

                    'logged_in' => TRUE,
                    'user' => $check_candidate
                );

                $check_result['candidate_exists'] = true;

            }
            else {

                $check_result['candidate_exists'] = false;
            }

            $data = [
                'candidate_id'      =>      $_POST['candidate_check_in'],
                'examination_id' => $_POST['exam_code']
            ];

            if (!isset($_POST['access_token']))
                $data['access_token'] = '';
            else
                $data['access_token'] = $_POST['access_token'];

            $model = new Examination_model();
            $exam_registration = $model->get_candidates($data)->getRowArray();

            if ($exam_registration) {
                $check_result['access_token_correct'] = true;
            }

            return json_encode($check_result);

        }
    }

    public function access_token($exam_id = '', $candidate_id = '') {
        
        $model = new Examination_model();
        $check_assign = $model->get_candidates(['examination_id' => $exam_id, 'candidate_id' => $candidate_id])->getRowArray();

        if (!$check_assign) {

            $_SESSION['cbt_app_notyf'] = array(

              'msg' => "Operation error! You don't have permission to access the path.",
              'type' => COLOR_ERROR
              
            );

            return redirect()->to(base_url() . '/auth/sign_in');
        }

        $model = new Examination_model();
        $data['examination'] = $model->get_exam(['exam_id' => $exam_id])->getRowArray();

        $model = new Candidate_model();
        $data['candidate'] = $model->get_candidate(['candidate_id' =>   $candidate_id])->getRowArray();

        $data['exam_id'] = $exam_id;
        $data['candidate_id'] = $candidate_id;

        if (!isset($data['examination']) || !isset($data['candidate'])) {

            $_SESSION['cbt_app_notyf'] = array(

              'msg' => "Operation error! The link is broken or invalid. Please request for a new one.",
              'type' => COLOR_ERROR
              
            );

            return redirect()->to(base_url() . '/auth/sign_in');
        }

        return view('sign_in_access_token', $data);
    }

    public function sign_in($exam_id = null, $candidate_id = null) {
        
        if (isset($_SESSION['cbt_app_session'])) {
            unset($_SESSION['cbt_app_session']);
        }

        if (isset($_POST['sign_in_btn'])) {

            $data = array(

                'email'                 =>        $this->request->getPost('username'),
                'password'              =>        $this->request->getPost('password')
            );

            $user_model = new User_model();
            $where = array(
                'email'               =>    $data['email'],
            );

            $check_user = $user_model->get_user($where)->getResultArray();
            $hash_password = false;

            if (isset($check_user[0])) {

                $hash_password = password_verify($data['password'], $check_user[0]['password']);

            }

            if (count($check_user) > 0 && $hash_password == true)  {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Welcome " . $check_user[0]['first_name'] . ". Now, you can access your dashboard.",
                  'type' => COLOR_SUCCESS
                  
                );

                $_SESSION['cbt_app_session'] = array(

                  'logged_in' => TRUE,
                  'user' => $check_user[0]
                );
    
                // In case logged in, go to Sign In Page
                // return redirect()->to(base_url() . '/auth/sign_in');
                
                return redirect()->to(base_url() . '/dashboard');
            }
            else {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => 'Sorry. User ID or Password not recognised. Please try again.',
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/auth/sign_in');

            }
        }

        $data = [
            'exam_id'               =>      $exam_id,
            'candidate_id'          =>      $candidate_id
        ];

        return view('sign_in', $data);
    }

    public function sign_out() {

        unset($_SESSION['cbt_app_session']);
        unset($_SESSION['cbt_app_login_session']);

        $_SESSION['cbt_app_notyf'] = array(

            // 'msg' => "Thank you! Your examination attempt has been recorded.",
            // 'type' => COLOR_INFO

            'msg' => "You have been signed out of the system.",
            'type' => COLOR_INFO
          
        );

        return redirect()->to(base_url() . '/auth/login');

      }
}
