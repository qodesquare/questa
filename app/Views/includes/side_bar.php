<!-- [ Pre-loader ] start -->
<div class="loader-bg">
    <div class="loader-track">
        <div class="loader-fill"></div>
    </div>
</div>
<!-- [ Pre-loader ] End -->
<!-- [ Mobile header ] start -->
<div class="pc-mob-header pc-header">
    <div class="pcm-logo">
        <img src="<?= ASSETS_PATH; ?>images/logo.png" alt="" class="logo logo-lg rounded ml-2" width = "100px">
    </div>
    <div class="pcm-toolbar mr-3">
        <a href="#!" class="pc-head-link" id="mobile-collapse">
            <div class="hamburger hamburger--arrowturn">
                <div class="hamburger-box">
                    <div class="hamburger-inner"></div>
                </div>
            </div>
        </a>
        
        <a href="#!" class="pc-head-link" id="header-collapse">
            <i data-feather="more-vertical"></i>
        </a>
    </div>
</div>
<!-- [ Mobile header ] End -->

<!-- [ navigation menu ] start -->
<nav class="pc-sidebar ">
    <div class="navbar-wrapper">
        <div class="m-header">
            <a href="<?= base_url('dashboard'); ?>" class="b-brand">
                <!-- ========   change your logo hear   ============ -->
                <img src="<?= ASSETS_PATH; ?>images/logo.png" alt="" class="logo rounded logo-lg" width = "100px">
                <img src="<?= ASSETS_PATH; ?>images/logo.png" alt="" class="logo logo-sm" width = "100px">
            </a>
        </div>
        <div class="navbar-content">
            <ul class="pc-navbar">

                <li class="pc-item pc-caption">
                    <label>Quick Start</label>
                </li>
                <li class="pc-item">
                    <a href="<?= base_url('dashboard'); ?>" class="pc-link"><span class="pc-micon"><i class="material-icons-two-tone">home</i></span><span class="pc-mtext">Dashboard</span></a>
                </li>
                <li class="pc-item pc-caption">
                    <label>Navigation</label>
                    <span>System Modules</span>
                </li>

                <li class="pc-item"><a href="<?= base_url('generate_exams'); ?>" class="pc-link"><span class="pc-micon"><i class="material-icons-two-tone">camera_roll</i></span><span class="pc-mtext">Generate Exams</span></a></li>

                <li class="pc-item"><a href="<?= base_url('assigned_examinations'); ?>" class="pc-link"><span class="pc-micon"><i class="material-icons-two-tone">book</i></span><span class="pc-mtext">Assigned Exams</span></a></li>

                <li class="pc-item"><a href="<?= base_url('profile'); ?>" class="pc-link"><span class="pc-micon"><i class="material-icons-two-tone">person</i></span><span class="pc-mtext">Profile</span></a></li>

                <li class="pc-item"><a href="<?= base_url('auth/sign_out'); ?>" class="pc-link"><span class="pc-micon"><i class="material-icons-two-tone">storefront</i></span><span class="pc-mtext">Logout</span></a></li>

            </ul>
        </div>
    </div>
</nav>