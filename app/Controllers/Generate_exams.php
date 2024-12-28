<?php

namespace App\Controllers;

use App\Models\Candidate_model;
use App\Models\Examination_model;

class Generate_exams extends BaseController {

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

        $model = new Examination_model();
        $data['generated_exams'] = $model->get_generated_exam(['candidate_id' => $_SESSION['cbt_app_login_session']['user']['candidate_id']])->getResultArray();

        return view('generate_exams', $data);
    }

    public function save_generated_exam() {

        check_login();

        if (isset($_POST['save_generated_exam'])) {

            $data = [
                'gen_exam_id'                   =>      code_generator('GE', 12),
                'title'                         =>      $this->request->getPost('title'),
                'type'                          =>      $this->request->getPost('type'),
                'questions'                     =>      $this->request->getPost('save_generated_exam'),
                'subject'                       =>      $this->request->getPost('subject'),
                'candidate_id'                  =>      $_SESSION['cbt_app_login_session']['user']['candidate_id']
            ];

            $model = new Examination_model();
            $add = $model->add_generated_exam($data);

            if ($add) {

                $questions = json_decode($_POST['save_generated_exam']);

            ?>

                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="home-tab" data-toggle="tab" data-target="#start_tab" type="button">Preamble</button>
                    </li>
                    <?php foreach($questions as $k => $ques):
                        if ($ques->answer == '')
                            continue;
                    ?>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link questions_tab_link" id="ques_<?= $ques->id; ?>_tab" data-toggle="tab" data-target="#ques_id_<?= $ques->id; ?>" type="button" disabled>Q<?= ($k + 1); ?></button>
                    </li>
                    <?php endforeach; ?>
                    <li class="nav-item d-none" role="presentation" id = "result_tab_link">
                        <button class="nav-link" data-toggle="tab" data-target="#result_tab" type="button">Result</button>
                    </li>
                </ul>
                <div class="tab-content p-3" id="myTabContent">
                    <div class="text-center mt-4 tab-pane fade show active" id="start_tab" role="tabpanel">
                        <h3><?= $data['title']; ?></h3>
                        <div class="text-uppercase">
                            <span><?= $data['subject']; ?></span>
                        </div>
                        <div class="small">
                            <i>Click the Start button to start the examination.</i>
                        </div>

                        <div class="mt-4">
                            <button onclick="start_exam(this, '#ques_<?= $questions[0]->id; ?>_tab');" class="btn btn-success">Start Exam</button>
                        </div>
                    </div>

                    <?php foreach($questions as $k => $ques):
                        if ($ques->answer == '')
                            continue;
                    ?>
                    <div class="tab-pane questions_card fade" id="ques_id_<?= $ques->id; ?>" role="tabpanel">
                        
                        <div class="row">
                            <div class="col-sm-12 col-md-5">
                                <div><img src="<?= $ques->image; ?>"></div>
                                <?= $ques->question; ?>
                            </div>
                            <div class="col-sm-12 col-md-7">

                                <input class = "answer" type="hidden" value = "<?= $ques->answer; ?>" name="">

                                <div class="row mt-4 parent_for_options" data-parent = "ques_id_<?= $ques->id; ?>">
                                    <div class="col-12 mb-3">
                                        <div class = "d-flex options_panel question_options border p-3" onclick="select_option(this)" data-select = "a">
                                            <span class="mr-2">A. </span>
                                            <span><?= $ques->option->a; ?></span>
                                        </div>
                                    </div>

                                    <div class="col-12 mb-3">
                                        <div class = "d-flex options_panel question_options border p-3" onclick="select_option(this)" data-select = "b">
                                            <span class="mr-2">B. </span>
                                            <span><?= $ques->option->b; ?></span>
                                        </div>
                                    </div>

                                    <div class="col-12 mb-3">
                                        <div class = "d-flex options_panel question_options border p-3" onclick="select_option(this)" data-select = "c">
                                            <span class="mr-2">C. </span>
                                            <span><?= $ques->option->c; ?></span>
                                        </div>
                                    </div>

                                    <div class="col-12 mb-3">
                                        <div class = "d-flex options_panel question_options border p-3" onclick="select_option(this)" data-select = "d">
                                            <span class="mr-2">D. </span>
                                            <span><?= $ques->option->d; ?></span>
                                        </div>
                                    </div>

                                    <div class="col-12 mb-3 d-none">
                                        <div class = "d-flex options_panel question_options border p-3" onclick="select_option(this)" data-select = "e">
                                            <span class="mr-2">E. </span>
                                            <span><?= $ques->option->e; ?></span>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>

                    </div>
                    <?php endforeach; ?>

                    <div class="text-center mt-4 tab-pane fade" id="result_tab" role="tabpanel">
                        <p class="font-weight-bold">You scored:</p>
                        <div class="d-flex justify-content-center align-items-center">
                            <h1 class="d-flex justify-content-center align-items-center shadow-sm" id = "score_result"></h1>
                        </div>
                        <p class="mt-3 text-muted font-italic">out of <span id="no_of_questions"></span> Questions</p>
                    </div>
                </div>

            <?php }
            else {
                echo 0;
            }
        }
    }
}

?>