<?php

namespace App\Controllers;

use App\Models\Candidate_model;

class Dashboard extends BaseController {

    public function index() {

        check_login();

        $data = [];

        return view('dashboard', $data);
    }
}

?>