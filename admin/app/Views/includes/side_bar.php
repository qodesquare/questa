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
        <a href="#!" class="pc-head-link" id="mobile-collapse" onclick = "show_sidebar();">
            <div class="hamburger hamburger--arrowturn">
                <div class="hamburger-box">
                    <div class="hamburger-inner"></div>
                </div>
            </div>
        </a>
        
        <a href = "#!" class = "pc-head-link" id = "header-collapse">
            <i data-feather="more-vertical"></i>
        </a>
    </div>
</div>
<!-- [ Mobile header ] End -->

<!-- [ navigation menu ] start -->
<nav class="pc-sidebar" id = "pc-sidebar">
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
                    <span>Summary</span>
                </li>
                <li class="pc-item">
                    <a href="<?= base_url('dashboard'); ?>" class="pc-link"><span style = "width: 20px" class="pc-micon"><i class="fas fa-home"></i></span><span class="pc-mtext">Dashboard</span></a>
                </li>
                <li class="pc-item pc-caption">
                    <label>Navigation</label>
                    <span>System Modules</span>
                </li>
                
                <?php if (!is_owner_account()): ?>
                <li class="pc-item">
                    <a href="<?= base_url('examinations/my_list'); ?>" class="pc-link"><span style = "width: 20px" class="pc-micon"><i class="fas fa-copy"></i></span><span class="pc-mtext">Examinations</span></a>
                </li>
                <?php endif; ?>

                <?php if (is_owner_account()): ?>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link "><span style = "width: 20px" class="pc-micon text-right"><i class="fas fa-copy"></i></span><span class="pc-mtext">Examinations</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="<?= base_url('examinations/add_examination'); ?>">Add</a></li>
                        <li class="pc-item"><a class="pc-link" href="<?= base_url('examinations'); ?>">List</a></li>
                        
                    </ul>
                </li>
                <?php endif; ?>
        
                <li class="pc-item">
                    <a href="<?= base_url('examinations/collations'); ?>" class="pc-link"><span style = "width: 20px" class="pc-micon"><i class="fas fa-th-list"></i></span><span class="pc-mtext">Collations</span></a>
                </li>

                <!-- Only Elevated Accounts can see this -->
                
                <?php if (is_owner_account()): ?>
                <li class="pc-item"><a href="<?= base_url('candidates'); ?>" class="pc-link"><span style = "width: 20px" class="pc-micon text-center"><i class="fas fa-user-tie"></i></span><span class="pc-mtext">Candidates</span></a></li>

                <?php if (is_owner_account()): ?>
                <li class="pc-item"><a href="<?= base_url('users'); ?>" class="pc-link"><span style="width: 20px" class="pc-micon"><i class="fas fa-user-shield"></i></span><span class="pc-mtext">Users</span></a></li>
                <?php endif; ?>

                <li class="pc-item"><a href="<?= base_url('subjects'); ?>" class="pc-link"><span style = "width: 20px" class="pc-micon"><i class="fas fa-book"></i></span><span class="pc-mtext">Subjects</span></a></li>

                <li class="pc-item"><a href="<?= base_url('classes'); ?>" class="pc-link"><span style = "width: 20px" class="pc-micon"><i class="fas fa-graduation-cap"></i></span><span class="pc-mtext">Classes</span></a></li>
                <?php endif; ?>

                <!-- Only Elevated Accounts can see this -->
                
                <?php if (!is_owner_account()): ?>
                <li class="pc-item"><a href="<?= base_url('auth/sign_out'); ?>" class="pc-link">
                    <span style = "width: 20px" class="pc-micon">
                        <i style="transform: rotate(180deg); margin-top: -8px" class="fas fa-sign-out-alt"></i>
                    </span>
                    <span class="pc-mtext">Logout</span></a>
                </li>
                <?php endif; ?>

            </ul>
        </div>
    </div>
</nav>