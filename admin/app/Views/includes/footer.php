<div class="footer-copyright-area py-3" style="background: transparent; margin-bottom: 30px;">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="footer-copy-right">
                    <p class="text-center" style="color: black">Copyright &copy; <?= date("Y"); ?>. All rights reserved.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

    function show_side_panel() {
        $("#toggle_panel_btn").css('transform', 'rotate(0deg)');
        $("#pc-sidebar").fadeIn();
        $(".pc-container").animate({marginLeft: '280px'});
        $(".pc-header").css('left', '280px');
        $(".page-header").css('left', '280px');
        $("#top_bar_logo").addClass('d-none');
    }
    
    function hide_side_panel() {
        
        $("#toggle_panel_btn").css('transform', 'rotate(180deg)');
        $("#pc-sidebar").fadeOut();
        $(".pc-container").animate({marginLeft: '0'});
        $(".pc-header").css('left', '0');
        $(".page-header").css('left', '0');
        $("#top_bar_logo").removeClass('d-none');
    }
    
    function maximise_panel(state = (localStorage.getItem('questa_admin_hide_panel'))) {
        
        maximised_state = state;
        
        console.log(maximised_state);

        if (maximised_state == 1) { // Make Side Panel hidden
            
            hide_side_panel();

            maximised_state = 0;
            
            localStorage.setItem('questa_admin_hide_panel', maximised_state);
            
        }
        else { // make Panel shown

            show_side_panel();

            maximised_state = 1;
            
            localStorage.setItem('questa_admin_hide_panel', maximised_state);

        }

    }
    
    window.addEventListener('DOMContentLoaded', (event) => {
        
        state = localStorage.getItem('questa_admin_hide_panel');
        
        if (state == 1) {
            show_side_panel();
        }
        else {
            hide_side_panel();
        }
    });

    function show_sidebar() {
        $("#pc-sidebar").css('display', 'flex');
        $(".navbar-wrapper").css('width', '100%');
    }
    
</script>