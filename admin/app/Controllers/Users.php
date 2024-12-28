<?php

namespace App\Controllers;

use App\Models\User_model;
use App\Models\Examination_model;
use App\Models\Subject_model;

class Users extends BaseController {

    public function index() {
        
        $mail = send_email("Hello to you!", 'jolawale28@gmail.com', 'Welcome to Questa!');

        $model = new User_model();
        $data['users'] = $model->get_user(['user_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

        return view('users/list_of_users', $data);
    }

    public function add_user() {

        if (isset($_POST['add_user_btn'])) {

            $model = new User_model();
            $check_user_exists = $model->get_user(['user_id' => $this->request->getPost('email')])->getRowArray();

            if (isset($check_user_exists)) {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation aborted! Email is already in use.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/users');
            }
            
            $password = code_generator('', 5);
            $activation_code = code_generator('', 10);

            $data = [
                'user_id'               =>          code_generator('USR', 10),
                'first_name'            =>          $this->request->getPost('first_name'),
                'last_name'             =>          $this->request->getPost('last_name'),
                'email'                 =>          $this->request->getPost('email'),
                'password'              =>          password_hash($password, PASSWORD_DEFAULT),
                'user_added_by'         =>          $_SESSION['cbt_admin_session']['user']['user_added_by'],
                'activation_code'       =>          $activation_code,
                'group_id'              =>          ''
            ];

            $model = new User_model();
            $result = $model->add_user($data);

            if ($result) {
                
                $data['password'] = $password;
                $data['user_name'] = $data['first_name'] . " " . $data['last_name'];
                $data['email'] = $data['email'];
        
                $body = view('email_templates/welcome_collaborator.php', $data);
              	$mail = send_email($body, $data['email'], 'Welcome to Questa!');

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation success! User was successfully added to the database. Password for new user is '${password}'.",
                  'type' => COLOR_SUCCESS
                  
                );

                return redirect()->to(base_url() . '/users');

            }
            else {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation error! Something went wrong.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/users');

            }
        }
    }

    public function fetch_user() {

        if (isset($_POST['user_id'])) {

            $model = new User_model();
            $user = $model->get_user(['user_id' => $_POST['user_id']])->getRowArray();

            ?>

            <input type="hidden" name="user_id" value="<?= $user['user_id']; ?>">

            <div class="form-group">
                <label class="font-weight-bold mb-2">First Name</label>
                <input type="text" name="first_name" class="form-control" value = "<?= $user['first_name']; ?>">
            </div>

            <div class="form-group">
                <label class="font-weight-bold mb-2">Last Name</label>
                <input type="text" name="last_name" class="form-control" value = "<?= $user['last_name']; ?>">
            </div>

            <div class="form-group">
                <label class="font-weight-bold mb-2">Email</label>
                <input type="email" name="email" class="form-control" value = "<?= $user['email']; ?>">
            </div>

            <?php
        }
    }

    public function edit_user() {

        if (isset($_POST['edit_user_btn'])) {

            $data = [
                'first_name'            =>          $this->request->getPost('first_name'),
                'last_name'             =>          $this->request->getPost('last_name'),
                'email'                 =>          $this->request->getPost('email'),
                'group_id'              =>          ''
            ];

            $model = new User_model();
            $result = $model->update_user($data, ['user_id' => $_POST['user_id']]);

            if ($result) {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation success! User was successfully edited.",
                  'type' => COLOR_SUCCESS
                  
                );

                return redirect()->to(base_url() . '/users');

            }
            else {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation error! We could not complete the task.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/users');

            }
        }
    }

    public function delete_user($id) {

        if ($id == $_SESSION['cbt_admin_session']['user']['user_id']) {

            $_SESSION['cbt_app_notyf'] = array(

              'msg' => "Operation suspended! You can't delete your own account.",
              'type' => COLOR_ERROR
              
            );

            return redirect()->to(base_url() . '/users');
        }

        $model = new User_model();

        $check_user = $model->get_user();

        if (!(is_array($check_user) && count($check_user) > 0)) {

            $_SESSION['cbt_app_notyf'] = array(

              'msg' => "Operation suspended! There has to remain one user.",
              'type' => COLOR_ERROR
              
            );

            return redirect()->to(base_url() . '/users');
        }
        $delete = $model->delete_user(['user_id' => $id]);

        if ($delete) {

            $_SESSION['cbt_app_notyf'] = array(

              'msg' => "Operation success! User was deleted from the database.",
              'type' => COLOR_SUCCESS
              
            );

            return redirect()->to(base_url() . '/users');
        }
        else {

            $_SESSION['cbt_app_notyf'] = array(

              'msg' => "Operation error! We could not complete the task. Try again.",
              'type' => COLOR_ERROR
              
            );

            return redirect()->to(base_url() . '/users');
        }
    }

    public function profile($id) {

        $model = new User_model();
        $data['user'] = $model->get_user(['user_id' => $id])->getRowArray();

        // $model = new Examination_model();
        // $data['examinations'] = $model->get_with_join_b(
        //     'examinations_tb',
        //     'classes_tb',
        //     'subjects_tb',
        //     ['assigned_to' => $_SESSION['cbt_admin_session']['user']['user_id'], 'exam_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']],
        //     'examinations_tb.class = classes_tb.class_id',
        //     'examinations_tb.subject = subjects_tb.subject_id'
        // )->getResultArray();
        
        $model = new Examination_model();
        $model = new Examination_model();
        $data['examinations'] = $model->get_with_join_b(
            'examinations_tb',
            'classes_tb',
            'subjects_tb',
            ['assigned_to' => $id, 'exam_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']],
            'examinations_tb.class = classes_tb.class_id',
            'examinations_tb.subject = subjects_tb.subject_id'
        )->getResultArray();

        $model = new Subject_model();
        $data['subjects'] = $model->get_subject(['subject_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

        return view('users/profile', $data);
    }

    public function change_password() {

        if (isset($_POST['change_password_btn'])) {

            $model = new User_model();
            $user = $model->get_user(['user_id' => $_POST['user_id']])->getRowArray();

            $o_password = $this->request->getPost('o_password');
            $c_password = $this->request->getPost('c_password');
            $n_password = $this->request->getPost('n_password');

            if (is_array($user)) {

                if (password_verify($o_password, $user['password']) && ($c_password == $n_password)) {

                    $data = [
                        'password'          =>          password_hash($this->request->getPost('n_password'), PASSWORD_DEFAULT)
                    ];

                    $result = $model->update_user($data, ['user_id' => $_POST['user_id']]);

                    if ($result) {

                        if ($_SESSION['cbt_admin_session']['user']['user_id'] == $_POST['user_id']) {

                            $fetch_user = $model->get_user(['user_id' => $_POST['user_id']])->getRowArray();

                            $_SESSION['cbt_admin_session'] = array(
                              'user' => $fetch_user
                            );

                            // debug_print($_SESSION['cbt_admin_session']);
                        }

                        $_SESSION['cbt_app_notyf'] = array(

                          'msg' => "Operation success! Your password has been changed.",
                          'type' => COLOR_SUCCESS
                          
                        );

                        return redirect()->to(base_url() . '/users/profile/' . $_POST['user_id']);
                    }
                }
                else {

                    $_SESSION['cbt_app_notyf'] = array(

                      'msg' => "Operation error! Password mismatch. Try again.",
                      'type' => COLOR_ERROR
                      
                    );

                    return redirect()->to(base_url() . '/users/profile/' . $_POST['user_id']);
                    
                }

            }
            else {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation error! Unrecognised user. We could not identify the user ID.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/users');

            }

        }
    }

    public function reset_account() {

        if (isset($_POST['reset_account_btn'])) {

            $new_password = $this->request->getPost('new_password');

            $data = [
                'password'          =>      password_hash($new_password, PASSWORD_DEFAULT)
            ];

            $model = new User_model();
            $result = $model->update_user($data, ['user_id' => $this->request->getPost('user_id')]);

            if ($result) {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation success! Account has been reset.",
                  'type' => COLOR_SUCCESS
                  
                );

                return redirect()->to(base_url() . '/users/profile/' . $_POST['user_id']);
            }
            else {

                $_SESSION['cbt_app_notyf'] = array(

                  'msg' => "Operation error! We could not complete the request.",
                  'type' => COLOR_ERROR
                  
                );

                return redirect()->to(base_url() . '/users/profile/' . $_POST['user_id']);
            }
        }
    }
    
}

?>