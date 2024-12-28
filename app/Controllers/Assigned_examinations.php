<?php

namespace App\Controllers;

use App\Models\Candidate_model;

class Assigned_examinations extends BaseController {

    public function index() {

        check_login();

        $user_model = new Candidate_model();
        $data['assigned_exams'] = $user_model->get_with_join_c(
            'examinations_candidates_tb',
            'examinations_tb',
            'classes_tb',
            'subjects_tb',
            ['candidate_id' => $_SESSION['cbt_app_login_session']['user']['candidate_id']],
            'examinations_candidates_tb.examination_id = examinations_tb.exam_id',
            'examinations_tb.class = classes_tb.class_id',
            'examinations_tb.subject = subjects_tb.subject_id'
        )->getResultArray();

        return view('assigned_exams', $data);
    }
}

?>