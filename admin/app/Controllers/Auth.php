<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\HTTP\CLIRequest;
use CodeIgniter\HTTP\IncomingRequest;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Psr\Log\LoggerInterface;

use App\Models\User_model;

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
    protected $helpers = ['utils'];

    /**
     * Constructor.
     */
    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger)
    {
        // Do Not Edit This Line
        parent::initController($request, $response, $logger);

        // Preload any models, libraries, etc, here.

        $this->session = \Config\Services::session();

    }

    public function index() {

        return redirect()->to(base_url() . '/auth/sign_in/');
    }
    
    public function activate_account($activation_code) {
        
        if (isset($activation_code)) {
            
            $user_model = new User_model();
            $check_user = $user_model->get_user(['activation_code' => $activation_code])->getRowArray();
            
            if ($check_user) {
                
                $update_user = $user_model->update_user(['activation_code' => 0, 'activation_status' => 1], ['user_id' => $check_user['user_id']]);
                
                $_SESSION['cbt_app_notyf'] = array(
                    'msg' => "Operation success! Your account has been activated and you can now sign in to your account.",
                    'type' => COLOR_SUCCESS
                );
                
                return redirect()->to(base_url() . '/auth/sign_in');
            }
            else {
                $_SESSION['cbt_app_notyf'] = array(
                    'msg' => "Operation error! Activation link is broken or invalid.",
                    'type' => COLOR_ERROR
                );
                
                return redirect()->to(base_url() . '/auth/sign_in');
            }
        }
        else {
            
            $_SESSION['cbt_app_notyf'] = array(
                'msg' => "Operation error! Activation link is broken or invalid.",
                'type' => COLOR_ERROR
            );
            
            return redirect()->to(base_url() . '/auth/sign_in');
            
        }
    }

    public function sign_in() {

        if (isset($_POST['sign_in_btn'])) {

            $data = array(

                'email'              =>        $this->request->getPost('username'),
                'password'              =>        $this->request->getPost('password')
            );

            $user_model = new User_model();
            $where = array(
                'email'               =>    $data['email'],
            );

            $check_user = $user_model->get_user($where)->getResultArray();
            $hash_password = false;

            if (isset($check_user[0])) {
                
                if (!$check_user[0]['activation_status']) {
                    
                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation aborted! Sorry, this account has not been validated. Check your email for your validation link.",
                      'type' => COLOR_ERROR
    
                    );
                    
                    return redirect()->to(base_url() . '/auth/sign_in');
                }

                $hash_password = password_verify($data['password'], $check_user[0]['password']);

            }

            if (count($check_user) > 0 && $hash_password == true)  {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Welcome " . $check_user[0]['first_name'] . ". Now, you can access your dashboard.",
                  'type' => COLOR_SUCCESS

                );

                $_SESSION['cbt_admin_session'] = array(

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

                return redirect()->to(base_url() . '/auth/sign_in');

            }
        }

        $data = [];

        return view('sign_in', $data);
    }

    public function sign_out() {

        unset($_SESSION['cbt_admin_session']);

        $_SESSION['cbt_app_notyf'] = array(

          'msg' => "Operation success! Now, you have signed out of the system.",
          'type' => COLOR_INFO

        );

        return redirect()->to(base_url() . '/auth/sign_in');

      }
}
