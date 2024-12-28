<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Questa Quiz App | Transcript</title>

	<style type="text/css">

		* {
			font-family: poppins;
			box-sizing: border-box;
		}

		body {
			margin: 0;
			padding: 0;
			box-sizing: border-box;

		}
		
		.container {
			margin: 0px auto;
			width: 100%;
			background: rgb(239, 243, 251);
			overflow: hidden;
		}

		.header {
			background: white;
			margin: -25px;
			padding:  25px;
			height: 200px;
			background: url('https://images.unsplash.com/photo-1554224155-6726b3ff858f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGNoZWNrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1100&q=60');
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
			width: 100%;
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
		
		@media only screen and (max-width: 600px) {
		    .items_to_start {
		        width: 90%;
		    }
        }

	</style>
</head>
<body>

	<div class="container">

		<div class="header">
		</div>

		<div class="mid_content">

			<img src="<?= ASSETS_PATH . 'images/logo.png'; ?>" width = "120px">
			<h2>Hello <?= $candidate_name; ?>,</h2>

			<h4>
				<?= strtoupper('Examination Result'); ?>

			</h4>
			<div><small><i>Multichoice Type</i></small></div>
			<p style="margin-bottom: 0;">
				<?= $exam_name; ?>
			</p>
			
			<p style="margin-top: 0;">
			    <small><?= $exam_date; ?></small>
			</p>
		</div>
		
		<div class="items_to_start" style = "margin-bottom: 50px">
			<h3 style="text-align: center; margin-bottom: 30px">Questions / Points</h3>
			
			<table border = 0 width = "100%" cellpadding = "10">
			    
			    <tr>
			        <td>Correct:</td>
			        <td align = right><?= $correct_answers . '(' . $correct_points . ')'; ?></td>
			    </tr>
			    
			    <tr>
			        <td>Incorrect:</td>
			        <td align = right><?= $incorrect_answers . '(' . ($total_points - $correct_points) . ')'; ?></td>
			    </tr>
			    
			    <tr style = "font-weight: bold; border-top: 3px solid rgb(230, 230, 230); padding-top: 30px">
			        <td>Total:</td>
			        <td align = right><?= $correct_answers + $incorrect_answers . '(' . $total_points . ')'; ?></td>
			    </tr>
			    
			</table>

		</div>

		<?php if (false): ?>
		<div class="cta_div">

			<p style="margin-bottom: 0"><small>VERDICT:</small></p>
		    
		    <h2 style = "margin-top: 0px; margin-bottom: 0px; color: green">Passed <span class="check_marks" style = "margin-left: 6px; color: green; font-weight: bolder;">&#10003;</span></h2>
		    <h2 style = "margin-top: 0px; color: red">Failed <span class="check_marks" style = "margin-left: 6px; color: red; font-weight: bolder;">&#215;</span></h2>
			
		</div>
		<?php endif; ?>

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