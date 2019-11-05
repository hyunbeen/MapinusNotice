
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MAPINUS</title>

<!--    Google Fonts-->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!--Fontawesom-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<!--Animated CSS-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/animate.min.css">
<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<!--Bootstrap Carousel-->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/carousel.css" />
<!--Image Stylesheet-->
<link href="${pageContext.request.contextPath}/css/imgstyle.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/imgevent.css"
	rel="stylesheet">
<!--Main Stylesheet-->
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">
<!--Responsive Framework-->
<link href="${pageContext.request.contextPath}/css/responsive.css"
	rel="stylesheet">
<!--Timeline-->
<link href="${pageContext.request.contextPath}/css/timeline.css"
	rel="stylesheet">
<!-- main -->
<link href="${pageContext.request.contextPath}/css/main.css"
	rel="stylesheet">
<!-- Fancybox -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.fancybox.css">
<!-- Selectbox -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/wSelect.css">
<!-- Loader -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/fakeLoader.css">
<!-- Slider -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/sliderstyle.css">
<!-- MainSlider -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/mainsliderstyle.css">
<!-- logo -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/img/favicon.ico" sizes="32x32"
	rel="image/x-icon">

</head>
<html>
<body data-spy="scroll" data-target="#header">
	<div id="fakeLoader"></div>
	<jsp:include page="/include/header.mu" flush="true" />
	<input id="lang" type="hidden" value='${lang}' />
	<input id="qsendemail" type="hidden" value="<spring:message code="question.sendemail" text="default text" />" />
	<input id="qreceiveemail" type="hidden" value="<spring:message code="question.receiveemail" text="default text" />" />
	<input id="qsubject" type="hidden" value="<spring:message code="question.subject" text="default text" />" />
	<input id="qmsg" type="hidden" value="<spring:message code="question.msg" text="default text" />" />
	<input id="receiveerr" type="hidden" value="<spring:message code="question.receiveerr" text="default text" />" />
	<input id="senderr" type="hidden" value="<spring:message code="question.senderr" text="default text" />" />
	<input id="perfect" type="hidden" value="<spring:message code="question.perfect" text="default text" />" />
	
	<!--Start of slider section-->
	<section id="slider">
		<div id="thumbnail-preview-indicators" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#thumbnail-preview-indicators" data-slide-to="0"
					class="active">
					<div class="thumbnail">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/img/img1.jpg">
					</div>
				</li>
				<li data-target="#thumbnail-preview-indicators" data-slide-to="1">
					<div class="thumbnail">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/img/img2.jpg">
					</div>
				</li>
				<li data-target="#thumbnail-preview-indicators" data-slide-to="2">
					<div class="thumbnail">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/img/img3.jpg">
					</div>
				</li>
			</ol>
			<div class="carousel-inner">
				<div class="item slides active">
					<div class="slide-1"></div>
					<div class="container">
						<div class="carousel-caption">
							<div class="slider_text">
								<h2 class="maintitle">
									<spring:message code="slider.title" text="default text" />
								</h2>
								<p style="text-transform: none;">
									<b><spring:message code="slider.subtitle"
											text="default text" /></b>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="item slides">
					<div class="slide-2"></div>
					<div class="container">
						<div class="carousel-caption">
							<div class="slider_text">
								<h2 class="maintitle">
									<spring:message code="slider.title" text="default text" />
								</h2>
								<p style="text-transform: none;">
									<b><spring:message code="slider.subtitle"
											text="default text" /></b>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="item slides">
					<div class="slide-3"></div>
					<div class="container">
						<div class="carousel-caption">
							<div class="slider_text">
								<h2 class="maintitle">
									<spring:message code="slider.title" text="default text" />
								</h2>
								<p style="text-transform: none;">
									<b><spring:message code="slider.subtitle"
											text="default text" /></b>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#thumbnail-preview-indicators"
				role="button" data-slide="prev"><span
				class="glyphicon glyphicon-chevron-left"></span></a> <a
				class="right carousel-control" href="#thumbnail-preview-indicators"
				role="button" data-slide="next"><span
				class="glyphicon glyphicon-chevron-right"></span></a>
		</div>

	</section>
	<!--end of slider section-->



	<!--Start of welcome section-->
	<section id="welcome" class="whiteWord">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="wel_header">
						<h2 class="whiteWord">
							ABOUT <span class='logo'> MAPINUS </span>
						</h2>
						<p class="whiteWord">
							<b> <spring:message code="welcome.subtitle"
									text="default text" />
							</b>
						</p>
					</div>
				</div>
			</div>
			<!--End of row-->
			<div class="row">
				<div class="col-md-3 col-xs-6 wow slideInLeft"
								data-wow-offset="10" data-wow-duration="1.5s" data-wow-delay="1s">
					<div class="item">
						<div class="single_item">
							<div class="item_list">
								<div class="welcome_icon">
									<i class="fas fa-book"> </i>
								</div>
								<h4 class="whiteWord">
									<spring:message code="welcome.item1title" text="default text" />
								</h4>
								<p class="whiteWord">
									<spring:message code="welcome.item1subtitle"
										text="default text" />
								</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-3-->
				<div class="col-md-3 col-xs-6 wow slideInLeft"
								data-wow-offset="20" data-wow-duration="1.5s" data-wow-delay="0.5s">
					<div class="item">
						<div class="single_item">
							<div class="item_list">
								<div class="welcome_icon">
									<i class="fas fa-laptop"> </i>
								</div>
								<h4 class="whiteWord">
									<spring:message code="welcome.item2title" text="default text" />
								</h4>
								<p class="whiteWord">
									<spring:message code="welcome.item2subtitle"
										text="default text" />
								</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-3-->
				<div class="col-md-3 col-xs-6 wow slideInRight"
								data-wow-offset="30" data-wow-duration="1.5s" data-wow-delay="0.5s">
					<div class="item">
						<div class="single_item">
							<div class="item_list">
								<div class="welcome_icon">
									<i class="fas fa-database"> </i>
								</div>
								<h4 class="whiteWord">
									<spring:message code="welcome.item3title" text="default text" />
								</h4>
								<p class="whiteWord">
									<spring:message code="welcome.item3subtitle"
										text="default text" />
								</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-3-->
				<div class="col-md-3 col-xs-6 wow slideInRight"
								data-wow-offset="40" data-wow-duration="1.5s" data-wow-delay="1s">
					<div class="item">
						<div class="single_item">
							<div class="item_list">
								<div class="welcome_icon">
									<i class="fas fa-helicopter"> </i>
								</div>
								<h4 class="whiteWord">
									<spring:message code="welcome.item4title" text="default text" />
								</h4>
								<p class="whiteWord">
									<spring:message code="welcome.item4subtitle"
										text="default text" />
								</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-3-->
			</div>
			<!--End of row-->
		</div>
		<!--End of container-->
	</section>
	<!--end of welcome section-->




	<section id="story">
		<div class="container">
			<div class="row downmargin">
				<div class="col-md-12">
					<div class="wel_header upmargin">
						<h2>
							<span class='logo'> MAPINUS </span> Story
						</h2>
						<p>
							<b><spring:message code="story.subtitle" text="default text" /></b>
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="timeline-centered">
			
					<article class="timeline-entry wow fadeIn animated"
						data-wow-duration="500ms" data-wow-delay="200ms">
						<div class="tldateleft">
							<spring:message code="story.item1title" text="default text" />
						</div>
						<div class="timeline-entry-inner">
							<div class="timeline-icon bg-success">
								<i class="entypo-feather"> </i>
							</div>
							<div class="timeline-label">
								<h2>
									<b><spring:message code="story.item1subtitle"
											text="default text" /></b>
								</h2>
							</div>
						</div>
					</article>

					<article class="timeline-entry left-aligned wow fadeIn animated"
						data-wow-duration="500ms" data-wow-delay="400ms">
						<div class="tldateright">
							<b><spring:message code="story.item2title" text="default text" /></b>
						</div>
						<div class="timeline-entry-inner">
							<div class="timeline-icon bg-success">
								<i class="entypo-feather"> </i>
							</div>
							<div class="timeline-label">
								<h2>
									<b><spring:message code="story.item2subtitle"
											text="default text" /></b>
								</h2>
							</div>
						</div>
					</article>

					<article class="timeline-entry wow fadeIn animated"
						data-wow-duration="500ms" data-wow-delay="600ms">
						<div class="tldateleft">
							<b><spring:message code="story.item3title" text="default text" /></b>
						</div>
						<div class="timeline-entry-inner">
							<div class="timeline-icon bg-success">
								<i class="entypo-feather"> </i>
							</div>
							<div class="timeline-label">
								<h2>
									<b><spring:message code="story.item3subtitle"
											text="default text" /></b>
								</h2>
							</div>
						</div>
					</article>

					<article class="timeline-entry wow fadeIn animated"
						data-wow-duration="500ms" data-wow-delay="800ms">
						<div class="timeline-entry-inner">
							<div class="timeline-icon bg-success">
								<i class="entypo-suitcase"> </i>
							</div>
							<div class="timeline-label">
								<h2>
									<b><spring:message code="story.item4subtitle"
											text="default text" /></b>
								</h2>
								<spring:message code="story.item4subsubtitle1"
									text="default text" />
								</br>
								<spring:message code="story.item4subsubtitle2"
									text="default text" />
							</div>
						</div>
					</article>

					<article class="timeline-entry left-aligned wow fadeIn animated"
						data-wow-duration="500ms" data-wow-delay="1000ms">
						<div class="tldateright">
							<b><spring:message code="story.item5title" text="default text" /></b>
						</div>
						<div class="timeline-entry-inner">
							<div class="timeline-icon bg-success">
								<i class="entypo-feather"> </i>
							</div>
							<div class="timeline-label">
								<h2>
									<b><spring:message code="story.item5subtitle"
											text="default text" /></b>
								</h2>
							</div>
						</div>
					</article>


					<article class="timeline-entry wow fadeIn animated"
						data-wow-duration="500ms" data-wow-delay="1200ms">
						<div class="tldateleft">
							<b><spring:message code="story.item6title" text="default text" /></b>
						</div>
						<div class="timeline-entry-inner">
							<div class="timeline-icon bg-secondary">
								<i class="entypo-feather"> </i>
							</div>
							<div class="timeline-label">
								<h2>
									<b><spring:message code="story.item6subtitle"
											text="default text" /></b>
								</h2>
							</div>
						</div>
					</article>

					<article class="timeline-entry wow fadeIn animated"
						data-wow-duration="500ms" data-wow-delay="1400ms">
						<div class="timeline-entry-inner">
							<div class="timeline-icon bg-secondary">
								<i class="entypo-feather"> </i>
							</div>
							<div class="timeline-label">
								<h2>
									<b><spring:message code="story.item7subtitle"
											text="default text" /></b>
								</h2>
							</div>
						</div>
					</article>


					<article class="timeline-entry wow fadeIn animated"
						data-wow-duration="500ms" data-wow-delay="1600ms">
						<div class="timeline-entry-inner">
							<div class="timeline-icon bg-secondary">
								<i class="entypo-feather"> </i>
							</div>
							<div class="timeline-label">
								<h2>
									<b><spring:message code="story.item8subtitle"
											text="default text" /></b>
								</h2>
							</div>
						</div>
					</article>

					<article class="timeline-entry begin">
						<div class="timeline-entry-inner">
							<div class="timeline-icon iconstyle">
								<i class="entypo-flight"> </i>
							</div>
						</div>
					</article>
				</div>
			</div>
		</div>
	</section>

	<!--Start of technical-->
	<section id="technical">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="wel_header upmargin">
						<h2 class="whiteWord">
							Technical skills <span class='logo'> MAPINUS </span>
						</h2>
						<p class="whiteWord">
							<b><spring:message code="technical.subtitle"
									text="default text" /></b>
						</p>
						</br> </br>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="market_area text-center downmargin">
						<div class="row">
							<ul id="flexiselDemo3">
								<li>
									<figure>
										<div class="img-wrapper downmargin">
											<img class='certificateimg img-responsive'
												src="${pageContext.request.contextPath}/img/certificate1.png">
											<br />
											<div class="overlay">
												<div class="buttons">
													<a rel="gallery" class="fancybox"
														href="${pageContext.request.contextPath}/img/certificate1.png"><spring:message
															code="technical.detail" text="default text" /></a>
												</div>
											</div>
										</div>
									</figure>
								</li>
								<li>
									<figure>
										<div class="img-wrapper downmargin">
											<img class='certificateimg img-responsive'
												src="${pageContext.request.contextPath}/img/certificate2.png">
											<br />
											<div class="overlay">
												<div class="buttons">
													<a rel="gallery" class="fancybox"
														href="${pageContext.request.contextPath}/img/certificate2.png"><spring:message
															code="technical.detail" text="default text" /></a>
												</div>
											</div>
										</div>
									</figure>
								</li>
								<li>
									<figure>
										<div class="img-wrapper downmargin">
											<img class='certificateimg img-responsive'
												src="${pageContext.request.contextPath}/img/certificate3.png">
											<br />
											<div class="overlay">
												<div class="buttons">
													<a rel="gallery" class="fancybox"
														href="${pageContext.request.contextPath}/img/certificate3.png"><spring:message
															code="technical.detail" text="default text" /></a>
												</div>
											</div>
										</div>
									</figure>
								</li>
								<li>
									<figure>
										<div class="img-wrapper downmargin">
											<img class='certificateimg img-responsive'
												src="${pageContext.request.contextPath}/img/certificate4.png">
											<br />
											<div class="overlay">
												<div class="buttons">
													<a rel="gallery" class="fancybox"
														href="${pageContext.request.contextPath}/img/certificate4.png"><spring:message
															code="technical.detail" text="default text" /></a>
												</div>
											</div>
										</div>
									</figure>
								</li>
							</ul>
						</div>
						<!--End of row-->
					</div>
					<!--End of market Area-->
				</div>
				<!--End of col-md-12-->
			</div>
			<!--End of row-->
		</div>
		<!--End of container-->
	</section>
	<!--End of technical-->

	<!--Start of friendly-->
	<section id="friendly">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="wel_header">
						<h2>
							Friendly <span class='logo'> MAPINUS </span>
						</h2>
						<p>
							<b><spring:message code="technical.subtitle"
									text="default text" /></b>
						</p>
					</div>
				</div>
			</div>
			<div class="row downmargin">
				<div class="col-md-12">
					<div class="market_area text-center">
						<div class="row">
							<div class="col-md-3 col-xs-6 wow fadeIn animated"
								data-wow-duration="500ms" data-wow-delay="300ms">
								<div class="market_logo">
									<img class="businessimg"
										src="${pageContext.request.contextPath}/img/business1.png">
								</div>
							</div>
							<div class="col-md-3 col-xs-6 wow fadeIn animated"
								data-wow-duration="500ms" data-wow-delay="300ms">
								<div class="market_logo">
									<img class="businessimg"
										src="${pageContext.request.contextPath}/img/business2.png">
								</div>
							</div>
							<div class="col-md-3 col-xs-6 wow fadeIn animated"
								data-wow-duration="500ms" data-wow-delay="300ms">
								<div class="market_logo">
									<img class="businessimg"
										src="${pageContext.request.contextPath}/img/business3.png">
								</div>
							</div>
							<div class="col-md-3 col-xs-6 wow fadeIn animated"
								data-wow-duration="500ms" data-wow-delay="300ms">
								<div class="market_logo">
									<img class="businessimg"
										src="${pageContext.request.contextPath}/img/business4.png">
								</div>
							</div>
							<div class="col-md-3 col-xs-6 wow fadeIn animated"
								data-wow-duration="500ms" data-wow-delay="600ms">
								<div class="market_logo">
									<img class="businessimg"
										src="${pageContext.request.contextPath}/img/business5.png">
								</div>
							</div>
							<div class="col-md-3 col-xs-6 wow fadeIn animated"
								data-wow-duration="500ms" data-wow-delay="600ms">
								<div class="market_logo">
									<img class="businessimg"
										src="${pageContext.request.contextPath}/img/business6.png">
								</div>
							</div>
							<div class="col-md-3 col-xs-6 wow fadeIn animated"
								data-wow-duration="500ms" data-wow-delay="600ms">
								<div class="market_logo">
									<img class="businessimg"
										src="${pageContext.request.contextPath}/img/business7.png">
								</div>
							</div>
						</div>
						<!--End of row-->
					</div>
					<!--End of market Area-->
				</div>
				<!--End of col-md-12-->
			</div>
			<!--End of row-->
		</div>
		<!--End of container-->
	</section>
	<!--End of friendly-->

	<!--Start of contact-->
	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="contact_area text-center">
						<h3 class="whiteWord">
							<span class='logo'> MAPINUS </span> Contact Us
						</h3>
					</div>
				</div>
			</div>
			<!--End of row-->
			<div class="row">
				<div class="col-md-6 wow slideInLeft"
					data-wow-offset="10" data-wow-delay="0.5s" data-wow-duration="1.5s">
					<div class="office">
						<div class="title">
							<h5 class="whiteWord"
								style="font-family: sans-serif; text-transform: none">
								<spring:message code="contact.officeinfo" text="default text" />
							</h5>
						</div>
						<div class="office_location">
							<div class="address whiteWord">
								<i class="fas fa-map-marker"> <span class="whiteWord">
										Address : 서울 금천구 가산디지털1로 30, 에이스하이엔드10차 511 </span>
								</i>
							</div>
							<div class="phone whiteWord">
								<i class="fas fa-phone"> <span class="whiteWord"> Tel
										: 02) 6929-3356 </span>
								</i>
							</div>
							<div class="fax whiteWord">
								<i class="fas fa-fax"> <span class="whiteWord"> Fax :
										02) 6929-3357 </span>
								</i>
							</div>
							<div class="car whiteWord">
								<i class="fas fa-car"> <span class="whiteWord"> Car :
										금천구 금천고가차도 진입 후 가산디지털단지역 방향 </span>
								</i>
							</div>
							<div class="subway whiteWord">
								<i class="fas fa-subway"> <span class="whiteWord">
										Subway : 독산역 2번출구에서 가산디지털단지역 방향 100M 전방 </span>
								</i>
							</div>
							<div id="map"></div>
						</div>
					</div>
				</div>
				<div class="col-md-6 wow slideInRight"
								data-wow-offset="10" data-wow-duration="1.5s" data-wow-delay="0.5s">
					<div class="msg">
						<div class="msg_title">
							<h5 class="whiteWord"
								style="font-family: sans-serif; text-transform: none">
								<spring:message code="contact.emailtitle" text="default text" />
							</h5>
						</div>
						<div class="form_area">
							<!-- CONTACT FORM -->
							<div class="contact-form">
								<div id="message"></div>
								<form id='frm' action="mail.mu" method="post">
									<input name="lang" type="hidden" value='${lang}' />
									<div class="form-group">
										<div class="col-sm-6">
											<input type="text" class="form-control" name="sendemail" id="sendemail"
												placeholder="<spring:message code="contact.sendemail" text="default text" />">
										</div>
										<div class="col-sm-6">
											<input type="text" class="form-control" name="receiveemail"
												id="receiveemail"
												placeholder="<spring:message code="contact.receiveemail" text="default text"/>" >
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-12">
											<input type="text" class="form-control" id="subject"
												name="subject"
												placeholder=<spring:message code="contact.subject" text="default text" />>
											<div class="text_area">
												<textarea id="msg" name="msg" class="form-control" cols="30"
													rows="8"
													placeholder=<spring:message code="contact.message" text="default text" />></textarea>
											</div>
											<button type='button' id='sendBtn' class="btn custom-btn"
												data-loading-text="Loading...">
												<spring:message code="contact.send" text="default text" />
											</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-6-->
			</div>
			<!--End of row-->
		</div>
		<!--End of container-->
	</section>
	<!--End of contact-->

	<jsp:include page="/include/footer.mu" flush="true" />

	<!--버튼을 통해 최상단으로 이동하기-->
	<a href="#" id="back-to-top" title="Back to top">&uarr;</a>
	<!--End of Scroll to top-->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
	<!--맵관련-->
	<script src="${pageContext.request.contextPath}/js/gmaps.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/initmap.js"></script>
	<!--지도 관련-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBo9Ro047DFTo4ua8PoU8e2A6VfydYPvhY"></script>
	<!--Back To Top-->
	<script src="${pageContext.request.contextPath}/js/backtotop.js"></script>
	<!--메뉴선택시 위치로 이동-->
	<script
		src="${pageContext.request.contextPath}/js/jquery.localScroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.scrollTo.min.js"></script>
	<!--이미지 차례대로 띄우기 관련-->
	<script src="${pageContext.request.contextPath}/js/wow.min.js"></script>
	<!--WOW Activated-->
	<script>
		new WOW().init();
	</script>
	<!-- 부트스트랩 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- 이미지 확대 관련 -->
	<script src="${pageContext.request.contextPath}/js/jquery.fancybox.js"></script>
	<!-- 메일 보내기 관련 -->
	<script src="${pageContext.request.contextPath}/js/mail.js"></script>
	<!-- 셀렉트박스 관련 -->
	<script src="${pageContext.request.contextPath}/js/wSelect.js"></script>
	<!-- Loader -->
	<script src="${pageContext.request.contextPath}/js/fakeLoader.js"></script>
	<!-- 메인의 자바 스크립트 -->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
	<!-- 슬라이더 관련 -->
	<script src="${pageContext.request.contextPath}/js/jquery.flexisel.js"></script>

</body>

</html>