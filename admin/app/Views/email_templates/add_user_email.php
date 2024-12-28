<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Questa App | Add User</title>

	<link href="https://questaonline.xyz/assets//images/favicon.png" rel="icon">
  	<link href="https://questaonline.xyz/assets//images/favicon.png" rel="apple-touch-icon">
  	<link rel="mask-icon" href="https://questaonline.xyz/assets//images/favicon.png" color="#ffffff">


	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

	<style type="text/css">
		
		body {
			height: 100vh;
			background: rgb(240, 240, 240);
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}

		.card-header {
			height: 150px;
			background: url('https://images.unsplash.com/photo-1492462543947-040389c4a66c?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c3R1ZGVudCUyMHNtaWxpbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=1100');
			background-position: center;
			background-size: 100%;
		}

		.login_btn {
			padding: 8px 65px;
			border-radius: 9999999999px;
			font-weight: bold;
			border: 0;
			background: rgb(31, 60, 166);
			color: white;
			font-size: 20px;
		}
		
		.footer {
		    margin-top: 20px;
		}

	</style>
</head>
<body>

	<div class="card bg-transparent rounded-0 border-0" style = "width: 550px">
		<div class="card-header"></div>
		<div class="card-body bg-white">
			<h4 class="card-title">Hello <b class="text-uppercase"><?= $user_name; ?></b>,</h4>
			<p class="card-text">Your Questa account is ready for use. Please find your login credentials below to start creating your own assessments.</p>
			<p>Your password is: <i><?= $password; ?></i></p>
			
			<form action="<?= base_url('auth/account_activate'); ?>" method="POST">
				<input type="hidden" name="email" value="<?= $email; ?>">
				<input type="hidden" name="password" value="<?= $password; ?>">
				<input type="hidden" name="activation_code" value="<?= $activation_code; ?>">
				<button type="submit" name = "account_activation_btn" class="login_btn">Start using Questa <i class="bi-arrow-right"></i></button>
			</form>
			
		</div>
    </div>
    <div class="mt-4" style = "width: 550px;">
    	<div class="footer">
			<div class="col-12 text-center">
				<img src="https://questaonline.xyz/assets/images/logo.png" width = "100px">
			</div>
			<div class="col-6 text-left" style = "color: rgb(150, 150, 150);">
				Copyright &copy; 2022
				<div class="d-flex justify-content-end">
					<a style="text-decoration: none; color: rgb(150, 150, 150) !important" href = "https://questaonline.xyz" class="text-right d-inline-block">https://questaonline.xyz</a>
				</div>
			</div>
		</div>
    </div>

</body>
</html>