<?php

namespace App\Controllers;
use App\Models\Examination_model;
use App\Models\Candidate_model;
use App\Models\Class_model;
use App\Models\Subject_model;

class Dashboard extends BaseController {

    public function index() {

        $model = new Examination_model();
        $data['examinations'] = $model->get_with_join_b(
            'examinations_tb',
            'classes_tb',
            'subjects_tb',
            ['assigned_to' => $_SESSION['cbt_admin_session']['user']['user_id'], 'exam_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']],
            'examinations_tb.class = classes_tb.class_id',
            'examinations_tb.subject = subjects_tb.subject_id'
        )->getResultArray();

        $model = new Candidate_model();
        $data['candidates'] = $model->get_candidate(['candidate_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

        $model = new Subject_model();
        $data['subjects'] = $model->get_subject(['subject_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

        $model = new Class_model();
        $data['classes'] = $model->get_class(['classes_added_by' => $_SESSION['cbt_admin_session']['user']['user_added_by']])->getResultArray();

        return view('dashboard', $data);
    }
}

?>