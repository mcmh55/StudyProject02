<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

	<!-- start: Meta -->
	<!-- <meta charset="utf-8"> -->
	<title>Essentia Responsive Bootstrap Theme by Bootstrap Master</title> 
	<meta name="description" content="Essentia Responsive Bootstrap Theme by Bootstrap Master"/>
	<meta name="keywords" content="Template, Theme, web, html5, css3, Bootstrap" />
	<meta name="author" content="Łukasz Holeczek from creativeLabs"/>
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: Facebook Open Graph -->
	<meta property="og:title" content=""/>
	<meta property="og:description" content=""/>
	<meta property="og:type" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:image" content=""/>
	<!-- end: Facebook Open Graph -->

    <!-- start: CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link href="css/slider1.css" rel="stylesheet">
	<link href="css/slider2.css" rel="stylesheet">
	<link href="css/slider3.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Serif">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Boogaloo">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Economica:700,400italic">
	<!-- end: CSS -->

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!-- [if lt IE 9]> -->
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <!-- [endif] -->

</head>
<body>
	
	<!--start: Header -->
	<header>
		
		<!--start: Container -->
		<div class="container">
						
			<!--start: Row -->
			<div class="row-fluid">
					
				<!--start: Navigation -->
				<div class="navigation"> 
				
					<div class="navbar navbar-fixed-top">
			    		<div class="navbar-inner">
			          		<a class="btn btn-navbar btnOverlay" data-toggle="collapse" data-target=".nav-collapse">
			            		menu
			          		</a>
			          		<div class="nav-collapse collapse">
			            		<ul class="nav">
									<!-- <li><a href="#" class="home">Home</a></li> -->
			              			<li><a href="#" class="services">개요</a></li>
									<!-- <li><a href="#" class="pricing">Pricing</a></li> -->
									<li><a href="#" class="portfolio">포트폴리오</a></li>
									<!-- <li><a href="#" class="about">About</a></li> -->
									<li><a href="#" class="team">자기소개</a></li>
									<li><a href="#" class="contact">연락</a></li>
			            		</ul>
			          		</div>
			        	</div>
			      	</div>
				
				
				</div>	
				<!--end: Navigation -->	
					
			</div>
			<!--end: Row -->
			
		</div>
		<!--end: Container-->			
			
	</header>
	<!--end: Header-->
	
	<!-- 
	start: 1st Page - Home
	<div id="home">

		<div class="demo-1">

	        <div id="slider" class="sl-slider-wrapper">

				<div class="sl-slider">

					<div class="sl-slide bg-1" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
						<div class="sl-slide-inner">
							<div class="deco" data-icon="H"></div>
							<h2>A bene placito</h2>
							<blockquote><p>You have just dined, and however scrupulously the slaughterhouse is concealed in the graceful distance of miles, there is complicity.</p><cite>Ralph Waldo Emerson</cite></blockquote>
						</div>
					</div>

					<div class="sl-slide bg-2" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
						<div class="sl-slide-inner">
							<div class="deco" data-icon="q"></div>
							<h2>Regula aurea</h2>
							<blockquote><p>Until he extends the circle of his compassion to all living things, man will not himself find peace.</p><cite>Albert Schweitzer</cite></blockquote>
						</div>
					</div>

					<div class="sl-slide bg-3" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
						<div class="sl-slide-inner">
							<div class="deco" data-icon="O"></div>
							<h2>Dum spiro, spero</h2>
							<blockquote><p>Thousands of people who say they 'love' animals sit down once or twice a day to enjoy the flesh of creatures who have been utterly deprived of everything that could make their lives worth living and who endured the awful suffering and the terror of the abattoirs.</p><cite>Dame Jane Morris Goodall</cite></blockquote>
						</div>
					</div>

					<div class="sl-slide bg-4" data-orientation="vertical" data-slice1-rotation="-5" data-slice2-rotation="25" data-slice1-scale="2" data-slice2-scale="1">
						<div class="sl-slide-inner">
							<div class="deco" data-icon="I"></div>
							<h2>Donna nobis pacem</h2>
							<blockquote><p>The human body has no more need for cows' milk than it does for dogs' milk, horses' milk, or giraffes' milk.</p><cite>Michael Klaper M.D.</cite></blockquote>
						</div>
					</div>

					<div class="sl-slide bg-5" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1">
						<div class="sl-slide-inner">
							<div class="deco" data-icon="t"></div>
							<h2>Acta Non Verba</h2>
							<blockquote><p>I think if you want to eat more meat you should kill it yourself and eat it raw so that you are not blinded by the hypocrisy of having it processed for you.</p><cite>Margi Clarke</cite></blockquote>
						</div>
					</div>
				</div>/sl-slider

				<nav id="nav-arrows" class="nav-arrows">
					<span class="nav-arrow-prev">Previous</span>
					<span class="nav-arrow-next">Next</span>
				</nav>

				<nav id="nav-dots" class="nav-dots">
					<span class="nav-dot-current"></span>
					<span></span>
					<span></span>
					<span></span>
					<span></span>
				</nav>

			</div>/slider-wrapper

	    </div>

	</div>
	end: 1st Page - Home
	-->
	
	<!-- start: 2nd Page - Services -->
	<div id="services" class="color black">
		
		<!--start: Container -->
		<div class="container">

			<!--start: Wrapper -->
			<div class="wrapper span12">
				
			<!-- start: Page Title -->
			<div id="page-title">

				<div id="page-title-inner">

					<h2><span>개요</span></h2>

				</div>	

			</div>
			<!-- end: Page Title -->
			
			<!-- start: Row -->
      		<div class="row-fluid">
	
        		<div class="span12">
	
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
					</p>	
          			
        		</div>
			
			</div>
			<!-- end: Row -->
			
			<!-- start: Row -->
      		<div class="row-fluid">
	
        		<div class="span6">
	
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
					</p>	
          			
        		</div>

				<div class="span6">
	
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
					</p>	
          			
        		</div>
			
			</div>
			<!-- end: Row -->	
	
      		<!-- start: Row -->
      		<div class="row-fluid">
	
        		<div class="span4">
          			<div class="icons-box">
						<i class="fa-icon-beaker"></i>
						<a href="login.do"><h3>개인 프로젝트</h3></a>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
						</p>
						<div class="clearfix"></div>
					</div>
        		</div>

        		<div class="span4">
          			<div class="icons-box">
						<i class="fa-icon-thumbs-up"></i>
						<h3>팀 프로젝트</h3>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
						</p>
						<div class="clearfix"></div>
					</div>
        		</div>

        		<div class="span4">
          			<div class="icons-box">
						<i class="fa-icon-heart-empty"></i>
						<h3>블로그</h3>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
						</p>
						<div class="clearfix"></div>
					</div>
        		</div>

			</div>
			<!-- end: Row -->
			
			<div class="clearfix"></div>
			<hr class="clean">					
			</div>
			<!-- end: Wrapper -->
		
		</div>
		<!--end: Container -->
		
	</div>
	<!-- end: 2nd Page - Services -->
	
	
	<!-- 
	start: 3rd Page - Pricing Tables
	<div id="pricing" class="color blue">
		
		start: Container
		<div class="container">

			start: Wrapper
			<div class="wrapper span12">

							start: Page Title
			<div id="page-title">

				<div id="page-title-inner">

					<h2><span>Price</span></h2>

				</div>	

			</div>
			end: Page Title
				
			start: Table
			<div class="four-tables">
				
				start: Row
				<div class="row-fluid">
					
					<div class="span3">
						<div class="pricing-table">
							<div class="color-cccddd">
								<h3>Standard</h3>
								<h4><span class="price">€9.99</span> <span class="time">per month</span></h4>
								<ul>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
								</ul>
								<a href="#" class="buy"><span>Buy</span></a>
							</div>
						</div>
					</div>

					<div class="span3">
						<div class="pricing-table">
							<div class="color-666777">
								<h3>Premium</h3>
								<h4><span class="price">€29.99</span> <span class="time">per month</span></h4>
								<ul>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
								</ul>
								<a href="#" class="buy"><span>Buy</span></a>
							</div>
						</div>
					</div>	

					<div class="span3">
						<div class="pricing-table best-option">
							<div class="color-custom">
								<h3>Professional</h3>
								<h4><span class="price">€49.99</span> <span class="time">per month</span></h4>
								<ul>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
								</ul>
								<a href="#" class="buy"><span>Buy</span></a>
							</div>
						</div>
					</div>

					<div class="span3">
						<div class="pricing-table">
							<div class="color-666777">
								<h3>Ultimate</h3>
								<h4><span class="price">€99.99</span> <span class="time">per month</span></h4>
								<ul>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
									<li>Custom option</li>
								</ul>
								<a href="#" class="buy"><span>Buy</span></a>
							</div>
						</div>
					</div>
				
				</div>
				end: Row

			</div>
			end: Table
			</div>
			end: Wrapper
		
		</div>
		end: Container
		
	</div>
	end: 3rd Page - Pricing Tables
	-->
	
	
	<!-- start: 4th Page - Portfolio -->
	<div id="portfolio" class="color white">
		
		<!--start: Container -->
		<div class="container">

			<!--start: Wrapper -->
			<div class="wrapper span12">
	
							<!-- start: Page Title -->
			<div id="page-title">

				<div id="page-title-inner">

					<h2><span>포트폴리오</span></h2>

				</div>	

			</div>
			<!-- end: Page Title -->
			
			<!-- start: Flexslider -->
			<div class="slider">
				<div id="flex1" class="flexslider">
					<ul class="slides">

						<li><div class="picture"><img src="img/slider/slider1.jpg" alt="" /></div></li>

						<li><div class="picture"><img src="img/slider/slider2.jpg" alt="" /></div></li>

						<li><div class="picture"><img src="img/slider/slider3.jpg" alt="" /></div></li>

					</ul>
				</div>
			</div>
			<!-- end: Flexslider -->


			<!-- 
			<div id="filters">
				<ul class="option-set" data-option-key="filter">
					<li><a href="#filter" class="selected" data-option-value="*">All</a></li>
					<li>/</li>
					<li><a href="#filter" data-option-value=".admin">Admin</a></li>
					<li>/</li>
					<li><a href="#filter" data-option-value=".dashboard">Dashboard</a></li>
					<li>/</li>
					<li><a href="#filter" data-option-value=".website">Website</a></li>
					<li>/</li>
					<li><a href="#filter" data-option-value=".html5">HTML5</a></li>
					<li>/</li>
					<li><a href="#filter" data-option-value=".css3">CSS3</a></li>
					<li>/</li>
					<li><a href="#filter" data-option-value=".responsive">Responsive</a></li>
				</ul>
			</div>

			start: Portfolio
			<div id="portfolio-wrapper" class="row-fluid">
								
				<div class="span4 portfolio-item website html5 css3 responsive">
					
					<div class="picture"><a href="http://smart.bootstrapmaster.com" title="Smart Responsive Template"><img src="img/portfolio/smart.png" alt=""/><div class="image-overlay-link"></div></a>
					
						<div class="item-description alt">
							<h5><a href="http://smart.bootstrapmaster.com">Smart Responsive Bootstrap Template</a></h5>
							<p>
								Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
							</p>
						</div>
					</div>	
				</div>

				<div class="span4 portfolio-item website html5 css3 responsive">
					<div class="picture">
						<a href="http://acme.bootstrapmaster.com" title="Title"><img src="img/portfolio/great.png" alt=""/><div class="image-overlay-link"></div></a>
							<div class="item-description alt">
								<h5><a href="http://acme.bootstrapmaster.com">Great Responsive Bootstrap Template</a></h5>
								<p>
									Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
							</p>
						</div>
					</div>
				</div>

				<div class="span4 portfolio-item website html5 css3 responsive">
					<div class="picture"><a href="http://magnus.bootstrapmaster.com" title="Title"><img src="img/portfolio/magnus.png" alt=""/><div class="image-overlay-link"></div></a>
						<div class="item-description alt">
							<h5><a href="http://magnus.bootstrapmaster.com">Magnus Responsive Bootstrap Template</a></h5>
							<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
							</p>
						</div>	
					</div>
				</div>

				<div class="span4 portfolio-item admin dashboard html5 css3 responsive">
					<div class="picture"><a href="http://optimus.bootstrapmaster.com" title="Title"><img src="img/portfolio/optimus.png" alt=""/><div class="image-overlay-link"></div></a>
						<div class="item-description alt">
							<h5><a href="http://optimus.bootstrapmaster.com">Optimus Dashboard Bootstrap Template</a></h5>
							<p>
								Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
							</p>
						</div>
					</div>
				</div>

				<div class="span4 portfolio-item admin dashboard html5 css3 responsive">
					<div class="picture"><a href="http://perfectum.bootstrapmaster.com" title="Title"><img src="img/portfolio/perfectum.png" alt=""/><div class="image-overlay-link"></div></a>
						<div class="item-description alt">
							<h5><a href="http://perfectum.bootstrapmaster.com">Perfectum Dashboard Bootstrap Template</a></h5>
							<p>
								Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
							</p>
						</div>
					</div>
				</div>

				<div class="span4 portfolio-item website html5 css3 responsive">
					<div class="picture"><a href="http://redbox.bootstrapmaster.com"><img src="img/portfolio/redbox.png" alt=""/><div class="image-overlay-link"></div></a>
						<div class="item-description alt">
							<h5><a href="http://redbox.bootstrapmaster.com">Red Box Responsive Bootstrap Template</a></h5>
							<p>
								Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
							</p>
						</div>
					</div>
				</div>

			</div>
			end: Portfolio
			-->
			
			
			</div>
			<!-- end: Wrapper -->
			
		
		</div>
		<!--end: Container -->
		
	</div>
	<!-- end: 4th Page - Portfolio -->
	
	
	<!-- 
	start: 5th Page - About
	<div id="about" class="color yellow">
		
		start: Container
		<div class="container">

			start: Wrapper
			<div class="wrapper span12">

							start: Page Title
			<div id="page-title">

				<div id="page-title-inner">

						<h2><span>About Us</span></h2>

				</div>	

			</div>
			end: Page Title				
		
			start: Row
	    	<div class="row-fluid">
		
				<div class="span12">
					
					start: About Us
					<div id="story">
						<h3>Our Story</h3>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.
						</p>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.
						</p>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.
						</p>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.
						</p>
					</div>	
					end: About Us

					start: History
					<div id="history">
						<h3>History</h3>
						<p>
							<span class="dropcap">P</span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.
						</p>
						<p>
							<span class="dropcap color">P</span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.
						</p>
						<p>
							<span class="dropcap dark">P</span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.
						</p>
						<p>
							Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.
						</p>
					</div>	
					end: History

				</div>
				
			</div>
			end: Row
			
			start: Row
			<div class="row-fluid">		
				
				<div class="span12">
					
					start: Skills
			       	<h3>Our Skills</h3>
			       	<ul class="progress-bar">
						<li>
			            	<h5>Web Design ( 40% )</h5>
			          	</li>
			        	<li>
			            	<div class="meter"><span style="width: 40%"></span></div>Edite width here
			          	</li>
						<li>
			            	<h5>Wordpress ( 80% )</h5>
			          	</li>
			          	<li>
			            	<div class="meter"><span style="width: 80%"></span></div>Edite width here
			          	</li>
						<li>
			            	<h5>Branding ( 100% )</h5>
			          	</li>
			          	<li>
			            	<div class="meter"><span style="width: 100%"></span></div>Edite width here
			          	</li>
			          	<li>
			            	<h5>SEO Optmization ( 60% )</h5>
			          	</li>
						<li>
			            	<div class="meter"><span style="width: 60%"></span></div>Edite width here
			          	</li>
			      	</ul>
			      	end: Skills
						
				</div>
				
			</div>
			end: Row
			</div>
			end: Wrapper
		
		</div>
		end: Container
		
	</div>
	end: 5th Page - About
	-->
	
	<!-- start: 6th Page - Team -->
	<div id="team" class="color white">
		
		<!--start: Container -->
		<div class="container">

			<!--start: Wrapper -->
			<div class="wrapper span12">

				<!-- start: Page Title -->
<div id="page-title">

	<div id="page-title-inner">

			<h2><span>자기소개</span></h2>

	</div>	

</div>
<!-- end: Page Title -->				

<!-- start: Row -->
<div class="row-fluid">
	
	<div class ="span12">
		
		<!-- start: Team -->	
		<div id="team">
						
			<!-- start: Row -->
			<div class="row-fluid">
			
				<!-- start: About Member -->
				<div class="span3">
					<div class="avatar">
						<img class="img-circle" src="img/team_member.jpg" alt="team member">
					</div>	
					<div class="team-name">Lucas Luck</div>
					<div class="position">Co-Founder, CEO</div>
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
					</p>
					<div class="social_profiles">
						<ul class="social-bookmarks">
							<li class="facebook"><a href="">facebook</a></li>
							<li class="flickr"><a href="">flickr</a></li>
							<li class="linkedin"><a href="#">linkedin</a></li>
							<li class="twitter"><a href="#">twitter</a></li>
						</ul>
					</div>	
				</div>
				<!-- end: About Member -->
				
				<hr class="clean visible-phone">

				<!-- start: About Member -->
				<div class="span3">
					<div class="avatar">
						<img class="img-circle" src="img/team_member.jpg" alt="team member">
					</div>	
					<div class="team-name">Lucas Luck</div>
					<div class="position">Co-Founder, CEO</div>
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
					</p>
					<div class="social_profiles">
						<ul class="social-bookmarks">
							<li class="facebook"><a href="">facebook</a></li>
							<li class="flickr"><a href="">flickr</a></li>
							<li class="linkedin"><a href="#">linkedin</a></li>
							<li class="twitter"><a href="#">twitter</a></li>
						</ul>
					</div>	
				</div>
				<!-- end: About Member -->
				
				<hr class="clean visible-phone">
				
				<!-- start: About Member -->
				<div class="span3">
					<div class="avatar">
						<img class="img-circle" src="img/team_member.jpg" alt="team member">
					</div>	
					<div class="team-name">Lucas Luck</div>
					<div class="position">Co-Founder, CEO</div>
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
					</p>
					<div class="social_profiles">
						<ul class="social-bookmarks">
							<li class="facebook"><a href="">facebook</a></li>
							<li class="flickr"><a href="">flickr</a></li>
							<li class="linkedin"><a href="#">linkedin</a></li>
							<li class="twitter"><a href="#">twitter</a></li>
						</ul>
					</div>	
				</div>
				<!-- end: About Member -->
				
				<hr class="clean visible-phone">

				<!-- start: About Member -->
				<div class="span3">
					<div class="avatar">
						<img class="img-circle" src="img/team_member.jpg" alt="team member">
					</div>	
					<div class="team-name">Lucas Luck</div>
					<div class="position">Co-Founder, CEO</div>
					<p>
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
					</p>
					<div class="social_profiles">
						<ul class="social-bookmarks">
							<li class="facebook"><a href="">facebook</a></li>
							<li class="flickr"><a href="">flickr</a></li>
							<li class="linkedin"><a href="#">linkedin</a></li>
							<li class="twitter"><a href="#">twitter</a></li>
						</ul>
					</div>	
				</div>
				<!-- end: About Member -->
				
				<hr class="clean visible-phone">	
			
			</div>
			<!-- end: Row -->

		</div>
		<!-- end: Team -->
		
	</div>	
	
</div>	
<!-- end: Row -->
			</div>
			<!-- end: Wrapper -->
		
		</div>
		<!--end: Container -->
		
	</div>
	<!-- end: 6th Page - Team -->
	
	<!-- start: 7th Page - Contact -->
	<div id="mapBg"></div>
	<div id="contact" class="color blue transparent">
		
		<!--start: Container -->
		<div class="container">

			<!--start: Wrapper -->
			<div class="wrapper span12">

				
	
			<!-- start: Page Title -->
			<div id="page-title">

				<div id="page-title-inner">

						<h2><span>연락</span></h2>

				</div>	

			</div>
			<!-- end: Page Title -->
			
			<!-- start: Row -->
			<div class="row-fluid">		
				
				<div class="span12">
					
					<!-- start: Contact Info -->
					<b>creativeLabs</b> •
					30 South Park Avenue •
					San Francisco, CA 94108, USA •
					Phone: (123) 456-7890 •
					Fax: +08 (123) 456-7890 •
					Email: contact@companyname.com •
					Web: companyname.com	
					<!-- end: Contact Info -->
				
				</div>	
			
			</div>
			<!-- end: Row -->
			
			<hr class="clean">
			
			<!-- start: Row -->
			<div class="row-fluid">		
			
				<!-- start: Map -->
				<div class="span6">
					
					<!-- start: Contact Form -->
					<div id="contact-form">

						<form method="post" action="">
							
							<fieldset>
								
								<input tabindex="4" id="name" name="name" type="text" value="" class="span12" placeholder="Name: ..." >
								<input tabindex="2" id="email" name="email" type="text" value="" class="span12" placeholder="Email: ...">
								<input tabindex="3" id="www" name="www" type="text" value="" class="span12" placeholder="WWW: ...">
								<textarea tabindex="3" class="input-xlarge span12" id="message" name="body" rows="7" placeholder="Message: ..."></textarea>

								<div class="actions">
									<button tabindex="3" type="submit" class="btn btn-succes btn-large">Send message</button>
								</div>
								
							</fieldset>

						</form>

					</div>
					<!-- end: Contact Form -->
					

				</div>
				<!-- end: Map -->
				
				<div class="span6">
					
					<div id="map" style="width:500px;height:400px;"></div>
					
					<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=9238dbb2309cef7ecb89fc7426102329"></script>
					<script>
						var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
						var options = { //지도를 생성할 때 필요한 기본 옵션
							center: new daum.maps.LatLng(37.533249, 126.904957), //지도의 중심좌표.
							level: 4 //지도의 레벨(확대, 축소 정도)
						};
	
						var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
					</script>
					
				<!-- 	
					starts: Google Maps
					<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
					<div id="googlemaps">
						<div id="map" class="google-map google-map-full"></div>
					</div>
					<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
					<script src="js/jquery.gmap.min.js"></script>
					<script type="text/javascript">
						$('#map').gMap({
							controls: {
								panControl: false,
								zoomControl: false,
								mapTypeControl: false,
								scaleControl: false,
								streetViewControl: false,
								overviewMapControl: false
							},
							maptype: 'ROADMAP',
							scrollwheel: true,
							zoom: 13,
							markers: [
								{
									address: 'San Francisco, United States', // Your Adress Here
									html: '',
									popup: false,
								}

							],

						});
						
						$('#mapBg').gMap({
							controls: {
								panControl: false,
								zoomControl: false,
								mapTypeControl: false,
								scaleControl: false,
								streetViewControl: false,
								overviewMapControl: false
							},
							maptype: 'ROADMAP',
							scrollwheel: true,
							zoom: 13,
							markers: [
								{
									address: 'San Francisco, United States', // Your Adress Here
									html: '',
									popup: false,
								}

							],

						});
						
					</script>
					end: Google Maps
				 -->
				</div>	
			
			</div>
			<!-- end: Row -->

			</div>
			<!-- end: Wrapper -->
		
		</div>
		<!--end: Container -->
		
	</div>
	<!-- end: 7th Page - Contact -->

	
<!-- 
	<footer>
		
		<div id="copyright">
			essentia &copy; 2013 creativeLabs. <a href="http://bootstrapmaster.com" alt="Bootstrap Themes">Bootstrap Themes</a> Designed by BootstrapMaster in Poland <img src="img/poland.png" alt="Poland" style="margin-top:-4px">
		</div>
		<div id="social">
			<a href="http://facebook.com/BootstrapMaster" rel="tooltip" title="Facebook" class="facebook">Facebook</a>
			<a href="http://facebook.com/BootstrapMaster" rel="tooltip" title="Twitter" class="twitter">Twitter</a>
			<a href="http://BootstrapMaster.com/feed/" rel="tooltip" title="RSS" class="rss">RSS</a>
			<a href="#" rel="tooltip" title="Github" class="github">Github</a>
			<a href="#" rel="tooltip" title="LinkedIn" class="linkedin">LinkedIn</a>
			<a href="#" rel="tooltip" title="Pintrest" class="pintrest">Pintrest</a>
			<a href="#" rel="tooltip" title="Vimeo" class="vimeo">Vimeo</a>
			<a href="#" rel="tooltip" title="YouTube" class="youtube">YouTube</a>
		</div>	
		
	</footer>	
 -->

<!-- start: Java Script -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript" src="js/isotope.js"></script>
<script type="text/javascript" src="js/jquery.imagesloaded.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/flexslider.js"></script>
<script type="text/javascript" src="js/carousel.js"></script>
<script type="text/javascript" src="js/fancybox.js"></script>
<script type="text/javascript" src="js/twitter.js"></script>
<script type="text/javascript" src="js/modernizr.custom.79639.js"></script>
<script type="text/javascript" src="js/jquery.ba-cond.min.js"></script>
<script type="text/javascript" src="js/jquery.slitslider.js"></script>

<script type="text/javascript" src="js/excanvas.js"></script>
<script type="text/javascript" src="js/jquery.flot.min.js"></script>
<script type="text/javascript" src="js/jquery.flot.pie.min.js"></script>
<script type="text/javascript" src="js/jquery.flot.stack.js"></script>
<script type="text/javascript" src="js/jquery.flot.resize.min.js"></script>

<script defer="defer" src="js/custom.js"></script>
<script type="text/javascript">	
$(function() {

	var Page = (function() {

		var $navArrows = $( '#nav-arrows' ),
			$nav = $( '#nav-dots > span' ),
			slitslider = $( '#slider' ).slitslider( {
				onBeforeChange : function( slide, pos ) {

					$nav.removeClass( 'nav-dot-current' );
					$nav.eq( pos ).addClass( 'nav-dot-current' );

				}
			} ),

			init = function() {

				initEvents();
				
			},
			initEvents = function() {

				// add navigation events
				$navArrows.children( ':last' ).on( 'click', function() {

					slitslider.next();
					return false;

				} );

				$navArrows.children( ':first' ).on( 'click', function() {
					
					slitslider.previous();
					return false;

				} );

				$nav.each( function( i ) {
				
					$( this ).on( 'click', function( event ) {
						
						var $dot = $( this );
						
						if( !slitslider.isActive() ) {

							$nav.removeClass( 'nav-dot-current' );
							$dot.addClass( 'nav-dot-current' );
						
						}
						
						slitslider.jump( i + 1 );
						return false;
					
					} );
					
				} );

			};

			return { init : init };

	})();

	Page.init();

});
</script>
<!-- end: Java Script -->

</body>
</html>