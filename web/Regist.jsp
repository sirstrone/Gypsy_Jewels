<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="shortcut icon" href="images/star.png" type="favicon/ico" /> -->

<title>Home</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/flexslider.css">
<link rel="stylesheet" href="css/pricing.css">
<link rel="stylesheet" href="css/main.css">

<script src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/jquery.flexslider.min.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$('.flexslider').flexslider({
		 animation: "slide",
		 controlsContainer: ".flexslider-container"
		});
	});
</script>

</head>
<body data-spy="scroll" data-target="#template-navbar">




<!--== 15. Reserve A Table! ==-->
<section id="reserve" class="reserve">
	<img class="img-responsive section-icon hidden-sm hidden-xs" src="images/icons/reserve_black.png">
	<div class="wrapper">
		<div class="container-fluid">
			<div class="row dis-table">
				<div class="col-xs-6 col-sm-6 dis-table-cell color-bg">
					<h2 class="section-title">Create your account</h2>
				</div>
				<div class="col-xs-6 col-sm-6 dis-table-cell section-bg">
					
				</div>
			</div> <!-- /.dis-table -->
		</div> <!-- /.row -->
	</div> <!-- /.wrapper -->
</section> <!-- /#reserve -->



<section class="reservation">
	<img class="img-responsive section-icon hidden-sm hidden-xs" src="images/icons/reserve_color.png">
	<div class="wrapper">
		<div class="container-fluid">
			<div class=" section-content">
				<div class="row">
					<div class="col-md-12 col-sm-10">
						<form class="reservation-form" action="/Gypsy_Jewels/RegistServlet" id="reg_form" method="post">
							<div class="row">
								<div class="col-md-12 col-sm-10">
									<div class="form-group">
										<input type="text" class="form-control reserve-form empty iconified" name="username" id="username" required="required" placeholder="  &#xf007;  输入您的用户名">
									</div>
								</div>
								<div class="col-md-12 col-sm-10">
									<div class="form-group">
										<input type="password" class="form-control reserve-form empty iconified" name="password" id="password" required="required" placeholder="  &#xf007;  输入您的密码">
									</div>
								</div>
								<div class="col-md-12 col-sm-10">
									<div class="form-group">
										<input type="password" class="form-control reserve-form empty iconified" name="Enterpassword" id="Enterpassword" required="required" placeholder="  &#xf007;  请再次输入您的密码">
									</div>
								</div>
								<div class="col-md-12 col-sm-10">
									<div class="form-group">
										<input type="email" name="email" class="form-control reserve-form empty iconified" id="email" required="required" placeholder="  &#xf1d8;  请告诉我们您的Email">
									</div>
								</div>

								<div class="col-md-12 col-sm-10">
									<div class="form-group">
										<input type="tel" class="form-control reserve-form empty iconified" name="phone" id="phone" required="required" placeholder="  &#xf095;  请留下您的电话">
									</div>
								</div>
								

								<div class="col-md-12 col-sm-12">
									<button type="submit" onclick="checkLogin(this)" class="btn btn-reservation">
										<span><i class="fa fa-check-circle-o"></i></span>
										创建你的账户
									</button>
								</div>
									
							</div>
						</form>
					</div>


					
				</div>

			</div>
		</div>
	</div>
</section>

<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="copyright text-center">
					<p>Copyright &copy; 2018.KMUST All rights reserved.</p>
				</div>
			</div>
		</div>
	</div>
</footer>
<script type="text/javascript">
		function checkLogin() {
			var user = document.getElementById("username");
			var pwd = document.getElementById("password");
			var checkpwd = document.getElementById("Enterpassword");
			var login = document.getElementById("submit");
	

			if (!(pwd.value == checkpwd.value))
			{

				alert("密码不匹配");
				return;
			}
			else{
                login.submit();
			}

	
		}
	</script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/jquery.mixitup.min.js" ></script>
<script src="js/wow.min.js"></script>
<script src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/jquery.hoverdir.js"></script>
<script type="text/javascript" src="js/jQuery.scrollSpeed.js"></script>
<script src="js/script.js"></script>

</body>
</html>