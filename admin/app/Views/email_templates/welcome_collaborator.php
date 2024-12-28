<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Questa Quiz App | Welcome Collaborator</title>

	<style type="text/css">

		* {
			font-family: poppins;
		}

		body {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}
		
		.container {
			margin: 0px auto;
			width: 60%;
			background: rgb(239, 243, 251);
		}

		.header {
			background: white;
			margin: -25px;
			padding:  25px;
			height: 200px;
			background: url('https://img.theculturetrip.com/wp-content/uploads/2018/05/wedding-party.jpg');
			background-position: center;
			background-size: cover;
			overflow: hidden;
		}

		.mid_content {
			padding-top: 65px;
			text-align: center;
		}

		.items_to_start {

			width: 400px;
			margin: 50px auto;
			background: white;
			border-radius: 10px;
			padding: 25px 60px;
		}

		.cta_button {
			padding: 15px 35px;
			background: rgb(101, 48, 206);
			border-radius: 999999999px;
			color: white;
			text-decoration: none;
			cursor: pointer;
		}

		.cta_div {
			margin: 50px auto;
			width: 400px;
			text-align: center;
		}

		.footer {
			margin: 0px auto;
			width: 400px;
			text-align: center;
			margin-bottom: 50px
		}

		.small {
			font-size: 10px;
		}
		
		.lists {
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		}
		
		.lists:first-child {
		    margin-right: 6px;
		}

	</style>
</head>
<body>

	<div class="container">

		<div class="header">
		</div>

		<div class="mid_content">

			<img src="<?= ASSETS_PATH . 'images/logo.png'; ?>" width = "120px">
			<h2>Hello <?= $user_name; ?>,</h2>

			<h4>
				Welcome to Questa! 👋
			</h4>
			<p>
				Ready to take your students' success to the next level? <br>Getting started is quick and easy. But first, you need to validate your account!
			</p>
			
			<p>
			    Use the login credentials below to login after validating your account.
			</p>
		</div>

		<div class="items_to_start" style = "margin-bottom: 50px">
			<h3>Let's help you get started!</h3>

			<p class = "lists">
			    <span class="check_marks" style = "margin-right: 6px; color: green; font-weight: bolder;">&#10003;</span>
			    <span style = "text-decoration: line-through;">Create an account</span>
			</p>
			
			<p class = "lists">
			    <span class="check_marks" style = "margin-right: 6px">&#9711;</span>
			    <span>Activate Account</span>
			</p>
			
			<p class = "lists">
			    <span class="check_marks" style = "margin-right: 6px">&#9711;</span>
			    <span>Update Profile <i>(Set Password)</i></span>
			</p>
			
			<p class = "lists">
			    <span class="check_marks" style = "margin-right: 6px">&#9711;</span>
			    <span>Create & Publish an Assessment</span>
			</p>

		</div>
		
		<div class="cta_div">
		    <form action="<?= base_url('auth/account_activate'); ?>" method="POST">
				<input type="hidden" name="email" value="<?= $email; ?>">
				<input type="hidden" name="password" value="<?= $password; ?>">
				<input type="hidden" name="activation_code" value="<?= $activation_code; ?>">
				<a style = "color: white !important" href = "<?= base_url('auth/activate_account/' . $activation_code); ?>" name = "account_activation_btn" class="login_btn cta_button">Validate My Account! &#8594;</a>
			</form>
			
			<p>
			    <div>
			        <p>ALTERNATE LINK:</p>
			        <div>
			            <a href = "<?= base_url('auth/activate_account/' . $activation_code); ?>"><?= base_url('auth/activate_account/' . $activation_code); ?></a>
			        </div>
			    </div>
			</p>
			
		</div>
		
		<div class="items_to_start">
			<h3>Login Credentials</h3>

			<p class = "lists">
			    <span class="check_marks" style = "margin-right: 6px;">Email:</span>
			    <span><?= $email; ?></span>
			</p>
			
			<p class = "lists">
			    <span class="check_marks" style = "margin-right: 6px;">Password:</span>
			    <span style = "font-family: consolas"><?= $password; ?></span>
			</p>
			
			<p class = "lists">
			    <span class="check_marks" style = "margin-right: 6px;">Link:</span>
			    <a href = "<?= base_url(); ?>" style = "font-family: consolas"><?= base_url(); ?></a>
			</p>

		</div>

		<div class="footer small" style = "margin-bottom: 50px; padding-bottom: 50px">
			<div><b>Questa Online Quiz</b></div>
			<div>Assessment app for your educational needs.</div>
			<div>
				<a href="<?= ACCESS_PATH; ?>"><?= substr(ACCESS_PATH, 0, (strlen(ACCESS_PATH) - 1)); ?></a>
			</div>
			
		</div>
		
	</div>

</body>
</html>