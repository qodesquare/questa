<header class="pc-header ">
    <div class="header-wrapper">
        <div class="mr-auto pc-mob-drp">
            
        </div>
        <div class="ml-auto">
            <ul class="list-unstyled">
                <li class="dropdown pc-h-item">
                    <a class="pc-head-link dropdown-toggle arrow-none mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                        <img style="border: 2px solid rgb(150, 150, 255)" src="<?= ASSETS_PATH; ?>images/user.png" alt="user-image" class="user-avtar">
                        <span>
                            <span class="user-name"><?= $_SESSION['cbt_app_login_session']['user']['first_name'] . " " . $_SESSION['cbt_app_login_session']['user']['last_name']; ?></span>
                            <span class="user-desc">Student Account</span>
                        </span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right pc-h-dropdown">
                        <div class=" dropdown-header">
                            <h5 class="text-overflow m-0"><span class="badge bg-light-primary"><a href="https://gumroad.com/dashboardkit" target="_blank">Under Development</a></span></h5>
                        </div>
            
                        <a href="<?= base_url('auth/sign_out'); ?>" class="dropdown-item">
                            <i class="material-icons-two-tone">chrome_reader_mode</i>
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