<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- <link rel="shortcut icon" href="images/star.png" type="favicon/ico" /> -->

		<title>Welcome to Gypsy Jewels</title>

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

		<!--== 4. Navigation ==-->
		<nav id="template-navbar" class="navbar navbar-default custom-navbar-default navbar-fixed-top">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#Food-fair-toggle">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">
						<img id="logo" src="images/Logo_main.png" class="logo img-responsive">
					</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="Food-fair-toggle">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#about">我们</a></li>
						<li><a href="#pricing">用途</a></li>
						<li><a href="#great-place-to-enjoy">花束</a></li>
						<li><a href="#breakfast">花篮</a></li>
						<li><a href="#featured-dish">花盒</a></li>
						<li><a href="#menu-list">捧花</a></li>
						<li><a href="#reserve">预订</a></li>
						<li><a href="#contact">联系</a></li>
						<li>
							<a href="login.jsp">
								<c:if test="${!empty user }">
									欢迎,${user.username }

								</c:if>
							</a>
						</li>

					</ul>
				</div><!-- /.navbar-collapse -->
			</div><!-- /.row -->
		</nav>


		<!--== 5. Header ==-->
		<section id="header-slider" class="owl-carousel">
			<div class="item">
				<div class="container">
					<div class="header-content">
						<h1 class="header-title">BEST FLOWERS</h1>
						<p class="header-sub-title">Meet the most beautiful of her</p>
					</div> <!-- /.header-content -->
				</div>
			</div>
			<div class="item">
				<div class="container">
					<div class="header-content">
						<h1 class="header-title">BEST WISHES</h1>
						<p class="header-sub-title">Meet a better tomorrow</p>
					</div> <!-- /.header-content -->
				</div>
			</div>
			<div class="item">
				<div class="container">
					<div class="header-content text-right pull-right">
						<h1 class="header-title">BEST BLESSING</h1>
						<p class="header-sub-title">Meet a better version of yourself</p>
					</div> <!-- /.header-content -->
				</div>
			</div>
		</section>



		<!--== 6. About us ==-->
		<section id="about" class="about">
			<img src="images/icons/about_color.png" class="img-responsive section-icon hidden-sm hidden-xs">
			<div class="wrapper">
				<div class="container-fluid">
					<div class="row dis-table">
						<div class="hidden-xs col-sm-6 section-bg about-bg dis-table-cell">

						</div>
						<div class="col-xs-12 col-sm-6 dis-table-cell">
							<div class="section-content">
								<h2 class="section-content-title">关于我们</h2>
								<p class="section-content-para">
									天文学迫使我们的灵魂向上看，把我们从这个世界引向另一个世界。奇怪的是，我们花更多的时间去祝贺那些成功的人，而不是鼓励那些没有成功的人。随着我们越来越远，它(地球)的体积变小了。 </p>
								<p class="section-content-para">
									美丽的、温暖的、有生命的东西看起来是那么脆弱，那么精致，如果你用手指碰它，它就会碎掉。看到这一点必须改变一个人。无知潜伏在哪里，探索和想象的前沿也潜伏在哪里。 </p>
							</div> <!-- /.section-content -->
						</div>
					</div> <!-- /.row -->
				</div> <!-- /.container-fluid -->
			</div> <!-- /.wrapper -->
		</section> <!-- /#about -->


		<!--==  7. 鲜花用途  ==-->
		<section id="pricing" class="pricing">
			<div id="w">
				<div class="pricing-filter">
					<div class="pricing-filter-wrapper">
						<div class="container">
							<div class="row">
								<div class="col-md-10 col-md-offset-1">
									<div class="section-header">
										<h2 class="pricing-title">鲜花用途</h2>
										<ul id="filter-list" class="clearfix">
											<li class="filter" data-filter="all">所有</li>
											<li class="filter" data-filter=".breakfast">送恋人</li>
											<li class="filter" data-filter=".special">送亲人</li>
											<li class="filter" data-filter=".desert">送朋友</li>
											<li class="filter" data-filter=".dinner">送自己</li>
										</ul><!-- @end #filter-list -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="container">
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<ul id="menu-pricing" class="menu-price">
								<li class="item dinner">

									<a href="#">
										<img src="images/flower1.jpg" class="img-responsive" alt="Food">
										<div class="menu-desc text-center">
											<span>
												<h3>向日葵</h3>
												勇敢地去追求自己想要的幸福
											</span>
										</div>
									</a>

									<h2 class="white">$20</h2>
								</li>

								<li class="item breakfast">

									<a href="#">
										<img src="images/flower2.jpg" class="img-responsive" alt="Food">
										<div class="menu-desc">
											<span>
												<h3>白玫瑰</h3>
												纯洁的爱情
											</span>
										</div>
									</a>

									<h2 class="white">$20</h2>
								</li>
								<li class="item desert">

									<a href="#">
										<img src="images/flower3.jpg" class="img-responsive" alt="Food">
										<div class="menu-desc">
											<span>
												<h3>黄玫瑰</h3>
												请你原谅我
											</span>
										</div>
									</a>

									<h2 class="white">$18</h2>
								</li>
								<li class="item breakfast special">

									<a href="#">
										<img src="images/flower4.jpg" class="img-responsive" alt="Food">
										<div class="menu-desc">
											<span>
												<h3>婚礼花饰</h3>
												爱情的最佳代言人
											</span>
										</div>
									</a>

									<h2 class="white">$15</h2>
								</li>
								<li class="item breakfast">

									<a href="#">
										<img src="images/flower5.jpg" class="img-responsive" alt="Food">
										<div class="menu-desc">
											<span>
												<h3>新娘捧花</h3>
												幸福的守护使者
											</span>
										</div>
									</a>

									<h2 class="white">$20</h2>
								</li>
								<li class="item dinner special">

									<a href="#">
										<img src="images/flower6.jpg" class="img-responsive" alt="Food">
										<div class="menu-desc">
											<span>
												<h3>婚礼花盒</h3>
												象征着幸福的传递
											</span>
										</div>
									</a>

									<h2 class="white">$22</h2>
								</li>
								<li class="item desert">

									<a href="#">
										<img src="images/flower7.jpg" class="img-responsive" alt="Food">
										<div class="menu-desc">
											<span>
												<h3>鲜花摆件</h3>
												用鲜花装点你的生活
											</span>
										</div>
									</a>

									<h2 class="white">$32</h2>
								</li>
								<li class="item dinner">

									<a href="#">
										<img src="images/flower8.jpg" class="img-responsive" alt="Food">
										<div class="menu-desc">
											<span>
												<h3>绿植墙饰</h3>
												贴近自然，你我更清新
											</span>
										</div>
									</a>

									<h2 class="white">$38</h2>
								</li>
								<li class="item desert special">

									<a href="#">
										<img src="images/flower9.jpg" class="img-responsive" alt="Food">
										<div class="menu-desc">
											<span>
												<h3>绿植摆件</h3>
												生活中的小确幸
											</span>
										</div>
									</a>

									<h2 class="white">$38</h2>
								</li>
							</ul>

							<!-- <div class="text-center">
							<a id="loadPricingContent" class="btn btn-middle hidden-sm hidden-xs">Load More <span class="caret"></span></a>
					</div> -->

						</div>
					</div>
				</div>

			</div>
		</section>


		<!--== 8. Great Place to enjoy ==-->
		<section id="great-place-to-enjoy" class="great-place-to-enjoy">
			<img class="img-responsive section-icon hidden-sm hidden-xs" src="images/icons/beer_black.png">
			<div class="wrapper">
				<div class="container-fluid">
					<div class="row dis-table">
						<div class="col-xs-6 col-sm-6 dis-table-cell color-bg">
							<h2 class="section-title">美好的传说（Good Story）</h2>
						</div>
						<div class="col-xs-6 col-sm-6 dis-table-cell section-bg">

						</div>
					</div> <!-- /.dis-table -->
				</div> <!-- /.row -->
			</div> <!-- /.wrapper -->
		</section> <!-- /#great-place-to-enjoy -->



		<!--==  9. Our Flowers  ==-->
		<section id="beer" class="beer">
			<img class="img-responsive section-icon hidden-sm hidden-xs" src="images/icons/beer_color.png">
			<div class="container-fluid">
				<div class="row dis-table">
					<div class="hidden-xs col-sm-6 dis-table-cell section-bg">

					</div>

					<div class="col-xs-12 col-sm-6 dis-table-cell">
						<div class="section-content">
							<h2 class="section-content-title">鲜花篇</h2>
							<div class="section-description">
								<p class="section-content-para">
									虞美人花名源于一个耳熟能详的历史事件和一段美丽的传说——“霸王别姬”，传颂千百年来，一直令人唏嘘不已。虞美人花朵上鲜艳的红色，据说就是虞姬飞溅的鲜血染成。
								</p>
								<p class="section-content-para">
									后来，在虞姬的墓上长出了一种草形状象鸡冠花，叶子对生，茎软叶长，无风自动，似美人翩翩起舞，娇媚可爱，民间传说这是虞姬精诚所化，于是就把这种草称为“虞美人草”，其花称作“虞美人”。
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>



		<!--== 10. Our flower Menu ==-->
		<section id="breakfast" class="breakfast">
			<img class="img-responsive section-icon hidden-sm hidden-xs" src="images/icons/bread_black.png">
			<div class="wrapper">
				<div class="container-fluid">
					<div class="row dis-table">
						<div class="col-xs-6 col-sm-6 dis-table-cell color-bg">
							<h2 class="section-title">感受和拥抱自然</h2>
						</div>
						<div class="col-xs-6 col-sm-6 dis-table-cell section-bg">

						</div>
					</div> <!-- /.dis-table -->
				</div> <!-- /.row -->
			</div> <!-- /.wrapper -->
		</section> <!-- /#breakfast -->



		<!--== 11. Our Flowers ==-->
		<section id="bread" class="bread">
			<img class="img-responsive section-icon hidden-sm hidden-xs" src="images/icons/bread_color.png">
			<div class="container-fluid">
				<div class="row dis-table">
					<div class="hidden-xs col-sm-6 dis-table-cell section-bg">

					</div>
					<div class="col-xs-12 col-sm-6 dis-table-cell">
						<div class="section-content">
							<h2 class="section-content-title">
								绿植篇
							</h2>
							<div class="section-description">
								<p class="section-content-para">
									上帝造物之初，仙人掌是世界上最柔软的一种东西，她娇嫩如水，晶莹如玉，任何人稍微一碰触到它，它就会失去生命。上帝不忍心，就给他加了一层盔甲，坚硬如铁，还有伤人的钢刺，从此，再无人能见仙人掌如水的心。凡是接近她的生物，必将碰得浑身伤痕，鲜血淋漓。
								</p>
								<p class="section-content-para">
									后来，有一个勇士出现了，他拔出宝剑把仙人掌劈成了两半，原本以为灭掉它是一件很难的事情，没想到却是那么不堪一击。最终，勇士明白了：原来那所谓的刺只是仙人掌用来保护自己脆弱心灵的外壳，在它的心底，其实是那么脆弱和容易受伤。于是仙人掌的花语便是：坚强！
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>




		<!--== 12. Our Featured Dishes Menu ==-->
		<section id="featured-dish" class="featured-dish">
			<img class="img-responsive section-icon hidden-sm hidden-xs" src="images/icons/food_black.png">
			<div class="wrapper">
				<div class="container-fluid">
					<div class="row dis-table">
						<div class="col-xs-6 col-sm-6 dis-table-cell color-bg">
							<h2 class="section-title">最好的祝愿（Best Wishes）</h2>
						</div>
						<div class="col-xs-6 col-sm-6 dis-table-cell section-bg">

						</div>
					</div> <!-- /.dis-table -->
				</div> <!-- /.row -->
			</div> <!-- /.wrapper -->
		</section> <!-- /#featured-dish -->




		<!--== 13. Menu List ==-->
		<section id="menu-list" class="menu-list">
			<div class="container">
				<div class="row menu">
					<div class="col-md-10 col-md-offset-1 col-sm-9 col-sm-offset-2 col-xs-12">
						<div class="row">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="row">
									<div class="menu-catagory">
										<h2>花束</h2>
									</div>
								</div>

								<c:forEach items="${allflower }" var="flower">
									<div class="row">
										<div class="menu-item">
											<h3 class="menu-title">${flower.name}</h3>
											<p class="menu-about">${flower.language}</p>

											<div class="menu-system">
												<div class="half">
													<p class="per-head">
														<span><i class="fa fa-user"></i></span>${flower.popularity}
													</p>
												</div>
												<div class="half">
													<p class="price">$${flower.price}</p>
												</div>
											</div>
										</div>
									</div>
									</c:forEach>

							</div>

							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="row">
									<div class="menu-catagory">
										<h2>花篮</h2>
									</div>
								</div>
								<div class="row">
									<div class="menu-item">
										<h3 class="menu-title">常相伴</h3>
										<p class="menu-about">无声的爱</p>

										<div class="menu-system">
											<div class="half">
												<p class="per-head">
													<span><i class="fa fa-user"></i></span>1:1
												</p>
											</div>
											<div class="half">
												<p class="price">$20.00</p>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="menu-item">
										<h3 class="menu-title">蒸蒸日上</h3>
										<p class="menu-about">开业庆典，鸿运昌盛</p>

										<div class="menu-system">
											<div class="half">
												<p class="per-head">
													<span><i class="fa fa-user"></i></span>1:1
												</p>
											</div>
											<div class="half">
												<p class="price">$30.00</p>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="menu-item">
										<h3 class="menu-title">圆满</h3>
										<p class="menu-about">幸福的彼岸</p>

										<div class="menu-system">
											<div class="half">
												<p class="per-head">
													<span><i class="fa fa-user"></i></span>1:1
												</p>
											</div>
											<div class="half">
												<p class="price">$40.00</p>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="row">
									<div class="menu-catagory">
										<h2>花盒</h2>
									</div>
								</div>
								<div class="row">
									<div class="menu-item">
										<h3 class="menu-title">恋恋情深</h3>
										<p class="menu-about">我的眼里只有你</p>

										<div class="menu-system">
											<div class="half">
												<p class="per-head">
													<span><i class="fa fa-user"></i></span>1:1
												</p>
											</div>
											<div class="half">
												<p class="price">$70.00</p>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="menu-item">
										<h3 class="menu-title">怦然心动</h3>
										<p class="menu-about">致最美的你</p>

										<div class="menu-system">
											<div class="half">
												<p class="per-head">
													<span><i class="fa fa-user"></i></span>1:1
												</p>
											</div>
											<div class="half">
												<p class="price">$50.00</p>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="menu-item">
										<h3 class="menu-title">青青子衿</h3>
										<p class="menu-about">盛开在最美的地方</p>

										<div class="menu-system">
											<div class="half">
												<p class="per-head">
													<span><i class="fa fa-user"></i></span>1:1
												</p>
											</div>
											<div class="half">
												<p class="price">$90.00</p>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="row">
									<div class="menu-catagory">
										<h2>捧花</h2>
									</div>
								</div>
								<div class="row">
									<div class="menu-item">
										<h3 class="menu-title">sunshine</h3>
										<p class="menu-about">心向暖阳</p>

										<div class="menu-system">
											<div class="half">
												<p class="per-head">
													<span><i class="fa fa-user"></i></span>1:1
												</p>
											</div>
											<div class="half">
												<p class="price">$90.00</p>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="menu-item">
										<h3 class="menu-title">一缕清香</h3>
										<p class="menu-about">触摸美好的爱情</p>

										<div class="menu-system">
											<div class="half">
												<p class="per-head">
													<span><i class="fa fa-user"></i></span>1:1
												</p>
											</div>
											<div class="half">
												<p class="price">$70.00</p>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="menu-item">
										<h3 class="menu-title">小仙女</h3>
										<p class="menu-about">美好的愿望</p>

										<div class="menu-system">
											<div class="half">
												<p class="per-head">
													<span><i class="fa fa-user"></i></span>1:1
												</p>
											</div>
											<div class="half">
												<p class="price">$50.00</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div id="moreMenuContent"></div>
						<div class="text-center">
							<a id="loadMenuContent" class="btn btn-middle hidden-sm hidden-xs">Load More <span class="caret"></span></a>
						</div>
					</div>
				</div>
			</div>
		</section>



		<!--== 14. Have a look to our dishes ==-->

		<section id="have-a-look" class="have-a-look hidden-xs">
			<img class="img-responsive section-icon hidden-sm hidden-xs" src="images/icons/food_color.png">
			<div class="wrapper">
				<div class="container-fluid">
					<div class="row">

						<div class="menu-gallery" style="width: 50%; float:left;">
							<div class="flexslider-container">
								<div class="flexslider">
									<ul class="slides">
										<li>
											<img src="images/menu-gallery/menu1.png" />
										</li>
										<li>
											<img src="images/menu-gallery/menu2.jpg" />
										</li>
										<li>
											<img src="images/menu-gallery/menu3.png" />
										</li>
										<li>
											<img src="images/menu-gallery/menu4.jpg" />
										</li>
										<li>
											<img src="images/menu-gallery/menu5.jpg" />
										</li>
										<li>
											<img src="images/menu-gallery/menu6.jpg" />
										</li>
										<li>
											<img src="images/menu-gallery/menu7.jpg" />
										</li>
										<li>
											<img src="images/menu-gallery/menu8.jpg" />
										</li>
										<li>
											<img src="images/menu-gallery/menu9.jpg" />
										</li>
										<li>
											<img src="images/menu-gallery/menu10.jpg" />
										</li>
										<li>
											<img src="images/menu-gallery/menu11.jpg" />
										</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="gallery-heading hidden-xs color-bg" style="width: 50%; float:right;">
							<h2 class="section-title">Have A Look To Our Flowers</h2>
						</div>


					</div> <!-- /.row -->
				</div> <!-- /.container-fluid -->
			</div> <!-- /.wrapper -->
		</section>




		<!--== 15. Reserve A Table! ==-->
		<section id="reserve" class="reserve">
			<img class="img-responsive section-icon hidden-sm hidden-xs" src="images/icons/reserve_black.png">
			<div class="wrapper">
				<div class="container-fluid">
					<div class="row dis-table">
						<div class="col-xs-6 col-sm-6 dis-table-cell color-bg">
							<h2 class="section-title">Reserve A Flower !</h2>
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
							<div class="col-md-5 col-sm-6">
								<form class="reservation-form" method="post" action="/Gypsy_Jewels/BookServlet?uid=${user.uid}">
									<div class="row">
										<div class="col-md-6 col-sm-6">
											<div class="form-group">
												<input type="text" class="form-control reserve-form empty iconified" name="name" id="name" required="required"
												 placeholder="  &#xf007;  Name">
											</div>
											<div class="form-group">
												<input type="email" name="email" class="form-control reserve-form empty iconified" id="email" required="required"
												 placeholder="  &#xf1d8;  e-mail">
											</div>
										</div>

										<div class="col-md-6 col-sm-6">
											<div class="form-group">
												<input type="tel" class="form-control reserve-form empty iconified" name="phone" id="phone" required="required"
												 placeholder="  &#xf095;  Phone">
											</div>
											<div class="form-group">
												<input type="text" class="form-control reserve-form empty iconified" name="time" id="time"
												 required="required" placeholder="&#xf017;  Time">
											</div>
										</div>

										<div class="col-md-12 col-sm-12">
											<textarea type="text" name="message" class="form-control reserve-form empty iconified" id="message" rows="3"
											 required="required" placeholder="  &#xf086;  We're listening"></textarea>
										</div>

										<div class="col-md-12 col-sm-12">
											<button type="submit" id="submit" name="submit" class="btn btn-reservation">
												<span><i class="fa fa-check-circle-o"></i></span>
												Make a reservation
											</button>
										</div>
										<!-- /#利用session传递uid -->

									</div>
								</form>
							</div>

							<div class="col-md-2 hidden-sm hidden-xs"></div>

							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="opening-time">
									<h3 class="opening-time-title">Hours</h3>
									<p>Mon to Fri: 7:30 AM - 11:30 AM</p>
									<p>Sat & Sun: 8:00 AM - 9:00 AM</p>

									<div class="launch">
										<h4>Morning</h4>
										<p>Mon to Fri: 9:00 AM - 10:00 AM </p>
										<p>积分翻倍</p>
									</div>

									<div class="dinner">
										<h4>Evening</h4>
										<p>Mon to Sat: 6:00 PM - 1:00 AM</p>
										<p>Sun: 5:30 PM - 12:00 AM</p>
										<p>买花送熊</p>
									</div>
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
							<p>Copyright &copy; 2018.KMUST All rights reserved.</p>
						</div>
					</div>
				</div>
			</div>
		</footer>

		<script src="js/bootstrap.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
		<script src="js/wow.min.js"></script>
		<script src="js/jquery.validate.js"></script>
		<script type="text/javascript" src="js/jquery.hoverdir.js"></script>
		<script type="text/javascript" src="js/jQuery.scrollSpeed.js"></script>
		<script src="js/script.js"></script>

	</body>
</html>
