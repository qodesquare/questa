<header class="pc-header ">
    <div class="header-wrapper">
        <div class="mr-auto pc-mob-drp">
            <div class = "d-flex justify-content-center h-100 align-items-center">
                <button id = "toggle_panel_btn" onclick = "maximise_panel();" class = "btn btn-light btn-sm">
                    <i class = "fas fa-arrow-left"></i>
                </button>
                <img src="<?= ASSETS_PATH; ?>images/logo.png" alt="" id = "top_bar_logo" class="logo logo-lg rounded ml-5 d-none" width = "80px">
            </div>
        </div>
        <div class="ml-auto">
            <ul class="list-unstyled">
                <li class="dropdown pc-h-item">
                    <a class="pc-head-link dropdown-toggle arrow-none mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                        <i class="material-icons-two-tone">search</i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right pc-h-dropdown drp-search">
                        <form class="px-3">
                            <div class="form-group mb-0 d-flex align-items-center">
                                <i data-feather="search"></i>
                                <input type="search" class="form-control border-0 shadow-none" placeholder="Search here. . .">
                            </div>
                        </form>
                    </div>
                </li>
                <li class="dropdown pc-h-item">
                    <a class="pc-head-link dropdown-toggle arrow-none mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                        <img src="<?= ASSETS_PATH; ?>images/user.png" alt="user-image" class="user-avtar">
                        <span>
                            <span class="user-name"><?= $_SESSION['cbt_admin_session']['user']['first_name'] . " " . $_SESSION['cbt_admin_session']['user']['last_name']; ?></span>
                            <span class="user-desc">
                                
                                <?php
                                    if (is_owner_account()) {
                                        echo 'Account Owner';
                                    }
                                    else {
                                        echo 'Collaborator';
                                    }
                                ?>
                            </span>
                        </span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right pc-h-dropdown">
                        <div class=" dropdown-header">
                            <h5 class="text-overflow m-0">
                                <span class="badge bg-light-primary">
                                    <a href="javascript:void(0)">
                                        <?= $_SESSION['cbt_admin_session']['user']['user_id']; ?>
                                    </a>
                                </span>
                            </h5>
                        </div>

                        <a href="<?= base_url('users/profile/' . $_SESSION['cbt_admin_session']['user']['user_id']); ?>" class="dropdown-item">
                            <i class="fas fa-user-circle"></i>
                            <span>My Profile</span>
                        </a>
            
                        <a href="<?= base_url('auth/sign_out'); ?>" class="dropdown-item">
                            <i style="transform: rotate(180deg); margin-top: -9px" class="fas fa-sign-out-alt"></i>
                            <span>Logout</span>
                        </a>
                    </div>
                </li>
            </ul>
        </div>

    </div>
</header>

<script type="text/javascript">
    
    function code_generator(prefix = '', length = 13) {

        const characters ='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

        let result = '';
        const charactersLength = characters.length;
        for ( let i = 0; i < charactersLength; i++ ) {
            result += characters.charAt(Math.floor(Math.random() * charactersLength));
        }

        result = (result.substring(0, length - 1)).toUpperCase();

        if (prefix != '') {

            result += (prefix + '_');
        }

        return result;
    }
    
</script>