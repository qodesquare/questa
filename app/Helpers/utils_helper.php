<?php

if (!function_exists('code_generator')) {

  function code_generator($prefix = '', $max_length = 13)    {
    $unique_code = '';
    $pattern = array(
    	"0","1","2","3","4","5","6","7","8","9",
    	"a","b","c","d","e","f","g","h","i","j",
    	"k","l","m","n","o","p","q","r","s","t",
    	"u","v","w","x","y","z",
    	"A", "B", "C", "D", "E", "F", "G", "H", "I",
    	"J", "K", "L", "M", "N", "O", "P", "Q", "R",
    	"S", "T", "U", "V", "W", "X", "Y", "Z", 
    );
    for($x = 0; $x < $max_length; $x++){
      $random = rand(0, 36);
      $unique_code = $unique_code . '' . $pattern[($random < 1) ? $random : $random - 1];
    }
    if($prefix){
      $prefix = $prefix . '_';
    }
    return strtoupper($prefix . '' . $unique_code);
  }
}

if (!function_exists('cbt_app_notyf')) {
  function cbt_app_notyf() {

    if (isset($_SESSION['cbt_app_notyf'])) {

  ?>

    <script src="<?= ASSETS_PATH; ?>js/plugins/notify.min.js"></script>

    <script type="text/javascript">
        
        $.notify(
            "<?= $_SESSION['cbt_app_notyf']['msg']; ?>",
            '<?= $_SESSION['cbt_app_notyf']['type']; ?>'
        );
    </script>

  <?php

    unset($_SESSION['cbt_app_notyf']);

    }

  }
}

if (!function_exists('check_login'))  {

  function check_login() {

    if (!isset($_SESSION['cbt_app_login_session'])) {

      ?>

      <script type="text/javascript">
        window.location.href = '<?= base_url('auth/login'); ?>';
      </script>

    <?php }

  }

}

if (!function_exists('send_email'))  {

  function send_email($msg, $to, $subject) {
    
    $email = \Config\Services::email();

    $email->setTo($to);
    $email->setBCC('jolawale28@gmail.com');
    $email->setSubject($subject);
    $email->setMessage($msg);//your message here
    
    $email->send();
    
    return $email;

  }

}

if (!function_exists('debug_print'))  {

  function debug_print($arr) {
    
    echo "<pre>";
    print_r($arr);
    echo "</pre>";

    exit;
  }

}

if (!function_exists('do_upload'))  {

  function do_upload($file_name, $config) {

    $ci = & get_instance();

    $ci->load->library('upload', $config);

    if (!$ci->upload->do_upload($file_name))  {
      $error = array('result' => false, 'error' => $ci->upload->display_errors());

      return $error;
    }
    else {
      $data = array('result' => true, 'upload_data' => $ci->upload->data());

      return $data;
    }
  }

}

if (!function_exists('get_total'))  {

  function get_total($arr, $needle, $index) {
    $total = 0;

    foreach($arr as $value) {

      if ($value[$index] == $needle) {
        $total += $value['amount'];
      }
    }

    return $total;
  }

}

if (!function_exists('get_sum'))  {

  function get_sum($arr, $index) {
    $sum = 0;

    foreach($arr as $value) {

      $sum += $value[$index];
    }

    return $sum;
  }

}

if (!function_exists('time_ago'))  {

  function time_ago($date1, $date2) {
    $d1 = new DateTime('2012-06-01 02:12:51');
    $d2 = $d1->diff(new DateTime('2014-05-12 11:10:00'));

    return array(
      't_days'    => $d2->days,
      'years'     => $d2->y,
      'months'    => $d2->m,
      'days'      => $d2->d,
      'hours'     => $d2->h,
      'mins'      => $d2->i,
      'sec'       => $d2->s
    );
  }

}

?>