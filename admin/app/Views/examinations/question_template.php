<div class="card shadow-0 border question_card mb-4" id = "question_<?= ($k + 1); ?>" style="box-shadow: 0px 0px 0px 0px transparent;">
    <div class="card-body shadow-0">
        
        <div class="row">
            <div class="col-12 mb-3 d-flex justify-content-between align-items-center">
                <h5>Question <?= ($k + 1); ?></h5>
                <button onclick="delete_question('#question_<?= ($k + 1); ?>');" class="btn btn-danger btn-sm delete_question_btn" style = "opacity: 0;"><i class="fas fa-trash-alt"></i></button>
            </div>
        
            <div class="col-3">
                <div class="border rounded">
                    <div style = "height: 100px; overflow: hidden; position: relative;">
                        
                        <img src="<?= UPLOAD_PATH . 'questions/image_question.png'; ?>" class = 'img-fluid rounded-top border-bottom'>
                    </div>
                    <button onclick="$(this).next().click()" class="btn btn-outline-secondary btn-sm w-100 border-0 rounded-bottom"><small>Select Image</small></button>
                    <input onchange="set_image($(this));" type="file" name="file" class="w-100 d-none" accept=".jpg, .png, .jpeg">
                </div>
            </div>
            <div class="col-9 d-flex align-items-start">
                <span class="p-2 border h-100 w-100 rounded question_title" contenteditable = "true"><?= $item['question_title']; ?></span>
            </div> 
            
        </div>

        <div class="row mt-3">
            <div class="col-sm-12 col-md-6 mb-3">
                <div class="border p-2 rounded question_options">
                    <span class="mr-2 font-weight-bold">A. </span>
                    <span contenteditable = "true" class = "ques_option"><?= $item['option_a']; ?></span>
                </div>
            </div>

            <div class="col-sm-12 col-md-6 mb-3">
                <div class="border p-2 rounded question_options">
                    <span class="mr-2 font-weight-bold">B. </span>
                    <span contenteditable = "true" class = "ques_option"><?= $item['option_b']; ?></span>
                </div>
            </div>

            <div class="col-sm-12 col-md-6">
                <div class="border p-2 rounded question_options">
                    <span class="mr-2 font-weight-bold">C. </span>
                    <span contenteditable = "true" class = "ques_option"><?= $item['option_c']; ?></span>
                </div>
            </div>

            <div class="col-sm-12 col-md-6">
                <div class="border p-2 rounded question_options">
                    <span class="mr-2 font-weight-bold">D. </span>
                    <span contenteditable = "true" class = "ques_option"><?= $item['option_d']; ?></span>
                </div>
            </div>
            
        </div>

    </div>

</div>

<div class="card shadow-0 border question_card mb-4" id = "question_WWIQXYVKUQYR">
    <div class="card-body shadow-0">
        
        <div class="row">
            <div class="col-12 mb-3 d-flex justify-content-between align-items-center">
                <h5>Question 2</h5>
                <button onclick="delete_question('question_WWIQXYVKUQYR');" class="btn btn-danger btn-sm delete_question_btn" style = "opacity: 0;"><i class="fas fa-trash-alt"></i></button>
            </div>
        
            <div class="col-md-12 col-lg-3 col-sm-12 mb-3">
                <div class="border rounded">
                    <div style = "height: 100px; overflow: hidden; position: relative;">
                        <img data-toggle = "tooltip" title = "Click image to enlarge" style = "cursor: pointer" onclick="view_image(this);" src="http://localhost/cbt_app_server/admin/uploads/questions/image_queston.png" class = 'img-fluid rounded-top border-bottom ques_image w-100'>
                    </div>
                    <button onclick="$(this).next().click()" class="btn btn-outline-secondary btn-sm w-100 border-0 rounded-bottom"><small>Select Image</small></button>
                    <input onchange="set_image($(this));" type="file" name="file" class="w-100 d-none" accept=".jpg, .png, .jpeg">
                </div>
            </div>
            <div class="col-md-12 col-lg-9 col-sm-12 d-flex align-items-start mb-3">
                <div class="p-2 border h-100 w-100 rounded question_title ck_editable" id = "question_title_WWIQXYVKUQYR" contenteditable = "true"></div>
            </div> 
            
        </div>

        <div class="row">

            <div class="col-sm-12 col-md-12 mb-3">
                <div class="border p-2 rounded question_options d-flex flex-column">
                    <div class="d-inline-block small text-muted" onclick="$('#question_hint_WWIQXYVKUQYR').focus();">Hints: Show candidates some extra information they might need</div>
                    <div id = "question_hint_WWIQXYVKUQYR" contenteditable = "true" class = "d-inline-block w-100"></div>
                </div>
            </div>

            <div class="col-sm-12 col-md-12">
                <div class="border p-2 rounded question_options d-flex flex-column">
                    <div class="d-inline-block small text-muted" onclick="$('#ck_editable_answer1').focus();">Comment: This can be used as answer</div>
                    <div id = "question_comment_WWIQXYVKUQYR" contenteditable = "true" class = "d-inline-block w-100"></div>
                </div>
            </div>
            
        </div>

    </div>

</div>