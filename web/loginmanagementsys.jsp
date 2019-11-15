<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="shortcut icon" href="images/star.png" type="favicon/ico" /> -->

<title>欢迎使用电子商务管理信息系统</title>

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





<section class="reservation">
	<img class="img-responsive section-icon hidden-sm hidden-xs" src="images/icons/about_color.png">
	<div class="wrapper">
		<div class="container-fluid">
			<div class=" section-content">
				<div class="row">
					<div class="col-md-12 col-sm-10">
						<form class="reservation-form" action="/Gypsy_Jewels/LoginManagementSysServlet" id="login" method="post">
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

								<div class="col-md-5 col-sm-5">
									<button type="submit"  onclick="checkLogin()" class="btn btn-reservation">
										<span><i class="fa fa-check-circle-o"></i></span>
										登录
									</button>
								</div>
							</div>
						</form>

						</div>

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
					<p>Copyright &copy; 2019.KMUST All rights reserved.</p>
				</div>
			</div>
		</div>
	</div>
</footer>
<script type="text/javascript">
		function checkLogin() {
			var login = document.getElementById("login");
	
			login.submit();
	
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